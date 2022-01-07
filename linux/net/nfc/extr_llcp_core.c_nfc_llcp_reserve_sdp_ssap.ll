; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_reserve_sdp_ssap.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_reserve_sdp_ssap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_local = type { i32, i32 }

@LLCP_SDP_NUM_SAP = common dso_local global i64 0, align 8
@LLCP_SAP_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"SDP ssap %d\0A\00", align 1
@LLCP_WKS_NUM_SAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfc_llcp_local*)* @nfc_llcp_reserve_sdp_ssap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfc_llcp_reserve_sdp_ssap(%struct.nfc_llcp_local* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nfc_llcp_local*, align 8
  %4 = alloca i64, align 8
  store %struct.nfc_llcp_local* %0, %struct.nfc_llcp_local** %3, align 8
  %5 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %6 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %9 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %8, i32 0, i32 1
  %10 = load i64, i64* @LLCP_SDP_NUM_SAP, align 8
  %11 = call i64 @find_first_zero_bit(i32* %9, i64 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @LLCP_SDP_NUM_SAP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %17 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load i64, i64* @LLCP_SAP_MAX, align 8
  store i64 %19, i64* %2, align 8
  br label %35

20:                                               ; preds = %1
  %21 = load i64, i64* @LLCP_WKS_NUM_SAP, align 8
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %27 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %26, i32 0, i32 1
  %28 = call i32 @set_bit(i64 %25, i32* %27)
  %29 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %30 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i64, i64* @LLCP_WKS_NUM_SAP, align 8
  %33 = load i64, i64* %4, align 8
  %34 = add nsw i64 %32, %33
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %20, %15
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @set_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
