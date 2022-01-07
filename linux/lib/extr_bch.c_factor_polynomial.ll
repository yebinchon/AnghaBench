; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_factor_polynomial.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_factor_polynomial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { %struct.gf_poly** }
%struct.gf_poly = type { i64 }
%struct.gf_poly_deg1 = type { %struct.gf_poly }

@.str = private unnamed_addr constant [17 x i8] c"factoring %s...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bch_control*, i32, %struct.gf_poly*, %struct.gf_poly**, %struct.gf_poly**)* @factor_polynomial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @factor_polynomial(%struct.bch_control* %0, i32 %1, %struct.gf_poly* %2, %struct.gf_poly** %3, %struct.gf_poly** %4) #0 {
  %6 = alloca %struct.bch_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gf_poly*, align 8
  %9 = alloca %struct.gf_poly**, align 8
  %10 = alloca %struct.gf_poly**, align 8
  %11 = alloca %struct.gf_poly*, align 8
  %12 = alloca %struct.gf_poly*, align 8
  %13 = alloca %struct.gf_poly*, align 8
  %14 = alloca %struct.gf_poly*, align 8
  %15 = alloca %struct.gf_poly*, align 8
  store %struct.bch_control* %0, %struct.bch_control** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.gf_poly* %2, %struct.gf_poly** %8, align 8
  store %struct.gf_poly** %3, %struct.gf_poly*** %9, align 8
  store %struct.gf_poly** %4, %struct.gf_poly*** %10, align 8
  %16 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %17 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %16, i32 0, i32 0
  %18 = load %struct.gf_poly**, %struct.gf_poly*** %17, align 8
  %19 = getelementptr inbounds %struct.gf_poly*, %struct.gf_poly** %18, i64 0
  %20 = load %struct.gf_poly*, %struct.gf_poly** %19, align 8
  store %struct.gf_poly* %20, %struct.gf_poly** %11, align 8
  %21 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %22 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %21, i32 0, i32 0
  %23 = load %struct.gf_poly**, %struct.gf_poly*** %22, align 8
  %24 = getelementptr inbounds %struct.gf_poly*, %struct.gf_poly** %23, i64 1
  %25 = load %struct.gf_poly*, %struct.gf_poly** %24, align 8
  store %struct.gf_poly* %25, %struct.gf_poly** %12, align 8
  %26 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %27 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %26, i32 0, i32 0
  %28 = load %struct.gf_poly**, %struct.gf_poly*** %27, align 8
  %29 = getelementptr inbounds %struct.gf_poly*, %struct.gf_poly** %28, i64 2
  %30 = load %struct.gf_poly*, %struct.gf_poly** %29, align 8
  store %struct.gf_poly* %30, %struct.gf_poly** %13, align 8
  %31 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %32 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %31, i32 0, i32 0
  %33 = load %struct.gf_poly**, %struct.gf_poly*** %32, align 8
  %34 = getelementptr inbounds %struct.gf_poly*, %struct.gf_poly** %33, i64 3
  %35 = load %struct.gf_poly*, %struct.gf_poly** %34, align 8
  store %struct.gf_poly* %35, %struct.gf_poly** %14, align 8
  %36 = load %struct.gf_poly*, %struct.gf_poly** %8, align 8
  %37 = call i32 @gf_poly_str(%struct.gf_poly* %36)
  %38 = call i32 @dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.gf_poly*, %struct.gf_poly** %8, align 8
  %40 = load %struct.gf_poly**, %struct.gf_poly*** %9, align 8
  store %struct.gf_poly* %39, %struct.gf_poly** %40, align 8
  %41 = load %struct.gf_poly**, %struct.gf_poly*** %10, align 8
  store %struct.gf_poly* null, %struct.gf_poly** %41, align 8
  %42 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.gf_poly*, %struct.gf_poly** %8, align 8
  %45 = load %struct.gf_poly*, %struct.gf_poly** %14, align 8
  %46 = load %struct.gf_poly*, %struct.gf_poly** %13, align 8
  %47 = call i32 @compute_trace_bk_mod(%struct.bch_control* %42, i32 %43, %struct.gf_poly* %44, %struct.gf_poly* %45, %struct.gf_poly* %46)
  %48 = load %struct.gf_poly*, %struct.gf_poly** %13, align 8
  %49 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %90

