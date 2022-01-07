; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_clock_source.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_clock_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32, i32 }

@HDSP_ClockModeMaster = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @hdsp_clock_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_clock_source(%struct.hdsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdsp*, align 8
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  %4 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %5 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @HDSP_ClockModeMaster, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %12 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %23 [
    i32 32000, label %14
    i32 44100, label %15
    i32 48000, label %16
    i32 64000, label %17
    i32 88200, label %18
    i32 96000, label %19
    i32 128000, label %20
    i32 176400, label %21
    i32 192000, label %22
  ]

14:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %25

15:                                               ; preds = %10
  store i32 2, i32* %2, align 4
  br label %25

16:                                               ; preds = %10
  store i32 3, i32* %2, align 4
  br label %25

17:                                               ; preds = %10
  store i32 4, i32* %2, align 4
  br label %25

18:                                               ; preds = %10
  store i32 5, i32* %2, align 4
  br label %25

19:                                               ; preds = %10
  store i32 6, i32* %2, align 4
  br label %25

20:                                               ; preds = %10
  store i32 7, i32* %2, align 4
  br label %25

21:                                               ; preds = %10
  store i32 8, i32* %2, align 4
  br label %25

22:                                               ; preds = %10
  store i32 9, i32* %2, align 4
  br label %25

23:                                               ; preds = %10
  store i32 3, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
