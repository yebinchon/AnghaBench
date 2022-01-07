; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_mchp-i2s-mcc.c_mchp_i2s_mcc_clk_get_rate_diff.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_mchp-i2s-mcc.c_mchp_i2s_mcc_clk_get_rate_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64, %struct.clk**, i64*, i64*)* @mchp_i2s_mcc_clk_get_rate_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mchp_i2s_mcc_clk_get_rate_diff(%struct.clk* %0, i64 %1, %struct.clk** %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.clk**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.clk** %2, %struct.clk*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load %struct.clk*, %struct.clk** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @clk_round_rate(%struct.clk* %14, i64 %15)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i64, i64* %12, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  br label %41

22:                                               ; preds = %5
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %12, align 8
  %25 = sub i64 %23, %24
  %26 = call i32 @abs(i64 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64*, i64** %11, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load %struct.clk*, %struct.clk** %7, align 8
  %34 = load %struct.clk**, %struct.clk*** %9, align 8
  store %struct.clk* %33, %struct.clk** %34, align 8
  %35 = load i32, i32* %13, align 4
  %36 = zext i32 %35 to i64
  %37 = load i64*, i64** %11, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64*, i64** %10, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %32, %22
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i64 @clk_round_rate(%struct.clk*, i64) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
