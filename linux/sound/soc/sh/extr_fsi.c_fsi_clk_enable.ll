; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsi_priv = type { %struct.fsi_clk }
%struct.fsi_clk = type { i64, i32 (%struct.device.0*, %struct.fsi_priv.1*)*, i32, i32, i32 }
%struct.device.0 = type opaque
%struct.fsi_priv.1 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.fsi_priv*)* @fsi_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_clk_enable(%struct.device* %0, %struct.fsi_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fsi_priv*, align 8
  %6 = alloca %struct.fsi_clk*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.fsi_priv* %1, %struct.fsi_priv** %5, align 8
  %8 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %9 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %8, i32 0, i32 0
  store %struct.fsi_clk* %9, %struct.fsi_clk** %6, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %13 = call i32 @fsi_clk_is_valid(%struct.fsi_priv* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.fsi_clk*, %struct.fsi_clk** %6, align 8
  %19 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 0, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %17
  %23 = load %struct.fsi_clk*, %struct.fsi_clk** %6, align 8
  %24 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %23, i32 0, i32 1
  %25 = load i32 (%struct.device.0*, %struct.fsi_priv.1*)*, i32 (%struct.device.0*, %struct.fsi_priv.1*)** %24, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = bitcast %struct.device* %26 to %struct.device.0*
  %28 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %29 = bitcast %struct.fsi_priv* %28 to %struct.fsi_priv.1*
  %30 = call i32 %25(%struct.device.0* %27, %struct.fsi_priv.1* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %35 = call i32 @fsi_clk_invalid(%struct.fsi_priv* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %56

37:                                               ; preds = %22
  %38 = load %struct.fsi_clk*, %struct.fsi_clk** %6, align 8
  %39 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @clk_enable(i32 %40)
  %42 = load %struct.fsi_clk*, %struct.fsi_clk** %6, align 8
  %43 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clk_enable(i32 %44)
  %46 = load %struct.fsi_clk*, %struct.fsi_clk** %6, align 8
  %47 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @clk_enable(i32 %48)
  %50 = load %struct.fsi_clk*, %struct.fsi_clk** %6, align 8
  %51 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %37, %17
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %33, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @fsi_clk_is_valid(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_clk_invalid(%struct.fsi_priv*) #1

declare dso_local i32 @clk_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
