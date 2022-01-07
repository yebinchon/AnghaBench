; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_runtime_module_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_runtime_module_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_module_runtime = type { i32 }
%struct.sst_hsw = type { %struct.sst_dsp* }
%struct.sst_dsp = type { i32 }
%struct.sst_module = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"error: failed to get module %d for pcm\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"error: failed to create module %d runtime\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"error: failed to alloc blocks for module %d runtime\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"runtime id %d created for module %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sst_module_runtime* @sst_hsw_runtime_module_create(%struct.sst_hsw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sst_module_runtime*, align 8
  %5 = alloca %struct.sst_hsw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sst_dsp*, align 8
  %9 = alloca %struct.sst_module*, align 8
  %10 = alloca %struct.sst_module_runtime*, align 8
  %11 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %13 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %12, i32 0, i32 0
  %14 = load %struct.sst_dsp*, %struct.sst_dsp** %13, align 8
  store %struct.sst_dsp* %14, %struct.sst_dsp** %8, align 8
  %15 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.sst_module* @sst_module_get_from_id(%struct.sst_dsp* %15, i32 %16)
  store %struct.sst_module* %17, %struct.sst_module** %9, align 8
  %18 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %19 = icmp eq %struct.sst_module* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %22 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %24)
  store %struct.sst_module_runtime* null, %struct.sst_module_runtime** %4, align 8
  br label %62

26:                                               ; preds = %3
  %27 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.sst_module_runtime* @sst_module_runtime_new(%struct.sst_module* %27, i32 %28, i32* null)
  store %struct.sst_module_runtime* %29, %struct.sst_module_runtime** %10, align 8
  %30 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %10, align 8
  %31 = icmp eq %struct.sst_module_runtime* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %34 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store %struct.sst_module_runtime* null, %struct.sst_module_runtime** %4, align 8
  br label %62

38:                                               ; preds = %26
  %39 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %10, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @sst_module_runtime_alloc_blocks(%struct.sst_module_runtime* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %46 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %10, align 8
  %51 = call i32 @sst_module_runtime_free(%struct.sst_module_runtime* %50)
  store %struct.sst_module_runtime* null, %struct.sst_module_runtime** %4, align 8
  br label %62

52:                                               ; preds = %38
  %53 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %54 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %10, align 8
  %57 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %10, align 8
  store %struct.sst_module_runtime* %61, %struct.sst_module_runtime** %4, align 8
  br label %62

62:                                               ; preds = %52, %44, %32, %20
  %63 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %4, align 8
  ret %struct.sst_module_runtime* %63
}

declare dso_local %struct.sst_module* @sst_module_get_from_id(%struct.sst_dsp*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.sst_module_runtime* @sst_module_runtime_new(%struct.sst_module*, i32, i32*) #1

declare dso_local i32 @sst_module_runtime_alloc_blocks(%struct.sst_module_runtime*, i32) #1

declare dso_local i32 @sst_module_runtime_free(%struct.sst_module_runtime*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
