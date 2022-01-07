; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_acquire_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-dsp.c_skl_dsp_acquire_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, i32, %struct.TYPE_2__*, %struct.sst_dsp_device* }
%struct.TYPE_2__ = type { i32 }
%struct.sst_dsp_device = type { i32 }

@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"AudioDSP\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"unable to grab threaded IRQ %d, disabling device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_dsp_acquire_irq(%struct.sst_dsp* %0) #0 {
  %2 = alloca %struct.sst_dsp*, align 8
  %3 = alloca %struct.sst_dsp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %2, align 8
  %5 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %6 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %5, i32 0, i32 3
  %7 = load %struct.sst_dsp_device*, %struct.sst_dsp_device** %6, align 8
  store %struct.sst_dsp_device* %7, %struct.sst_dsp_device** %3, align 8
  %8 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %9 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %12 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sst_dsp_device*, %struct.sst_dsp_device** %3, align 8
  %17 = getelementptr inbounds %struct.sst_dsp_device, %struct.sst_dsp_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IRQF_SHARED, align 4
  %20 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %21 = call i32 @request_threaded_irq(i32 %10, i32 %15, i32 %18, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.sst_dsp* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %26 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %29 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %24, %1
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, %struct.sst_dsp*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
