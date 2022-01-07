; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_in.c_dn_nsp_disc_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_in.c_dn_nsp_disc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32, i32* }
%struct.dn_scp = type { i32, i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8* }
%struct.dn_skb_cb = type { i64 }

@TCP_CLOSE = common dso_local global i32 0, align 4
@DN_RJ = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@DN_DN = common dso_local global i32 0, align 4
@DN_DIC = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@SS_DISCONNECTING = common dso_local global i64 0, align 8
@NSP_DISCCONF = common dso_local global i32 0, align 4
@NSP_REASON_DC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@dn_destroy_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @dn_nsp_disc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_nsp_disc_init(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.dn_scp*, align 8
  %6 = alloca %struct.dn_skb_cb*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.dn_scp* @DN_SK(%struct.sock* %9)
  store %struct.dn_scp* %10, %struct.dn_scp** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %11)
  store %struct.dn_skb_cb* %12, %struct.dn_skb_cb** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %147

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call zeroext i16 @le16_to_cpu(i32 %22)
  store i16 %23, i16* %7, align 2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @skb_pull(%struct.sk_buff* %24, i32 2)
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %30 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i8* %28, i8** %31, align 8
  %32 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %33 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i8* null, i8** %34, align 8
  %35 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %36 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memset(i32 %38, i32 0, i32 16)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %18
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sle i32 %49, 16
  br i1 %50, label %51, label %70

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sle i32 %52, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  %59 = call i8* @cpu_to_le16(i32 %58)
  %60 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %61 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %65 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %63, i32 1, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %57, %51, %44
  br label %71

71:                                               ; preds = %70, %18
  %72 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %6, align 8
  %73 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %76 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @TCP_CLOSE, align 4
  %78 = load %struct.sock*, %struct.sock** %3, align 8
  %79 = getelementptr inbounds %struct.sock, %struct.sock* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %81 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %103 [
    i32 130, label %83
    i32 131, label %83
    i32 128, label %90
    i32 129, label %99
  ]

83:                                               ; preds = %71, %71
  %84 = load i32, i32* @DN_RJ, align 4
  %85 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %86 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @ECONNREFUSED, align 4
  %88 = load %struct.sock*, %struct.sock** %3, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  br label %103

90:                                               ; preds = %71
  %91 = load i32, i32* @SHUTDOWN_MASK, align 4
  %92 = load %struct.sock*, %struct.sock** %3, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @DN_DN, align 4
  %97 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %98 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %103

99:                                               ; preds = %71
  %100 = load i32, i32* @DN_DIC, align 4
  %101 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %102 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %71, %99, %90, %83
  %104 = load %struct.sock*, %struct.sock** %3, align 8
  %105 = load i32, i32* @SOCK_DEAD, align 4
  %106 = call i32 @sock_flag(%struct.sock* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %128, label %108

108:                                              ; preds = %103
  %109 = load %struct.sock*, %struct.sock** %3, align 8
  %110 = getelementptr inbounds %struct.sock, %struct.sock* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SS_UNCONNECTED, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load i64, i64* @SS_DISCONNECTING, align 8
  %118 = load %struct.sock*, %struct.sock** %3, align 8
  %119 = getelementptr inbounds %struct.sock, %struct.sock* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i64 %117, i64* %121, align 8
  br label %122

122:                                              ; preds = %116, %108
  %123 = load %struct.sock*, %struct.sock** %3, align 8
  %124 = getelementptr inbounds %struct.sock, %struct.sock* %123, i32 0, i32 0
  %125 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %124, align 8
  %126 = load %struct.sock*, %struct.sock** %3, align 8
  %127 = call i32 %125(%struct.sock* %126)
  br label %128

128:                                              ; preds = %122, %103
  %129 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %130 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load %struct.sock*, %struct.sock** %3, align 8
  %135 = load i32, i32* @NSP_DISCCONF, align 4
  %136 = load i32, i32* @NSP_REASON_DC, align 4
  %137 = load i32, i32* @GFP_ATOMIC, align 4
  %138 = call i32 @dn_nsp_send_disc(%struct.sock* %134, i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %133, %128
  %140 = load i32, i32* @dn_destroy_timer, align 4
  %141 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %142 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.sock*, %struct.sock** %3, align 8
  %144 = call i32 @dn_nsp_persist(%struct.sock* %143)
  %145 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %146 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %139, %17
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = call i32 @kfree_skb(%struct.sk_buff* %148)
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local zeroext i16 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @dn_nsp_send_disc(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @dn_nsp_persist(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
