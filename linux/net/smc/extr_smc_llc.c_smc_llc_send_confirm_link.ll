; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_send_confirm_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_send_confirm_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.smc_link_group = type { i32 }
%struct.smc_llc_msg_confirm_link = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.smc_wr_tx_pend_priv = type { i32 }
%struct.smc_wr_buf = type { i32 }

@SMC_LLC_CONFIRM_LINK = common dso_local global i32 0, align 4
@SMC_LLC_FLAG_NO_RMBE_EYEC = common dso_local global i32 0, align 4
@SMC_LLC_RESP = common dso_local global i32 0, align 4
@SMC_LLC_FLAG_RESP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SMC_GID_SIZE = common dso_local global i32 0, align 4
@SMC_LGR_ID_SIZE = common dso_local global i32 0, align 4
@SMC_LLC_ADD_LNK_MAX_LINKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_llc_send_confirm_link(%struct.smc_link* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smc_link_group*, align 8
  %7 = alloca %struct.smc_llc_msg_confirm_link*, align 8
  %8 = alloca %struct.smc_wr_tx_pend_priv*, align 8
  %9 = alloca %struct.smc_wr_buf*, align 8
  %10 = alloca i32, align 4
  store %struct.smc_link* %0, %struct.smc_link** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %12 = call %struct.smc_link_group* @smc_get_lgr(%struct.smc_link* %11)
  store %struct.smc_link_group* %12, %struct.smc_link_group** %6, align 8
  %13 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %14 = call i32 @smc_llc_add_pending_send(%struct.smc_link* %13, %struct.smc_wr_buf** %9, %struct.smc_wr_tx_pend_priv** %8)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %3, align 4
  br label %103

19:                                               ; preds = %2
  %20 = load %struct.smc_wr_buf*, %struct.smc_wr_buf** %9, align 8
  %21 = bitcast %struct.smc_wr_buf* %20 to %struct.smc_llc_msg_confirm_link*
  store %struct.smc_llc_msg_confirm_link* %21, %struct.smc_llc_msg_confirm_link** %7, align 8
  %22 = load %struct.smc_llc_msg_confirm_link*, %struct.smc_llc_msg_confirm_link** %7, align 8
  %23 = call i32 @memset(%struct.smc_llc_msg_confirm_link* %22, i32 0, i32 36)
  %24 = load i32, i32* @SMC_LLC_CONFIRM_LINK, align 4
  %25 = load %struct.smc_llc_msg_confirm_link*, %struct.smc_llc_msg_confirm_link** %7, align 8
  %26 = getelementptr inbounds %struct.smc_llc_msg_confirm_link, %struct.smc_llc_msg_confirm_link* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.smc_llc_msg_confirm_link*, %struct.smc_llc_msg_confirm_link** %7, align 8
  %30 = getelementptr inbounds %struct.smc_llc_msg_confirm_link, %struct.smc_llc_msg_confirm_link* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 36, i32* %31, align 4
  %32 = load i32, i32* @SMC_LLC_FLAG_NO_RMBE_EYEC, align 4
  %33 = load %struct.smc_llc_msg_confirm_link*, %struct.smc_llc_msg_confirm_link** %7, align 8
  %34 = getelementptr inbounds %struct.smc_llc_msg_confirm_link, %struct.smc_llc_msg_confirm_link* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %32
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SMC_LLC_RESP, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %19
  %42 = load i32, i32* @SMC_LLC_FLAG_RESP, align 4
  %43 = load %struct.smc_llc_msg_confirm_link*, %struct.smc_llc_msg_confirm_link** %7, align 8
  %44 = getelementptr inbounds %struct.smc_llc_msg_confirm_link, %struct.smc_llc_msg_confirm_link* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %41, %19
  %49 = load %struct.smc_llc_msg_confirm_link*, %struct.smc_llc_msg_confirm_link** %7, align 8
  %50 = getelementptr inbounds %struct.smc_llc_msg_confirm_link, %struct.smc_llc_msg_confirm_link* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %53 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %52, i32 0, i32 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %58 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i32 @memcpy(i32 %51, i32 %63, i32 %64)
  %66 = load %struct.smc_llc_msg_confirm_link*, %struct.smc_llc_msg_confirm_link** %7, align 8
  %67 = getelementptr inbounds %struct.smc_llc_msg_confirm_link, %struct.smc_llc_msg_confirm_link* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %70 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SMC_GID_SIZE, align 4
  %73 = call i32 @memcpy(i32 %68, i32 %71, i32 %72)
  %74 = load %struct.smc_llc_msg_confirm_link*, %struct.smc_llc_msg_confirm_link** %7, align 8
  %75 = getelementptr inbounds %struct.smc_llc_msg_confirm_link, %struct.smc_llc_msg_confirm_link* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %78 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %77, i32 0, i32 2
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @hton24(i32 %76, i32 %81)
  %83 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %84 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.smc_llc_msg_confirm_link*, %struct.smc_llc_msg_confirm_link** %7, align 8
  %87 = getelementptr inbounds %struct.smc_llc_msg_confirm_link, %struct.smc_llc_msg_confirm_link* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.smc_llc_msg_confirm_link*, %struct.smc_llc_msg_confirm_link** %7, align 8
  %89 = getelementptr inbounds %struct.smc_llc_msg_confirm_link, %struct.smc_llc_msg_confirm_link* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %92 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SMC_LGR_ID_SIZE, align 4
  %95 = call i32 @memcpy(i32 %90, i32 %93, i32 %94)
  %96 = load i32, i32* @SMC_LLC_ADD_LNK_MAX_LINKS, align 4
  %97 = load %struct.smc_llc_msg_confirm_link*, %struct.smc_llc_msg_confirm_link** %7, align 8
  %98 = getelementptr inbounds %struct.smc_llc_msg_confirm_link, %struct.smc_llc_msg_confirm_link* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %100 = load %struct.smc_wr_tx_pend_priv*, %struct.smc_wr_tx_pend_priv** %8, align 8
  %101 = call i32 @smc_wr_tx_send(%struct.smc_link* %99, %struct.smc_wr_tx_pend_priv* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %48, %17
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.smc_link_group* @smc_get_lgr(%struct.smc_link*) #1

declare dso_local i32 @smc_llc_add_pending_send(%struct.smc_link*, %struct.smc_wr_buf**, %struct.smc_wr_tx_pend_priv**) #1

declare dso_local i32 @memset(%struct.smc_llc_msg_confirm_link*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i32 @smc_wr_tx_send(%struct.smc_link*, %struct.smc_wr_tx_pend_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
