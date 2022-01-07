; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_skl_get_rate_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_skl_get_rate_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_clk_rate_cfg_table = type { i64 }

@SKL_MAX_CLK_RATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.skl_clk_rate_cfg_table* (%struct.skl_clk_rate_cfg_table*, i64)* @skl_get_rate_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.skl_clk_rate_cfg_table* @skl_get_rate_cfg(%struct.skl_clk_rate_cfg_table* %0, i64 %1) #0 {
  %3 = alloca %struct.skl_clk_rate_cfg_table*, align 8
  %4 = alloca %struct.skl_clk_rate_cfg_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.skl_clk_rate_cfg_table* %0, %struct.skl_clk_rate_cfg_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @SKL_MAX_CLK_RATES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load %struct.skl_clk_rate_cfg_table*, %struct.skl_clk_rate_cfg_table** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.skl_clk_rate_cfg_table, %struct.skl_clk_rate_cfg_table* %12, i64 %14
  %16 = getelementptr inbounds %struct.skl_clk_rate_cfg_table, %struct.skl_clk_rate_cfg_table* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %11, %7
  %20 = phi i1 [ false, %7 ], [ %18, %11 ]
  br i1 %20, label %21, label %39

21:                                               ; preds = %19
  %22 = load %struct.skl_clk_rate_cfg_table*, %struct.skl_clk_rate_cfg_table** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.skl_clk_rate_cfg_table, %struct.skl_clk_rate_cfg_table* %22, i64 %24
  %26 = getelementptr inbounds %struct.skl_clk_rate_cfg_table, %struct.skl_clk_rate_cfg_table* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.skl_clk_rate_cfg_table*, %struct.skl_clk_rate_cfg_table** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.skl_clk_rate_cfg_table, %struct.skl_clk_rate_cfg_table* %31, i64 %33
  store %struct.skl_clk_rate_cfg_table* %34, %struct.skl_clk_rate_cfg_table** %3, align 8
  br label %40

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %7

39:                                               ; preds = %19
  store %struct.skl_clk_rate_cfg_table* null, %struct.skl_clk_rate_cfg_table** %3, align 8
  br label %40

40:                                               ; preds = %39, %30
  %41 = load %struct.skl_clk_rate_cfg_table*, %struct.skl_clk_rate_cfg_table** %3, align 8
  ret %struct.skl_clk_rate_cfg_table* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
