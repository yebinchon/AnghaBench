; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_dsp_get_offset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_dsp_get_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sst_dsp_get_offset(%struct.sst_dsp* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %33 [
    i32 128, label %9
    i32 129, label %21
  ]

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %12 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %10, %14
  %16 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %17 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %15, %19
  store i64 %20, i64* %4, align 8
  br label %34

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %24 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %22, %26
  %28 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %29 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %27, %31
  store i64 %32, i64* %4, align 8
  br label %34

33:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %34

34:                                               ; preds = %33, %21, %9
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
