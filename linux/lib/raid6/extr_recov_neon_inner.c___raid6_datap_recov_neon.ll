; ModuleID = '/home/carl/AnghaBench/linux/lib/raid6/extr_recov_neon_inner.c___raid6_datap_recov_neon.c'
source_filename = "/home/carl/AnghaBench/linux/lib/raid6/extr_recov_neon_inner.c___raid6_datap_recov_neon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__raid6_datap_recov_neon(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @vld1q_u8(i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 16
  %20 = call i32 @vld1q_u8(i32* %19)
  store i32 %20, i32* %12, align 4
  %21 = call i32 @vdupq_n_u8(i32 15)
  store i32 %21, i32* %13, align 4
  br label %22

22:                                               ; preds = %25, %5
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %22
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @vld1q_u8(i32* %26)
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @vld1q_u8(i32* %28)
  %30 = call i32 @veorq_u8(i32 %27, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @vshrq_n_u8(i32 %31, i32 4)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @vandq_u8(i32 %34, i32 %35)
  %37 = call i32 @vqtbl1q_u8(i32 %33, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @vqtbl1q_u8(i32 %38, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @veorq_u8(i32 %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @vld1q_u8(i32* %45)
  %47 = call i32 @veorq_u8(i32 %44, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @vst1q_u8(i32* %48, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @vst1q_u8(i32* %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 16
  store i32 %55, i32* %6, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 16
  store i32* %57, i32** %7, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 16
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 16
  store i32* %61, i32** %9, align 8
  br label %22

62:                                               ; preds = %22
  ret void
}

declare dso_local i32 @vld1q_u8(i32*) #1

declare dso_local i32 @vdupq_n_u8(i32) #1

declare dso_local i32 @veorq_u8(i32, i32) #1

declare dso_local i32 @vshrq_n_u8(i32, i32) #1

declare dso_local i32 @vqtbl1q_u8(i32, i32) #1

declare dso_local i32 @vandq_u8(i32, i32) #1

declare dso_local i32 @vst1q_u8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
