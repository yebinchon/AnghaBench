; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_get_clk_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_get_clk_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs35l36_pll_config = type { i32 }
%struct.cs35l36_private = type { i32 }

@cs35l36_pll_sysclk = common dso_local global %struct.cs35l36_pll_config* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cs35l36_pll_config* (%struct.cs35l36_private*, i32)* @cs35l36_get_clk_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cs35l36_pll_config* @cs35l36_get_clk_config(%struct.cs35l36_private* %0, i32 %1) #0 {
  %3 = alloca %struct.cs35l36_pll_config*, align 8
  %4 = alloca %struct.cs35l36_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cs35l36_private* %0, %struct.cs35l36_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.cs35l36_pll_config*, %struct.cs35l36_pll_config** @cs35l36_pll_sysclk, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.cs35l36_pll_config* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = load %struct.cs35l36_pll_config*, %struct.cs35l36_pll_config** @cs35l36_pll_sysclk, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cs35l36_pll_config, %struct.cs35l36_pll_config* %13, i64 %15
  %17 = getelementptr inbounds %struct.cs35l36_pll_config, %struct.cs35l36_pll_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load %struct.cs35l36_pll_config*, %struct.cs35l36_pll_config** @cs35l36_pll_sysclk, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cs35l36_pll_config, %struct.cs35l36_pll_config* %22, i64 %24
  store %struct.cs35l36_pll_config* %25, %struct.cs35l36_pll_config** %3, align 8
  br label %31

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %7

30:                                               ; preds = %7
  store %struct.cs35l36_pll_config* null, %struct.cs35l36_pll_config** %3, align 8
  br label %31

31:                                               ; preds = %30, %21
  %32 = load %struct.cs35l36_pll_config*, %struct.cs35l36_pll_config** %3, align 8
  ret %struct.cs35l36_pll_config* %32
}

declare dso_local i32 @ARRAY_SIZE(%struct.cs35l36_pll_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
