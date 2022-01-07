; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_skl_clk_change_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_skl_clk_change_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_clk = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.skl_clk_rate_cfg_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skl_clk*, i32)* @skl_clk_change_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_clk_change_status(%struct.skl_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skl_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skl_clk_rate_cfg_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.skl_clk* %0, %struct.skl_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.skl_clk*, %struct.skl_clk** %4, align 8
  %10 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @skl_get_clk_type(i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.skl_clk*, %struct.skl_clk** %4, align 8
  %19 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @skl_get_vbus_id(i64 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %59

27:                                               ; preds = %17
  %28 = load %struct.skl_clk*, %struct.skl_clk** %4, align 8
  %29 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.skl_clk*, %struct.skl_clk** %4, align 8
  %34 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.skl_clk*, %struct.skl_clk** %4, align 8
  %40 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.skl_clk_rate_cfg_table* @skl_get_rate_cfg(i32 %38, i32 %41)
  store %struct.skl_clk_rate_cfg_table* %42, %struct.skl_clk_rate_cfg_table** %6, align 8
  %43 = load %struct.skl_clk_rate_cfg_table*, %struct.skl_clk_rate_cfg_table** %6, align 8
  %44 = icmp ne %struct.skl_clk_rate_cfg_table* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %27
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %59

48:                                               ; preds = %27
  %49 = load %struct.skl_clk*, %struct.skl_clk** %4, align 8
  %50 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.skl_clk_rate_cfg_table*, %struct.skl_clk_rate_cfg_table** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @skl_send_clk_dma_control(i32 %53, %struct.skl_clk_rate_cfg_table* %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %48, %45, %25, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @skl_get_clk_type(i64) #1

declare dso_local i32 @skl_get_vbus_id(i64, i32) #1

declare dso_local %struct.skl_clk_rate_cfg_table* @skl_get_rate_cfg(i32, i32) #1

declare dso_local i32 @skl_send_clk_dma_control(i32, %struct.skl_clk_rate_cfg_table*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
