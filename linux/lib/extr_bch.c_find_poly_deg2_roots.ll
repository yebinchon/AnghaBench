; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_find_poly_deg2_roots.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_find_poly_deg2_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32*, i32* }
%struct.gf_poly = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bch_control*, %struct.gf_poly*, i32*)* @find_poly_deg2_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_poly_deg2_roots(%struct.bch_control* %0, %struct.gf_poly* %1, i32* %2) #0 {
  %4 = alloca %struct.bch_control*, align 8
  %5 = alloca %struct.gf_poly*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %4, align 8
  store %struct.gf_poly* %1, %struct.gf_poly** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %16 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %145

21:                                               ; preds = %3
  %22 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %23 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %145

28:                                               ; preds = %21
  %29 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %30 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %33 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %40 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %43 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %50 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %53 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %60, %61
  %63 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %64 = call i32 @GF_N(%struct.bch_control* %63)
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %64, %65
  %67 = mul nsw i32 2, %66
  %68 = add nsw i32 %62, %67
  %69 = call i32 @a_pow(%struct.bch_control* %59, i32 %68)
  store i32 %69, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %74, %28
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @deg(i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %78 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %14, align 4
  %85 = xor i32 %84, %83
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %8, align 4
  %87 = shl i32 1, %86
  %88 = load i32, i32* %13, align 4
  %89 = xor i32 %88, %87
  store i32 %89, i32* %13, align 4
  br label %71

90:                                               ; preds = %71
  %91 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @gf_sqr(%struct.bch_control* %91, i32 %92)
  %94 = load i32, i32* %14, align 4
  %95 = xor i32 %93, %94
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %144

98:                                               ; preds = %90
  %99 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %100 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %101 = call i32 @GF_N(%struct.bch_control* %100)
  %102 = mul nsw i32 2, %101
  %103 = load i32, i32* %10, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %106 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %104, %111
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %112, %113
  %115 = call i32 @modulo(%struct.bch_control* %99, i32 %114)
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %115, i32* %120, align 4
  %121 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %122 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %123 = call i32 @GF_N(%struct.bch_control* %122)
  %124 = mul nsw i32 2, %123
  %125 = load i32, i32* %10, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %128 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = xor i32 %130, 1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %126, %134
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %135, %136
  %138 = call i32 @modulo(%struct.bch_control* %121, i32 %137)
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  store i32 %138, i32* %143, align 4
  br label %144

144:                                              ; preds = %98, %90
  br label %145

145:                                              ; preds = %144, %21, %3
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i32 @a_pow(%struct.bch_control*, i32) #1

declare dso_local i32 @GF_N(%struct.bch_control*) #1

declare dso_local i32 @deg(i32) #1

declare dso_local i32 @gf_sqr(%struct.bch_control*, i32) #1

declare dso_local i32 @modulo(%struct.bch_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
