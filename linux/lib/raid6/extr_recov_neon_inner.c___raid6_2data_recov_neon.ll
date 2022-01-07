; ModuleID = '/home/carl/AnghaBench/linux/lib/raid6/extr_recov_neon_inner.c___raid6_2data_recov_neon.c'
source_filename = "/home/carl/AnghaBench/linux/lib/raid6/extr_recov_neon_inner.c___raid6_2data_recov_neon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__raid6_2data_recov_neon(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call i32 @vld1q_u8(i32* %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 16
  %29 = call i32 @vld1q_u8(i32* %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32*, i32** %14, align 8
  %31 = call i32 @vld1q_u8(i32* %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32*, i32** %14, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 16
  %34 = call i32 @vld1q_u8(i32* %33)
  store i32 %34, i32* %18, align 4
  %35 = call i32 @vdupq_n_u8(i32 15)
  store i32 %35, i32* %19, align 4
  br label %36

36:                                               ; preds = %39, %7
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %97

39:                                               ; preds = %36
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @vld1q_u8(i32* %40)
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @vld1q_u8(i32* %42)
  %44 = call i32 @veorq_u8(i32 %41, i32 %43)
  store i32 %44, i32* %22, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @vld1q_u8(i32* %45)
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @vld1q_u8(i32* %47)
  %49 = call i32 @veorq_u8(i32 %46, i32 %48)
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %20, align 4
  %51 = call i32 @vshrq_n_u8(i32 %50, i32 4)
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %19, align 4
  %55 = call i32 @vandq_u8(i32 %53, i32 %54)
  %56 = call i32 @vqtbl1q_u8(i32 %52, i32 %55)
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %21, align 4
  %59 = call i32 @vqtbl1q_u8(i32 %57, i32 %58)
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %21, align 4
  %62 = call i32 @veorq_u8(i32 %60, i32 %61)
  store i32 %62, i32* %23, align 4
  %63 = load i32, i32* %22, align 4
  %64 = call i32 @vshrq_n_u8(i32 %63, i32 4)
  store i32 %64, i32* %21, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* %19, align 4
  %68 = call i32 @vandq_u8(i32 %66, i32 %67)
  %69 = call i32 @vqtbl1q_u8(i32 %65, i32 %68)
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %21, align 4
  %72 = call i32 @vqtbl1q_u8(i32 %70, i32 %71)
  store i32 %72, i32* %21, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %21, align 4
  %75 = call i32 @veorq_u8(i32 %73, i32 %74)
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %23, align 4
  %78 = call i32 @veorq_u8(i32 %76, i32 %77)
  store i32 %78, i32* %24, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %24, align 4
  %81 = call i32 @vst1q_u8(i32* %79, i32 %80)
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %22, align 4
  %85 = call i32 @veorq_u8(i32 %83, i32 %84)
  %86 = call i32 @vst1q_u8(i32* %82, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %87, 16
  store i32 %88, i32* %8, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 16
  store i32* %90, i32** %9, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 16
  store i32* %92, i32** %10, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 16
  store i32* %94, i32** %11, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 16
  store i32* %96, i32** %12, align 8
  br label %36

97:                                               ; preds = %36
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
