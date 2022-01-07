; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_module_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_module_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_module = type { i32, i32, i32, i32, i32, i32, i32, %struct.sst_fw*, %struct.sst_dsp*, i32 }
%struct.sst_dsp = type { i32, i32 }
%struct.sst_fw = type { %struct.sst_dsp* }
%struct.sst_module_template = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SST_MODULE_STATE_UNLOADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sst_module* @sst_module_new(%struct.sst_fw* %0, %struct.sst_module_template* %1, i8* %2) #0 {
  %4 = alloca %struct.sst_module*, align 8
  %5 = alloca %struct.sst_fw*, align 8
  %6 = alloca %struct.sst_module_template*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sst_dsp*, align 8
  %9 = alloca %struct.sst_module*, align 8
  store %struct.sst_fw* %0, %struct.sst_fw** %5, align 8
  store %struct.sst_module_template* %1, %struct.sst_module_template** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.sst_fw*, %struct.sst_fw** %5, align 8
  %11 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %10, i32 0, i32 0
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %11, align 8
  store %struct.sst_dsp* %12, %struct.sst_dsp** %8, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sst_module* @kzalloc(i32 56, i32 %13)
  store %struct.sst_module* %14, %struct.sst_module** %9, align 8
  %15 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %16 = icmp eq %struct.sst_module* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.sst_module* null, %struct.sst_module** %4, align 8
  br label %66

18:                                               ; preds = %3
  %19 = load %struct.sst_module_template*, %struct.sst_module_template** %6, align 8
  %20 = getelementptr inbounds %struct.sst_module_template, %struct.sst_module_template* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %23 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %25 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %26 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %25, i32 0, i32 8
  store %struct.sst_dsp* %24, %struct.sst_dsp** %26, align 8
  %27 = load %struct.sst_fw*, %struct.sst_fw** %5, align 8
  %28 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %29 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %28, i32 0, i32 7
  store %struct.sst_fw* %27, %struct.sst_fw** %29, align 8
  %30 = load %struct.sst_module_template*, %struct.sst_module_template** %6, align 8
  %31 = getelementptr inbounds %struct.sst_module_template, %struct.sst_module_template* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %34 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.sst_module_template*, %struct.sst_module_template** %6, align 8
  %36 = getelementptr inbounds %struct.sst_module_template, %struct.sst_module_template* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %39 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sst_module_template*, %struct.sst_module_template** %6, align 8
  %41 = getelementptr inbounds %struct.sst_module_template, %struct.sst_module_template* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %44 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @SST_MODULE_STATE_UNLOADED, align 4
  %46 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %47 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %49 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %48, i32 0, i32 2
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %52 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %51, i32 0, i32 1
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %55 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %58 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %57, i32 0, i32 0
  %59 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %60 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %59, i32 0, i32 1
  %61 = call i32 @list_add(i32* %58, i32* %60)
  %62 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %63 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  store %struct.sst_module* %65, %struct.sst_module** %4, align 8
  br label %66

66:                                               ; preds = %18, %17
  %67 = load %struct.sst_module*, %struct.sst_module** %4, align 8
  ret %struct.sst_module* %67
}

declare dso_local %struct.sst_module* @kzalloc(i32, i32) #1

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
