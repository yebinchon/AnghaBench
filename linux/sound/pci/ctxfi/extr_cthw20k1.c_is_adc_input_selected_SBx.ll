; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_is_adc_input_selected_SBx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_is_adc_input_selected_SBx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32)* @is_adc_input_selected_SBx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_adc_input_selected_SBx(%struct.hw* %0, i32 %1) #0 {
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hw*, %struct.hw** %3, align 8
  %7 = load i32, i32* @GPIO, align 4
  %8 = call i32 @hw_read_20kx(%struct.hw* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %38 [
    i32 129, label %10
    i32 130, label %21
    i32 128, label %32
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 128
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 256
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %5, align 4
  br label %39

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 256
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 256
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %39

38:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %32, %29, %18
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
