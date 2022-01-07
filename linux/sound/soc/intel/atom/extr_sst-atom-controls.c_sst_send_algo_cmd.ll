; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_send_algo_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_send_algo_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_data = type { i32 }
%struct.sst_algo_control = type { i32, i32, i32, i32, i32, i32 }
%struct.sst_cmd_set_params = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SST_IPC_IA_SET_PARAMS = common dso_local global i32 0, align 4
@SST_FLAG_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_data*, %struct.sst_algo_control*)* @sst_send_algo_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_send_algo_cmd(%struct.sst_data* %0, %struct.sst_algo_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_data*, align 8
  %5 = alloca %struct.sst_algo_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sst_cmd_set_params*, align 8
  store %struct.sst_data* %0, %struct.sst_data** %4, align 8
  store %struct.sst_algo_control* %1, %struct.sst_algo_control** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.sst_algo_control*, %struct.sst_algo_control** %5, align 8
  %10 = getelementptr inbounds %struct.sst_algo_control, %struct.sst_algo_control* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 8, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sst_cmd_set_params* @kzalloc(i32 %15, i32 %16)
  store %struct.sst_cmd_set_params* %17, %struct.sst_cmd_set_params** %8, align 8
  %18 = load %struct.sst_cmd_set_params*, %struct.sst_cmd_set_params** %8, align 8
  %19 = icmp eq %struct.sst_cmd_set_params* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %61

23:                                               ; preds = %2
  %24 = load %struct.sst_cmd_set_params*, %struct.sst_cmd_set_params** %8, align 8
  %25 = getelementptr inbounds %struct.sst_cmd_set_params, %struct.sst_cmd_set_params* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sst_algo_control*, %struct.sst_algo_control** %5, align 8
  %28 = getelementptr inbounds %struct.sst_algo_control, %struct.sst_algo_control* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sst_algo_control*, %struct.sst_algo_control** %5, align 8
  %31 = getelementptr inbounds %struct.sst_algo_control, %struct.sst_algo_control* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SST_FILL_DESTINATION(i32 2, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.sst_algo_control*, %struct.sst_algo_control** %5, align 8
  %35 = getelementptr inbounds %struct.sst_algo_control, %struct.sst_algo_control* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sst_cmd_set_params*, %struct.sst_cmd_set_params** %8, align 8
  %38 = getelementptr inbounds %struct.sst_cmd_set_params, %struct.sst_cmd_set_params* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sst_cmd_set_params*, %struct.sst_cmd_set_params** %8, align 8
  %40 = getelementptr inbounds %struct.sst_cmd_set_params, %struct.sst_cmd_set_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sst_algo_control*, %struct.sst_algo_control** %5, align 8
  %43 = getelementptr inbounds %struct.sst_algo_control, %struct.sst_algo_control* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sst_algo_control*, %struct.sst_algo_control** %5, align 8
  %46 = getelementptr inbounds %struct.sst_algo_control, %struct.sst_algo_control* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i32 %41, i32 %44, i32 %47)
  %49 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %50 = load i32, i32* @SST_IPC_IA_SET_PARAMS, align 4
  %51 = load i32, i32* @SST_FLAG_BLOCKED, align 4
  %52 = load %struct.sst_algo_control*, %struct.sst_algo_control** %5, align 8
  %53 = getelementptr inbounds %struct.sst_algo_control, %struct.sst_algo_control* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sst_cmd_set_params*, %struct.sst_cmd_set_params** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @sst_fill_and_send_cmd_unlocked(%struct.sst_data* %49, i32 %50, i32 %51, i32 %54, i32 0, %struct.sst_cmd_set_params* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.sst_cmd_set_params*, %struct.sst_cmd_set_params** %8, align 8
  %59 = call i32 @kfree(%struct.sst_cmd_set_params* %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %23, %20
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.sst_cmd_set_params* @kzalloc(i32, i32) #1

declare dso_local i32 @SST_FILL_DESTINATION(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @sst_fill_and_send_cmd_unlocked(%struct.sst_data*, i32, i32, i32, i32, %struct.sst_cmd_set_params*, i32) #1

declare dso_local i32 @kfree(%struct.sst_cmd_set_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
