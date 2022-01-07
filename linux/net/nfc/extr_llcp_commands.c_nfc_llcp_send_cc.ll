; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_send_cc.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_send_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_sock = type { i64, i32, %struct.nfc_llcp_local* }
%struct.nfc_llcp_local = type { i32, i64, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Sending CC\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LLCP_MAX_MIUX = common dso_local global i64 0, align 8
@LLCP_MAX_RW = common dso_local global i64 0, align 8
@LLCP_TLV_MIUX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LLCP_TLV_RW = common dso_local global i32 0, align 4
@LLCP_PDU_CC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_llcp_send_cc(%struct.nfc_llcp_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_llcp_sock*, align 8
  %4 = alloca %struct.nfc_llcp_local*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nfc_llcp_sock* %0, %struct.nfc_llcp_sock** %3, align 8
  store i64* null, i64** %6, align 8
  store i64* null, i64** %8, align 8
  store i32 0, i32* %12, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %16 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %15, i32 0, i32 2
  %17 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %16, align 8
  store %struct.nfc_llcp_local* %17, %struct.nfc_llcp_local** %4, align 8
  %18 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %19 = icmp eq %struct.nfc_llcp_local* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %116

23:                                               ; preds = %1
  %24 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %25 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @be16_to_cpu(i32 %26)
  %28 = load i64, i64* @LLCP_MAX_MIUX, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %32 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  br label %38

34:                                               ; preds = %23
  %35 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %36 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %33, %30 ], [ %37, %34 ]
  store i32 %39, i32* %13, align 4
  %40 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %41 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LLCP_MAX_RW, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %47 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  br label %53

49:                                               ; preds = %38
  %50 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %51 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i64 [ %48, %45 ], [ %52, %49 ]
  store i64 %54, i64* %10, align 8
  %55 = load i32, i32* @LLCP_TLV_MIUX, align 4
  %56 = bitcast i32* %13 to i64*
  %57 = call i64* @nfc_llcp_build_tlv(i32 %55, i64* %56, i32 0, i64* %7)
  store i64* %57, i64** %6, align 8
  %58 = load i64*, i64** %6, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  br label %104

63:                                               ; preds = %53
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* @LLCP_TLV_RW, align 4
  %70 = call i64* @nfc_llcp_build_tlv(i32 %69, i64* %10, i32 0, i64* %9)
  store i64* %70, i64** %8, align 8
  %71 = load i64*, i64** %8, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %63
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %11, align 4
  br label %104

76:                                               ; preds = %63
  %77 = load i64, i64* %9, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %12, align 4
  %82 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %83 = load i32, i32* @LLCP_PDU_CC, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call %struct.sk_buff* @llcp_allocate_pdu(%struct.nfc_llcp_sock* %82, i32 %83, i32 %84)
  store %struct.sk_buff* %85, %struct.sk_buff** %5, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = icmp eq %struct.sk_buff* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %11, align 4
  br label %104

91:                                               ; preds = %76
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = load i64*, i64** %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @llcp_add_tlv(%struct.sk_buff* %92, i64* %93, i64 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @llcp_add_tlv(%struct.sk_buff* %96, i64* %97, i64 %98)
  %100 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %101 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %100, i32 0, i32 0
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = call i32 @skb_queue_tail(i32* %101, %struct.sk_buff* %102)
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %91, %88, %73, %60
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i64*, i64** %6, align 8
  %112 = call i32 @kfree(i64* %111)
  %113 = load i64*, i64** %8, align 8
  %114 = call i32 @kfree(i64* %113)
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %20
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64* @nfc_llcp_build_tlv(i32, i64*, i32, i64*) #1

declare dso_local %struct.sk_buff* @llcp_allocate_pdu(%struct.nfc_llcp_sock*, i32, i32) #1

declare dso_local i32 @llcp_add_tlv(%struct.sk_buff*, i64*, i64) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
