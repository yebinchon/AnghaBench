; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_compute_syndromes.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_compute_syndromes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bch_control*, i32*, i32*)* @compute_syndromes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_syndromes(%struct.bch_control* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.bch_control*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %14 = call i32 @GF_T(%struct.bch_control* %13)
  store i32 %14, i32* %12, align 4
  %15 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %16 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 31
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = sub i32 32, %23
  %25 = shl i32 1, %24
  %26 = sub i32 %25, 1
  %27 = xor i32 %26, -1
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sdiv i32 %29, 32
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %27
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %22, %3
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = mul nsw i32 2, %37
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(i32* %36, i32 0, i32 %41)
  br label %43

43:                                               ; preds = %84, %35
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %5, align 8
  %46 = load i32, i32* %44, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 32
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %78, %43
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @deg(i32 %53)
  store i32 %54, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %75, %52
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %12, align 4
  %58 = mul nsw i32 2, %57
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %64, %65
  %67 = mul nsw i32 %63, %66
  %68 = call i32 @a_pow(%struct.bch_control* %61, i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, %68
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %60
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %8, align 4
  br label %55

78:                                               ; preds = %55
  %79 = load i32, i32* %7, align 4
  %80 = shl i32 1, %79
  %81 = load i32, i32* %11, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %49

83:                                               ; preds = %49
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %43, label %87

87:                                               ; preds = %84
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %106, %87
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  %93 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @gf_sqr(%struct.bch_control* %93, i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = mul nsw i32 2, %101
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  store i32 %99, i32* %105, align 4
  br label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %88

109:                                              ; preds = %88
  ret void
}

declare dso_local i32 @GF_T(%struct.bch_control*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @deg(i32) #1

declare dso_local i32 @a_pow(%struct.bch_control*, i32) #1

declare dso_local i32 @gf_sqr(%struct.bch_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
