; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_meter_get_rms_ballistics.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_meter_get_rms_ballistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPI_METER_RMS_BALLISTICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @hpi_meter_get_rms_ballistics(i64 %0, i16* %1, i16* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  store i64 %0, i64* %4, align 8
  store i16* %1, i16** %5, align 8
  store i16* %2, i16** %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* @HPI_METER_RMS_BALLISTICS, align 4
  %12 = call zeroext i16 @hpi_control_param2_get(i64 %10, i32 %11, i64* %7, i64* %8)
  store i16 %12, i16* %9, align 2
  %13 = load i16*, i16** %5, align 8
  %14 = icmp ne i16* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = trunc i64 %16 to i16
  %18 = load i16*, i16** %5, align 8
  store i16 %17, i16* %18, align 2
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i16*, i16** %6, align 8
  %21 = icmp ne i16* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* %8, align 8
  %24 = trunc i64 %23 to i16
  %25 = load i16*, i16** %6, align 8
  store i16 %24, i16* %25, align 2
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i16, i16* %9, align 2
  ret i16 %27
}

declare dso_local zeroext i16 @hpi_control_param2_get(i64, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
