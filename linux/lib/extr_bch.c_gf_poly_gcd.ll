; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_gf_poly_gcd.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_gf_poly_gcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32 }
%struct.gf_poly = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"gcd(%s,%s)=\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gf_poly* (%struct.bch_control*, %struct.gf_poly*, %struct.gf_poly*)* @gf_poly_gcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gf_poly* @gf_poly_gcd(%struct.bch_control* %0, %struct.gf_poly* %1, %struct.gf_poly* %2) #0 {
  %4 = alloca %struct.bch_control*, align 8
  %5 = alloca %struct.gf_poly*, align 8
  %6 = alloca %struct.gf_poly*, align 8
  %7 = alloca %struct.gf_poly*, align 8
  store %struct.bch_control* %0, %struct.bch_control** %4, align 8
  store %struct.gf_poly* %1, %struct.gf_poly** %5, align 8
  store %struct.gf_poly* %2, %struct.gf_poly** %6, align 8
  %8 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %9 = call i32 @gf_poly_str(%struct.gf_poly* %8)
  %10 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %11 = call i32 @gf_poly_str(%struct.gf_poly* %10)
  %12 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %11)
  %13 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %14 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %17 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  store %struct.gf_poly* %21, %struct.gf_poly** %7, align 8
  %22 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  store %struct.gf_poly* %22, %struct.gf_poly** %6, align 8
  %23 = load %struct.gf_poly*, %struct.gf_poly** %7, align 8
  store %struct.gf_poly* %23, %struct.gf_poly** %5, align 8
  br label %24

24:                                               ; preds = %20, %3
  br label %25

25:                                               ; preds = %30, %24
  %26 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %27 = getelementptr inbounds %struct.gf_poly, %struct.gf_poly* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %32 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %33 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  %34 = call i32 @gf_poly_mod(%struct.bch_control* %31, %struct.gf_poly* %32, %struct.gf_poly* %33, i32* null)
  %35 = load %struct.gf_poly*, %struct.gf_poly** %6, align 8
  store %struct.gf_poly* %35, %struct.gf_poly** %7, align 8
  %36 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  store %struct.gf_poly* %36, %struct.gf_poly** %6, align 8
  %37 = load %struct.gf_poly*, %struct.gf_poly** %7, align 8
  store %struct.gf_poly* %37, %struct.gf_poly** %5, align 8
  br label %25

38:                                               ; preds = %25
  %39 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  %40 = call i32 @gf_poly_str(%struct.gf_poly* %39)
  %41 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.gf_poly*, %struct.gf_poly** %5, align 8
  ret %struct.gf_poly* %42
}

declare dso_local i32 @dbg(i8*, i32, ...) #1

declare dso_local i32 @gf_poly_str(%struct.gf_poly*) #1

declare dso_local i32 @gf_poly_mod(%struct.bch_control*, %struct.gf_poly*, %struct.gf_poly*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
