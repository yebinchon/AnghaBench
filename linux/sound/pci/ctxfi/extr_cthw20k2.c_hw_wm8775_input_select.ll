; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_wm8775_input_select.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_wm8775_input_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@WM8775_ADCMC = common dso_local global i32 0, align 4
@MIC_BOOST_STEPS_PER_DB = common dso_local global i32 0, align 4
@MIC_BOOST_0DB = common dso_local global i32 0, align 4
@WM8775_AADCL = common dso_local global i32 0, align 4
@WM8775_AADCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw*, i32, i32)* @hw_wm8775_input_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_wm8775_input_select(%struct.hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 3
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 3, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %3
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 1, %13
  %15 = or i32 %14, 256
  store i32 %15, i32* %7, align 4
  %16 = load %struct.hw*, %struct.hw** %4, align 8
  %17 = load i32, i32* @WM8775_ADCMC, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @MAKE_WM8775_ADDR(i32 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @MAKE_WM8775_DATA(i32 %20)
  %22 = call i32 @hw20k2_i2c_write(%struct.hw* %16, i32 %19, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, -103
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store i32 -103, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 24
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 24, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MIC_BOOST_STEPS_PER_DB, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* @MIC_BOOST_0DB, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.hw*, %struct.hw** %4, align 8
  %37 = load i32, i32* @WM8775_AADCL, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @MAKE_WM8775_ADDR(i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @MAKE_WM8775_DATA(i32 %40)
  %42 = call i32 @hw20k2_i2c_write(%struct.hw* %36, i32 %39, i32 %41)
  %43 = load %struct.hw*, %struct.hw** %4, align 8
  %44 = load i32, i32* @WM8775_AADCR, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @MAKE_WM8775_ADDR(i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @MAKE_WM8775_DATA(i32 %47)
  %49 = call i32 @hw20k2_i2c_write(%struct.hw* %43, i32 %46, i32 %48)
  ret void
}

declare dso_local i32 @hw20k2_i2c_write(%struct.hw*, i32, i32) #1

declare dso_local i32 @MAKE_WM8775_ADDR(i32, i32) #1

declare dso_local i32 @MAKE_WM8775_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
