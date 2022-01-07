; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_snd_sf_linear_to_log.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_snd_sf_linear_to_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_tbl = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sf_linear_to_log(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

15:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %25, %15
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = and i64 %18, 2147483648
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %16

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = lshr i32 %29, 24
  %31 = and i32 %30, 127
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** @log_tbl, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32*, i32** @log_tbl, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 256, %48
  %50 = mul nsw i32 %47, %49
  %51 = add nsw i32 %42, %50
  %52 = ashr i32 %51, 8
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 %56, %57
  %59 = ashr i32 %58, 16
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 24, %60
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %28, %14
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
