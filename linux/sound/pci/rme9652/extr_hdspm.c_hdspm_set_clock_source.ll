; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_clock_source.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_clock_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*, i32)* @hdspm_set_clock_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspm_set_clock_source(%struct.hdspm* %0, i32 %1) #0 {
  %3 = alloca %struct.hdspm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdspm* %0, %struct.hdspm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %16 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %9
    i32 3, label %10
    i32 4, label %11
    i32 5, label %12
    i32 6, label %13
    i32 7, label %14
    i32 8, label %15
  ]

7:                                                ; preds = %2
  store i32 32000, i32* %5, align 4
  br label %17

8:                                                ; preds = %2
  store i32 44100, i32* %5, align 4
  br label %17

9:                                                ; preds = %2
  store i32 48000, i32* %5, align 4
  br label %17

10:                                               ; preds = %2
  store i32 64000, i32* %5, align 4
  br label %17

11:                                               ; preds = %2
  store i32 88200, i32* %5, align 4
  br label %17

12:                                               ; preds = %2
  store i32 96000, i32* %5, align 4
  br label %17

13:                                               ; preds = %2
  store i32 128000, i32* %5, align 4
  br label %17

14:                                               ; preds = %2
  store i32 176400, i32* %5, align 4
  br label %17

15:                                               ; preds = %2
  store i32 192000, i32* %5, align 4
  br label %17

16:                                               ; preds = %2
  store i32 48000, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %18 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @hdspm_set_rate(%struct.hdspm* %18, i32 %19, i32 1)
  ret i32 0
}

declare dso_local i32 @hdspm_set_rate(%struct.hdspm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
