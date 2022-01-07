; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_dsp_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_dsp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.sst_dsp*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sst_dsp_free(%struct.sst_dsp* %0) #0 {
  %2 = alloca %struct.sst_dsp*, align 8
  store %struct.sst_dsp* %0, %struct.sst_dsp** %2, align 8
  %3 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %4 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %7 = call i32 @free_irq(i32 %5, %struct.sst_dsp* %6)
  %8 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %9 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.sst_dsp*)*, i32 (%struct.sst_dsp*)** %11, align 8
  %13 = icmp ne i32 (%struct.sst_dsp*)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %16 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.sst_dsp*)*, i32 (%struct.sst_dsp*)** %18, align 8
  %20 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %21 = call i32 %19(%struct.sst_dsp* %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %24 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sst_dma_free(i32 %25)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.sst_dsp*) #1

declare dso_local i32 @sst_dma_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
