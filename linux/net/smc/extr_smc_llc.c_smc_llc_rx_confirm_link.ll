; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_rx_confirm_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_rx_confirm_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i64, i32, i32, i32, i32, i32 }
%struct.smc_llc_msg_confirm_link = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.smc_link_group = type { i64 }

@SMC_LLC_FLAG_NO_RMBE_EYEC = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@SMC_LLC_FLAG_RESP = common dso_local global i32 0, align 4
@SMC_SERV = common dso_local global i64 0, align 8
@SMC_LNK_ACTIVATING = common dso_local global i64 0, align 8
@SMC_CLNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_link*, %struct.smc_llc_msg_confirm_link*)* @smc_llc_rx_confirm_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_llc_rx_confirm_link(%struct.smc_link* %0, %struct.smc_llc_msg_confirm_link* %1) #0 {
  %3 = alloca %struct.smc_link*, align 8
  %4 = alloca %struct.smc_llc_msg_confirm_link*, align 8
  %5 = alloca %struct.smc_link_group*, align 8
  %6 = alloca i32, align 4
  store %struct.smc_link* %0, %struct.smc_link** %3, align 8
  store %struct.smc_llc_msg_confirm_link* %1, %struct.smc_llc_msg_confirm_link** %4, align 8
  %7 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %8 = call %struct.smc_link_group* @smc_get_lgr(%struct.smc_link* %7)
  store %struct.smc_link_group* %8, %struct.smc_link_group** %5, align 8
  %9 = load %struct.smc_llc_msg_confirm_link*, %struct.smc_llc_msg_confirm_link** %4, align 8
  %10 = getelementptr inbounds %struct.smc_llc_msg_confirm_link, %struct.smc_llc_msg_confirm_link* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SMC_LLC_FLAG_NO_RMBE_EYEC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOTSUPP, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = load %struct.smc_llc_msg_confirm_link*, %struct.smc_llc_msg_confirm_link** %4, align 8
  %21 = getelementptr inbounds %struct.smc_llc_msg_confirm_link, %struct.smc_llc_msg_confirm_link* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SMC_LLC_FLAG_RESP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %19
  %28 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %29 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SMC_SERV, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %35 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SMC_LNK_ACTIVATING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %42 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %44 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %43, i32 0, i32 5
  %45 = call i32 @complete(i32* %44)
  br label %46

46:                                               ; preds = %39, %33, %27
  br label %72

47:                                               ; preds = %19
  %48 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %49 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SMC_CLNT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %47
  %54 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %55 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SMC_LNK_ACTIVATING, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %62 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.smc_llc_msg_confirm_link*, %struct.smc_llc_msg_confirm_link** %4, align 8
  %64 = getelementptr inbounds %struct.smc_llc_msg_confirm_link, %struct.smc_llc_msg_confirm_link* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %67 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.smc_link*, %struct.smc_link** %3, align 8
  %69 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %68, i32 0, i32 3
  %70 = call i32 @complete(i32* %69)
  br label %71

71:                                               ; preds = %59, %53, %47
  br label %72

72:                                               ; preds = %71, %46
  ret void
}

declare dso_local %struct.smc_link_group* @smc_get_lgr(%struct.smc_link*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
