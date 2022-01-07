; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_hw_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_hw_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32, i32 }

@HDSPM_statusRegister = common dso_local global i32 0, align 4
@HDSPM_BufferPositionMask = common dso_local global i32 0, align 4
@HDSPM_BufferID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*)* @hdspm_hw_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspm_hw_pointer(%struct.hdspm* %0) #0 {
  %2 = alloca %struct.hdspm*, align 8
  %3 = alloca i32, align 4
  store %struct.hdspm* %0, %struct.hdspm** %2, align 8
  %4 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %5 = load i32, i32* @HDSPM_statusRegister, align 4
  %6 = call i32 @hdspm_read(%struct.hdspm* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %8 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %16 [
    i32 128, label %10
    i32 129, label %10
  ]

10:                                               ; preds = %1, %1
  %11 = load i32, i32* @HDSPM_BufferPositionMask, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sdiv i32 %14, 4
  store i32 %15, i32* %3, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @HDSPM_BufferID, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %23 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 4
  br label %27

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32 [ %25, %21 ], [ 0, %26 ]
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %10
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @hdspm_read(%struct.hdspm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
