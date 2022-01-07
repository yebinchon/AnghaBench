; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_mic_source_switch_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_mic_source_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.hw20k2 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32)* @hw_mic_source_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_mic_source_switch_put(%struct.hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hw20k2*, align 8
  store %struct.hw* %0, %struct.hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hw*, %struct.hw** %4, align 8
  %8 = bitcast %struct.hw* %7 to %struct.hw20k2*
  store %struct.hw20k2* %8, %struct.hw20k2** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.hw20k2*, %struct.hw20k2** %6, align 8
  %11 = getelementptr inbounds %struct.hw20k2, %struct.hw20k2* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %26 [
    i32 0, label %17
    i32 1, label %20
    i32 2, label %23
  ]

17:                                               ; preds = %15
  %18 = load %struct.hw*, %struct.hw** %4, align 8
  %19 = call i32 @hw_wm8775_input_select(%struct.hw* %18, i32 0, i32 0)
  br label %27

20:                                               ; preds = %15
  %21 = load %struct.hw*, %struct.hw** %4, align 8
  %22 = call i32 @hw_wm8775_input_select(%struct.hw* %21, i32 1, i32 0)
  br label %27

23:                                               ; preds = %15
  %24 = load %struct.hw*, %struct.hw** %4, align 8
  %25 = call i32 @hw_wm8775_input_select(%struct.hw* %24, i32 3, i32 0)
  br label %27

26:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %31

27:                                               ; preds = %23, %20, %17
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.hw20k2*, %struct.hw20k2** %6, align 8
  %30 = getelementptr inbounds %struct.hw20k2, %struct.hw20k2* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %26, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @hw_wm8775_input_select(%struct.hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
