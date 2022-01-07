; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es7241.c_es7241_set_master_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es7241.c_es7241_set_master_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es7241_data = type { i32 }
%struct.es7241_clock_mode = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es7241_data*, %struct.es7241_clock_mode*, i32)* @es7241_set_master_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es7241_set_master_mode(%struct.es7241_data* %0, %struct.es7241_clock_mode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.es7241_data*, align 8
  %6 = alloca %struct.es7241_clock_mode*, align 8
  %7 = alloca i32, align 4
  store %struct.es7241_data* %0, %struct.es7241_data** %5, align 8
  store %struct.es7241_clock_mode* %1, %struct.es7241_clock_mode** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.es7241_clock_mode*, %struct.es7241_clock_mode** %6, align 8
  %13 = getelementptr inbounds %struct.es7241_clock_mode, %struct.es7241_clock_mode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %28

19:                                               ; preds = %10, %3
  %20 = load %struct.es7241_data*, %struct.es7241_data** %5, align 8
  %21 = load %struct.es7241_clock_mode*, %struct.es7241_clock_mode** %6, align 8
  %22 = getelementptr inbounds %struct.es7241_clock_mode, %struct.es7241_clock_mode* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.es7241_clock_mode*, %struct.es7241_clock_mode** %6, align 8
  %25 = getelementptr inbounds %struct.es7241_clock_mode, %struct.es7241_clock_mode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @es7241_set_mode(%struct.es7241_data* %20, i32 %23, i32 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @es7241_set_mode(%struct.es7241_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
