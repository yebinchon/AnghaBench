; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_gf_mul.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_gf_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bch_control*, i32, i32)* @gf_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf_mul(%struct.bch_control* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bch_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %14 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %17 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %18 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %25 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %23, %30
  %32 = call i64 @mod_s(%struct.bch_control* %16, i64 %31)
  %33 = getelementptr inbounds i32, i32* %15, i64 %32
  %34 = load i32, i32* %33, align 4
  br label %36

35:                                               ; preds = %9, %3
  br label %36

36:                                               ; preds = %35, %12
  %37 = phi i32 [ %34, %12 ], [ 0, %35 ]
  ret i32 %37
}

declare dso_local i64 @mod_s(%struct.bch_control*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
