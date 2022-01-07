; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_skl_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_skl_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.skl_clk = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.skl_clk_rate_cfg_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @skl_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.skl_clk*, align 8
  %9 = alloca %struct.skl_clk_rate_cfg_table*, align 8
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.skl_clk* @to_skl_clk(%struct.clk_hw* %11)
  store %struct.skl_clk* %12, %struct.skl_clk** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %53

18:                                               ; preds = %3
  %19 = load %struct.skl_clk*, %struct.skl_clk** %8, align 8
  %20 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load %struct.skl_clk*, %struct.skl_clk** %8, align 8
  %25 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %6, align 8
  %31 = call %struct.skl_clk_rate_cfg_table* @skl_get_rate_cfg(i32 %29, i64 %30)
  store %struct.skl_clk_rate_cfg_table* %31, %struct.skl_clk_rate_cfg_table** %9, align 8
  %32 = load %struct.skl_clk_rate_cfg_table*, %struct.skl_clk_rate_cfg_table** %9, align 8
  %33 = icmp ne %struct.skl_clk_rate_cfg_table* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %18
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %53

37:                                               ; preds = %18
  %38 = load %struct.skl_clk*, %struct.skl_clk** %8, align 8
  %39 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @skl_get_clk_type(i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %53

46:                                               ; preds = %37
  %47 = load %struct.skl_clk_rate_cfg_table*, %struct.skl_clk_rate_cfg_table** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @skl_fill_clk_ipc(%struct.skl_clk_rate_cfg_table* %47, i32 %48)
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.skl_clk*, %struct.skl_clk** %8, align 8
  %52 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %44, %34, %15
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.skl_clk* @to_skl_clk(%struct.clk_hw*) #1

declare dso_local %struct.skl_clk_rate_cfg_table* @skl_get_rate_cfg(i32, i64) #1

declare dso_local i32 @skl_get_clk_type(i64) #1

declare dso_local i32 @skl_fill_clk_ipc(%struct.skl_clk_rate_cfg_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
