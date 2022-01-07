; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_module_runtime_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_module_runtime_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_module_runtime = type { i32, i32, i32, %struct.sst_module*, %struct.sst_dsp* }
%struct.sst_dsp = type { i32 }
%struct.sst_module = type { i32, %struct.sst_dsp* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sst_module_runtime* @sst_module_runtime_new(%struct.sst_module* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sst_module_runtime*, align 8
  %5 = alloca %struct.sst_module*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sst_dsp*, align 8
  %9 = alloca %struct.sst_module_runtime*, align 8
  store %struct.sst_module* %0, %struct.sst_module** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.sst_module*, %struct.sst_module** %5, align 8
  %11 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %10, i32 0, i32 1
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %11, align 8
  store %struct.sst_dsp* %12, %struct.sst_dsp** %8, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sst_module_runtime* @kzalloc(i32 32, i32 %13)
  store %struct.sst_module_runtime* %14, %struct.sst_module_runtime** %9, align 8
  %15 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %9, align 8
  %16 = icmp eq %struct.sst_module_runtime* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.sst_module_runtime* null, %struct.sst_module_runtime** %4, align 8
  br label %43

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %9, align 8
  %21 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %23 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %9, align 8
  %24 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %23, i32 0, i32 4
  store %struct.sst_dsp* %22, %struct.sst_dsp** %24, align 8
  %25 = load %struct.sst_module*, %struct.sst_module** %5, align 8
  %26 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %9, align 8
  %27 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %26, i32 0, i32 3
  store %struct.sst_module* %25, %struct.sst_module** %27, align 8
  %28 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %9, align 8
  %29 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %28, i32 0, i32 2
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %32 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %9, align 8
  %35 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %34, i32 0, i32 1
  %36 = load %struct.sst_module*, %struct.sst_module** %5, align 8
  %37 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %36, i32 0, i32 0
  %38 = call i32 @list_add(i32* %35, i32* %37)
  %39 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %40 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %9, align 8
  store %struct.sst_module_runtime* %42, %struct.sst_module_runtime** %4, align 8
  br label %43

43:                                               ; preds = %18, %17
  %44 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %4, align 8
  ret %struct.sst_module_runtime* %44
}

declare dso_local %struct.sst_module_runtime* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