52:                                               ; preds = %5
  %53 = load %struct.gf_poly*, %struct.gf_poly** %11, align 8
  %54 = load %struct.gf_poly*, %struct.gf_poly** %8, align 8
  %55 = call i32 @gf_poly_copy(%struct.gf_poly* %53, %struct.gf_poly* %54)
  %56 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %57 = load %struct.gf_poly*, %struct.gf_poly** %11, align 8
  %58 = load %struct.gf_poly*, %struct.gf_poly** %13, align 8
  %59 = call %struct.gf_poly* @gf_poly_gcd(%struct.bch_control* %56, %struct.gf_poly* %57, %struct.gf_poly* %58)
  store %struct.gf_poly* %59, %struct.gf_poly** %15, align 8
  %60 = load %struct.gf_poly*, %struct.gf_poly** %15, align 8
  %61 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.gf_poly*, %struct.gf_poly** %8, align 8
  %64 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %52
  %68 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %69 = load %struct.gf_poly*, %struct.gf_poly** %8, align 8
  %70 = load %struct.gf_poly*, %struct.gf_poly** %15, align 8
  %71 = load %struct.gf_poly*, %struct.gf_poly** %12, align 8
  %72 = call i32 @gf_poly_div(%struct.bch_control* %68, %struct.gf_poly* %69, %struct.gf_poly* %70, %struct.gf_poly* %71)
  %73 = load %struct.gf_poly*, %struct.gf_poly** %8, align 8
  %74 = bitcast %struct.gf_poly* %73 to %struct.gf_poly_deg1*
  %75 = load %struct.gf_poly*, %struct.gf_poly** %15, align 8
  %76 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.gf_poly_deg1, %struct.gf_poly_deg1* %74, i64 %77
  %79 = getelementptr inbounds %struct.gf_poly_deg1, %struct.gf_poly_deg1* %78, i32 0, i32 0
  %80 = load %struct.gf_poly**, %struct.gf_poly*** %10, align 8
  store %struct.gf_poly* %79, %struct.gf_poly** %80, align 8
  %81 = load %struct.gf_poly**, %struct.gf_poly*** %9, align 8
  %82 = load %struct.gf_poly*, %struct.gf_poly** %81, align 8
  %83 = load %struct.gf_poly*, %struct.gf_poly** %15, align 8
  %84 = call i32 @gf_poly_copy(%struct.gf_poly* %82, %struct.gf_poly* %83)
  %85 = load %struct.gf_poly**, %struct.gf_poly*** %10, align 8
  %86 = load %struct.gf_poly*, %struct.gf_poly** %85, align 8
  %87 = load %struct.gf_poly*, %struct.gf_poly** %12, align 8
  %88 = call i32 @gf_poly_copy(%struct.gf_poly* %86, %struct.gf_poly* %87)
  br label %89

89:                                               ; preds = %67, %52
  br label %90

90:                                               ; preds = %89, %5
  ret void
}

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @gf_poly_str(%struct.gf_poly*) #1

declare dso_local i32 @compute_trace_bk_mod(%struct.bch_control*, i32, %struct.gf_poly*, %struct.gf_poly*, %struct.gf_poly*) #1

declare dso_local i32 @gf_poly_copy(%struct.gf_poly*, %struct.gf_poly*) #1

declare dso_local %struct.gf_poly* @gf_poly_gcd(%struct.bch_control*, %struct.gf_poly*, %struct.gf_poly*) #1

declare dso_local i32 @gf_poly_div(%struct.bch_control*, %struct.gf_poly*, %struct.gf_poly*, %struct.gf_poly*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
