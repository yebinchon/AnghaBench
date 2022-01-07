; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_send_slot_map.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_send_slot_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_data = type { i32 }
%struct.sst_param_sba_ssp_slot_map = type { i32, %struct.TYPE_2__, i32, i32, i32, i8* }
%struct.TYPE_2__ = type { i32, i8*, i32 }

@SBA_SET_SSP_SLOT_MAP = common dso_local global i8* null, align 8
@SSP_CODEC = common dso_local global i32 0, align 4
@sst_ssp_tx_map = common dso_local global i32* null, align 8
@sst_ssp_rx_map = common dso_local global i32* null, align 8
@SST_IPC_IA_SET_PARAMS = common dso_local global i32 0, align 4
@SST_FLAG_BLOCKED = common dso_local global i32 0, align 4
@SST_TASK_SBA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_data*)* @sst_send_slot_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_send_slot_map(%struct.sst_data* %0) #0 {
  %2 = alloca %struct.sst_data*, align 8
  %3 = alloca %struct.sst_param_sba_ssp_slot_map, align 8
  store %struct.sst_data* %0, %struct.sst_data** %2, align 8
  %4 = getelementptr inbounds %struct.sst_param_sba_ssp_slot_map, %struct.sst_param_sba_ssp_slot_map* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @SST_FILL_DEFAULT_DESTINATION(i32 %6)
  %8 = load i8*, i8** @SBA_SET_SSP_SLOT_MAP, align 8
  %9 = getelementptr inbounds %struct.sst_param_sba_ssp_slot_map, %struct.sst_param_sba_ssp_slot_map* %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds %struct.sst_param_sba_ssp_slot_map, %struct.sst_param_sba_ssp_slot_map* %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 52, i32* %12, align 8
  %13 = load i8*, i8** @SBA_SET_SSP_SLOT_MAP, align 8
  %14 = getelementptr inbounds %struct.sst_param_sba_ssp_slot_map, %struct.sst_param_sba_ssp_slot_map* %3, i32 0, i32 5
  store i8* %13, i8** %14, align 8
  %15 = getelementptr inbounds %struct.sst_param_sba_ssp_slot_map, %struct.sst_param_sba_ssp_slot_map* %3, i32 0, i32 0
  store i32 12, i32* %15, align 8
  %16 = load i32, i32* @SSP_CODEC, align 4
  %17 = getelementptr inbounds %struct.sst_param_sba_ssp_slot_map, %struct.sst_param_sba_ssp_slot_map* %3, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.sst_param_sba_ssp_slot_map, %struct.sst_param_sba_ssp_slot_map* %3, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @sst_ssp_tx_map, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @memcpy(i32 %19, i32* %21, i32 4)
  %23 = getelementptr inbounds %struct.sst_param_sba_ssp_slot_map, %struct.sst_param_sba_ssp_slot_map* %3, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** @sst_ssp_rx_map, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = call i32 @memcpy(i32 %24, i32* %26, i32 4)
  %28 = load %struct.sst_data*, %struct.sst_data** %2, align 8
  %29 = load i32, i32* @SST_IPC_IA_SET_PARAMS, align 4
  %30 = load i32, i32* @SST_FLAG_BLOCKED, align 4
  %31 = load i32, i32* @SST_TASK_SBA, align 4
  %32 = getelementptr inbounds %struct.sst_param_sba_ssp_slot_map, %struct.sst_param_sba_ssp_slot_map* %3, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add i64 24, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @sst_fill_and_send_cmd_unlocked(%struct.sst_data* %28, i32 %29, i32 %30, i32 %31, i32 0, %struct.sst_param_sba_ssp_slot_map* %3, i32 %37)
  ret i32 %38
}

declare dso_local i32 @SST_FILL_DEFAULT_DESTINATION(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @sst_fill_and_send_cmd_unlocked(%struct.sst_data*, i32, i32, i32, i32, %struct.sst_param_sba_ssp_slot_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
