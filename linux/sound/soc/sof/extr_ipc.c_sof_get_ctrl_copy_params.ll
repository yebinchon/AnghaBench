; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_sof_get_ctrl_copy_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_sof_get_ctrl_copy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sof_ipc_ctrl_data = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.sof_ipc_ctrl_data_params = type { i64, i32, i32, i64, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@SOF_IPC_MSG_MAX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data_params*)* @sof_get_ctrl_copy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_get_ctrl_copy_params(i32 %0, %struct.sof_ipc_ctrl_data* %1, %struct.sof_ipc_ctrl_data* %2, %struct.sof_ipc_ctrl_data_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sof_ipc_ctrl_data*, align 8
  %8 = alloca %struct.sof_ipc_ctrl_data*, align 8
  %9 = alloca %struct.sof_ipc_ctrl_data_params*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.sof_ipc_ctrl_data* %1, %struct.sof_ipc_ctrl_data** %7, align 8
  store %struct.sof_ipc_ctrl_data* %2, %struct.sof_ipc_ctrl_data** %8, align 8
  store %struct.sof_ipc_ctrl_data_params* %3, %struct.sof_ipc_ctrl_data_params** %9, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %54 [
    i32 131, label %11
    i32 130, label %11
    i32 129, label %24
    i32 128, label %24
    i32 133, label %37
    i32 132, label %37
  ]

11:                                               ; preds = %4, %4
  %12 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %7, align 8
  %13 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %9, align 8
  %17 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %16, i32 0, i32 5
  store i32* %15, i32** %17, align 8
  %18 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %8, align 8
  %19 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %9, align 8
  %23 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %22, i32 0, i32 4
  store i32* %21, i32** %23, align 8
  br label %57

24:                                               ; preds = %4, %4
  %25 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %7, align 8
  %26 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %9, align 8
  %30 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %29, i32 0, i32 5
  store i32* %28, i32** %30, align 8
  %31 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %8, align 8
  %32 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %9, align 8
  %36 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %35, i32 0, i32 4
  store i32* %34, i32** %36, align 8
  br label %57

37:                                               ; preds = %4, %4
  %38 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %7, align 8
  %39 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %9, align 8
  %45 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %44, i32 0, i32 5
  store i32* %43, i32** %45, align 8
  %46 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %8, align 8
  %47 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %9, align 8
  %53 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %52, i32 0, i32 4
  store i32* %51, i32** %53, align 8
  br label %57

54:                                               ; preds = %4
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %74

57:                                               ; preds = %37, %24, %11
  %58 = load i64, i64* @SOF_IPC_MSG_MAX_SIZE, align 8
  %59 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %9, align 8
  %60 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %9, align 8
  %64 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %9, align 8
  %66 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %9, align 8
  %69 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @DIV_ROUND_UP(i32 %67, i64 %70)
  %72 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %9, align 8
  %73 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %57, %54
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
