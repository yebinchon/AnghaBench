; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_pio_push16.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_pio_push16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32 }

@DODT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_priv*, i32*, i32)* @fsi_pio_push16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_pio_push16(%struct.fsi_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.fsi_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  store %struct.fsi_priv* %0, %struct.fsi_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %11 = call i64 @fsi_is_enable_stream(%struct.fsi_priv* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %29, %13
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sdiv i32 %17, 2
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %22 = load i32, i32* @DODT, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @fsi_reg_write(%struct.fsi_priv* %21, i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %15

32:                                               ; preds = %15
  br label %55

33:                                               ; preds = %3
  %34 = load i32*, i32** %5, align 8
  %35 = bitcast i32* %34 to i64*
  store i64* %35, i64** %9, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %51, %33
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %42 = load i32, i32* @DODT, align 4
  %43 = load i64*, i64** %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = shl i32 %48, 8
  %50 = call i32 @fsi_reg_write(%struct.fsi_priv* %41, i32 %42, i32 %49)
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %36

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %32
  ret void
}

declare dso_local i64 @fsi_is_enable_stream(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_reg_write(%struct.fsi_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
