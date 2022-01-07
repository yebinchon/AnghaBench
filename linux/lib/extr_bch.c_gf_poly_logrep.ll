; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_gf_poly_logrep.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_gf_poly_logrep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32 }
%struct.gf_poly = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bch_control*, %struct.gf_poly*, i32*)* @gf_poly_logrep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf_poly_logrep(%struct.bch_control* %0, %struct.gf_poly* %1, i32* %2) #0 {
  %4 = alloca %struct.bch_control*, align 8
  %5 = alloca %struct.gf_poly*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %4, align 8
  store %struct.gf_poly* %1, %struct.gf_poly** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %11 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %14 = call i32 @GF_N(%struct.bch_control* %13)
  %15 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %16 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %17 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %20 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %18, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @a_log(%struct.bch_control* %15, i64 %24)
  %26 = sub nsw i32 %14, %25
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %61, %3
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %33 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %31
  %41 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %42 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %43 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %44 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @a_log(%struct.bch_control* %42, i64 %49)
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i32 @mod_s(%struct.bch_control* %41, i32 %52)
  br label %55

54:                                               ; preds = %31
  br label %55

55:                                               ; preds = %54, %40
  %56 = phi i32 [ %53, %40 ], [ -1, %54 ]
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %27

64:                                               ; preds = %27
  ret void
}

declare dso_local i32 @GF_N(%struct.bch_control*) #1

declare dso_local i32 @a_log(%struct.bch_control*, i64) #1

declare dso_local i32 @mod_s(%struct.bch_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
