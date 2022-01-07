; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_find_poly_deg3_roots.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_find_poly_deg3_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32 }
%struct.gf_poly = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bch_control*, %struct.gf_poly*, i32*)* @find_poly_deg3_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_poly_deg3_roots(%struct.bch_control* %0, %struct.gf_poly* %1, i32* %2) #0 {
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
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  store %struct.bch_control* %0, %struct.bch_control** %4, align 8
  store %struct.gf_poly* %1, %struct.gf_poly** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %18 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %104

23:                                               ; preds = %3
  %24 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %25 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %30 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %31 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @gf_div(%struct.bch_control* %29, i32 %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %38 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %39 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @gf_div(%struct.bch_control* %37, i32 %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %46 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %47 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @gf_div(%struct.bch_control* %45, i32 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @gf_mul(%struct.bch_control* %53, i32 %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @gf_mul(%struct.bch_control* %57, i32 %58, i32 %59)
  %61 = load i32, i32* %14, align 4
  %62 = xor i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @gf_sqr(%struct.bch_control* %63, i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = xor i32 %65, %66
  store i32 %67, i32* %9, align 4
  %68 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %73 = call i32 @find_affine4_roots(%struct.bch_control* %68, i32 %69, i32 %70, i32 %71, i32* %72)
  %74 = icmp eq i32 %73, 4
  br i1 %74, label %75, label %103

75:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %99, %75
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %79
  %87 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @a_ilog(%struct.bch_control* %87, i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %92, i32* %97, align 4
  br label %98

98:                                               ; preds = %86, %79
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %76

102:                                              ; preds = %76
  br label %103

103:                                              ; preds = %102, %23
  br label %104

104:                                              ; preds = %103, %3
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i32 @gf_div(%struct.bch_control*, i32, i32) #1

declare dso_local i32 @gf_mul(%struct.bch_control*, i32, i32) #1

declare dso_local i32 @gf_sqr(%struct.bch_control*, i32) #1

declare dso_local i32 @find_affine4_roots(%struct.bch_control*, i32, i32, i32, i32*) #1

declare dso_local i32 @a_ilog(%struct.bch_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
