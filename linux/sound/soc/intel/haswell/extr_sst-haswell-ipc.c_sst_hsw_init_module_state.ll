; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_init_module_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_init_module_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32 }
%struct.sst_module = type { i32 }

@SST_HSW_MODULE_BASE_FW = common dso_local global i32 0, align 4
@SST_HSW_MAX_MODULE_ID = common dso_local global i32 0, align 4
@SST_HSW_MODULE_WAVES = common dso_local global i32 0, align 4
@SST_MODULE_STATE_INITIALIZED = common dso_local global i32 0, align 4
@SST_MODULE_STATE_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sst_hsw_init_module_state(%struct.sst_hsw* %0) #0 {
  %2 = alloca %struct.sst_hsw*, align 8
  %3 = alloca %struct.sst_module*, align 8
  %4 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %2, align 8
  %5 = load i32, i32* @SST_HSW_MODULE_BASE_FW, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SST_HSW_MAX_MODULE_ID, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.sst_hsw*, %struct.sst_hsw** %2, align 8
  %12 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.sst_module* @sst_module_get_from_id(i32 %13, i32 %14)
  store %struct.sst_module* %15, %struct.sst_module** %3, align 8
  %16 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %17 = icmp ne %struct.sst_module* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SST_HSW_MODULE_WAVES, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @SST_MODULE_STATE_INITIALIZED, align 4
  %24 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %25 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @SST_MODULE_STATE_ACTIVE, align 4
  %28 = load %struct.sst_module*, %struct.sst_module** %3, align 8
  %29 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %10
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %6

35:                                               ; preds = %6
  ret void
}

declare dso_local %struct.sst_module* @sst_module_get_from_id(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
