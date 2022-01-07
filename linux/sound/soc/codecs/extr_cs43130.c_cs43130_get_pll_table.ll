; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_get_pll_table.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_get_pll_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs43130_pll_params = type { i32, i32 }

@pll_ratio_table = common dso_local global %struct.cs43130_pll_params* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cs43130_pll_params* (i32, i32)* @cs43130_get_pll_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cs43130_pll_params* @cs43130_get_pll_table(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.cs43130_pll_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** @pll_ratio_table, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.cs43130_pll_params* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  %13 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** @pll_ratio_table, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cs43130_pll_params, %struct.cs43130_pll_params* %13, i64 %15
  %17 = getelementptr inbounds %struct.cs43130_pll_params, %struct.cs43130_pll_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %12
  %22 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** @pll_ratio_table, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cs43130_pll_params, %struct.cs43130_pll_params* %22, i64 %24
  %26 = getelementptr inbounds %struct.cs43130_pll_params, %struct.cs43130_pll_params* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** @pll_ratio_table, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cs43130_pll_params, %struct.cs43130_pll_params* %31, i64 %33
  store %struct.cs43130_pll_params* %34, %struct.cs43130_pll_params** %3, align 8
  br label %40

35:                                               ; preds = %21, %12
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %7

39:                                               ; preds = %7
  store %struct.cs43130_pll_params* null, %struct.cs43130_pll_params** %3, align 8
  br label %40

40:                                               ; preds = %39, %30
  %41 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** %3, align 8
  ret %struct.cs43130_pll_params* %41
}

declare dso_local i32 @ARRAY_SIZE(%struct.cs43130_pll_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
