; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.sk_buff = type { i64, i32, i32 }
%struct.rfcomm_hdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"bad checksum in packet\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unknown packet type 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rfcomm_session* (%struct.rfcomm_session*, %struct.sk_buff*)* @rfcomm_recv_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rfcomm_session* @rfcomm_recv_frame(%struct.rfcomm_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rfcomm_session*, align 8
  %4 = alloca %struct.rfcomm_session*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rfcomm_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.rfcomm_hdr*
  store %struct.rfcomm_hdr* %14, %struct.rfcomm_hdr** %6, align 8
  %15 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %16 = icmp ne %struct.rfcomm_session* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i32 @kfree_skb(%struct.sk_buff* %18)
  %20 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  store %struct.rfcomm_session* %20, %struct.rfcomm_session** %3, align 8
  br label %129

21:                                               ; preds = %2
  %22 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %6, align 8
  %23 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__get_dlci(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__get_type(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i64 @skb_tail_pointer(%struct.sk_buff* %38)
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @__check_fcs(i64 %44, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %21
  %50 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  %53 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  store %struct.rfcomm_session* %53, %struct.rfcomm_session** %3, align 8
  br label %129

54:                                               ; preds = %21
  %55 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %6, align 8
  %56 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @__test_ea(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i32 @skb_pull(%struct.sk_buff* %61, i32 3)
  br label %66

63:                                               ; preds = %54
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @skb_pull(%struct.sk_buff* %64, i32 4)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %7, align 4
  switch i32 %67, label %122 [
    i32 130, label %68
    i32 132, label %79
    i32 129, label %90
    i32 131, label %101
    i32 128, label %105
  ]

68:                                               ; preds = %66
  %69 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %6, align 8
  %70 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__test_pf(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @rfcomm_recv_sabm(%struct.rfcomm_session* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %68
  br label %125

79:                                               ; preds = %66
  %80 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %6, align 8
  %81 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @__test_pf(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call %struct.rfcomm_session* @rfcomm_recv_disc(%struct.rfcomm_session* %86, i32 %87)
  store %struct.rfcomm_session* %88, %struct.rfcomm_session** %4, align 8
  br label %89

89:                                               ; preds = %85, %79
  br label %125

90:                                               ; preds = %66
  %91 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %6, align 8
  %92 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @__test_pf(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call %struct.rfcomm_session* @rfcomm_recv_ua(%struct.rfcomm_session* %97, i32 %98)
  store %struct.rfcomm_session* %99, %struct.rfcomm_session** %4, align 8
  br label %100

100:                                              ; preds = %96, %90
  br label %125

101:                                              ; preds = %66
  %102 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call %struct.rfcomm_session* @rfcomm_recv_dm(%struct.rfcomm_session* %102, i32 %103)
  store %struct.rfcomm_session* %104, %struct.rfcomm_session** %4, align 8
  br label %125

105:                                              ; preds = %66
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %6, align 8
  %112 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @__test_pf(i32 %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = call i32 @rfcomm_recv_data(%struct.rfcomm_session* %109, i32 %110, i32 %114, %struct.sk_buff* %115)
  %117 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  store %struct.rfcomm_session* %117, %struct.rfcomm_session** %3, align 8
  br label %129

118:                                              ; preds = %105
  %119 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = call i32 @rfcomm_recv_mcc(%struct.rfcomm_session* %119, %struct.sk_buff* %120)
  br label %125

122:                                              ; preds = %66
  %123 = load i32, i32* %7, align 4
  %124 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %122, %118, %101, %100, %89, %78
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = call i32 @kfree_skb(%struct.sk_buff* %126)
  %128 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  store %struct.rfcomm_session* %128, %struct.rfcomm_session** %3, align 8
  br label %129

129:                                              ; preds = %125, %108, %49, %17
  %130 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  ret %struct.rfcomm_session* %130
}

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__get_dlci(i32) #1

declare dso_local i32 @__get_type(i32) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @__check_fcs(i64, i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i64 @__test_ea(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__test_pf(i32) #1

declare dso_local i32 @rfcomm_recv_sabm(%struct.rfcomm_session*, i32) #1

declare dso_local %struct.rfcomm_session* @rfcomm_recv_disc(%struct.rfcomm_session*, i32) #1

declare dso_local %struct.rfcomm_session* @rfcomm_recv_ua(%struct.rfcomm_session*, i32) #1

declare dso_local %struct.rfcomm_session* @rfcomm_recv_dm(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_recv_data(%struct.rfcomm_session*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @rfcomm_recv_mcc(%struct.rfcomm_session*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
