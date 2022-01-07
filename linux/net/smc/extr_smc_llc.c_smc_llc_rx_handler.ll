; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_rx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wc = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.smc_link = type { i64 }
%union.smc_llc_msg = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SMC_LNK_INACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_wc*, i8*)* @smc_llc_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_llc_rx_handler(%struct.ib_wc* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_wc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.smc_link*, align 8
  %6 = alloca %union.smc_llc_msg*, align 8
  store %struct.ib_wc* %0, %struct.ib_wc** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.ib_wc*, %struct.ib_wc** %3, align 8
  %8 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smc_link*
  store %struct.smc_link* %12, %struct.smc_link** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %union.smc_llc_msg*
  store %union.smc_llc_msg* %14, %union.smc_llc_msg** %6, align 8
  %15 = load %struct.ib_wc*, %struct.ib_wc** %3, align 8
  %16 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 8
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %79

21:                                               ; preds = %2
  %22 = load %union.smc_llc_msg*, %union.smc_llc_msg** %6, align 8
  %23 = bitcast %union.smc_llc_msg* %22 to %struct.TYPE_8__*
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 8
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %79

30:                                               ; preds = %21
  %31 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %32 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SMC_LNK_INACTIVE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %79

37:                                               ; preds = %30
  %38 = load %union.smc_llc_msg*, %union.smc_llc_msg** %6, align 8
  %39 = bitcast %union.smc_llc_msg* %38 to %struct.TYPE_8__*
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %79 [
    i32 128, label %44
    i32 133, label %49
    i32 134, label %54
    i32 130, label %59
    i32 132, label %64
    i32 131, label %69
    i32 129, label %74
  ]

44:                                               ; preds = %37
  %45 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %46 = load %union.smc_llc_msg*, %union.smc_llc_msg** %6, align 8
  %47 = bitcast %union.smc_llc_msg* %46 to i32*
  %48 = call i32 @smc_llc_rx_test_link(%struct.smc_link* %45, i32* %47)
  br label %79

49:                                               ; preds = %37
  %50 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %51 = load %union.smc_llc_msg*, %union.smc_llc_msg** %6, align 8
  %52 = bitcast %union.smc_llc_msg* %51 to i32*
  %53 = call i32 @smc_llc_rx_confirm_link(%struct.smc_link* %50, i32* %52)
  br label %79

54:                                               ; preds = %37
  %55 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %56 = load %union.smc_llc_msg*, %union.smc_llc_msg** %6, align 8
  %57 = bitcast %union.smc_llc_msg* %56 to i32*
  %58 = call i32 @smc_llc_rx_add_link(%struct.smc_link* %55, i32* %57)
  br label %79

59:                                               ; preds = %37
  %60 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %61 = load %union.smc_llc_msg*, %union.smc_llc_msg** %6, align 8
  %62 = bitcast %union.smc_llc_msg* %61 to i32*
  %63 = call i32 @smc_llc_rx_delete_link(%struct.smc_link* %60, i32* %62)
  br label %79

64:                                               ; preds = %37
  %65 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %66 = load %union.smc_llc_msg*, %union.smc_llc_msg** %6, align 8
  %67 = bitcast %union.smc_llc_msg* %66 to i32*
  %68 = call i32 @smc_llc_rx_confirm_rkey(%struct.smc_link* %65, i32* %67)
  br label %79

69:                                               ; preds = %37
  %70 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %71 = load %union.smc_llc_msg*, %union.smc_llc_msg** %6, align 8
  %72 = bitcast %union.smc_llc_msg* %71 to i32*
  %73 = call i32 @smc_llc_rx_confirm_rkey_cont(%struct.smc_link* %70, i32* %72)
  br label %79

74:                                               ; preds = %37
  %75 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %76 = load %union.smc_llc_msg*, %union.smc_llc_msg** %6, align 8
  %77 = bitcast %union.smc_llc_msg* %76 to i32*
  %78 = call i32 @smc_llc_rx_delete_rkey(%struct.smc_link* %75, i32* %77)
  br label %79

79:                                               ; preds = %20, %29, %36, %37, %74, %69, %64, %59, %54, %49, %44
  ret void
}

declare dso_local i32 @smc_llc_rx_test_link(%struct.smc_link*, i32*) #1

declare dso_local i32 @smc_llc_rx_confirm_link(%struct.smc_link*, i32*) #1

declare dso_local i32 @smc_llc_rx_add_link(%struct.smc_link*, i32*) #1

declare dso_local i32 @smc_llc_rx_delete_link(%struct.smc_link*, i32*) #1

declare dso_local i32 @smc_llc_rx_confirm_rkey(%struct.smc_link*, i32*) #1

declare dso_local i32 @smc_llc_rx_confirm_rkey_cont(%struct.smc_link*, i32*) #1

declare dso_local i32 @smc_llc_rx_delete_rkey(%struct.smc_link*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
