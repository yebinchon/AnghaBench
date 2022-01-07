; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap2_mcbsp_set_clks_src.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap2_mcbsp_set_clks_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i32, i32 }
%struct.clk = type { i32 }

@MCBSP_CLKS_PAD_SRC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"pad_fck\00", align 1
@MCBSP_CLKS_PRCM_SRC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"prcm_fck\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"CLKS: could not clk_get() %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"CLKS: could not clk_set_parent() to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_mcbsp*, i64)* @omap2_mcbsp_set_clks_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_mcbsp_set_clks_src(%struct.omap_mcbsp* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_mcbsp*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @MCBSP_CLKS_PAD_SRC, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %22

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @MCBSP_CLKS_PRCM_SRC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %67

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %12
  %23 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %4, align 8
  %24 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call %struct.clk* @clk_get(i32 %25, i8* %26)
  store %struct.clk* %27, %struct.clk** %6, align 8
  %28 = load %struct.clk*, %struct.clk** %6, align 8
  %29 = call i64 @IS_ERR(%struct.clk* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %4, align 8
  %33 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %67

39:                                               ; preds = %22
  %40 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %4, align 8
  %41 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pm_runtime_put_sync(i32 %42)
  %44 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %4, align 8
  %45 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.clk*, %struct.clk** %6, align 8
  %48 = call i32 @clk_set_parent(i32 %46, %struct.clk* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %39
  %52 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %4, align 8
  %53 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load %struct.clk*, %struct.clk** %6, align 8
  %58 = call i32 @clk_put(%struct.clk* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %67

60:                                               ; preds = %39
  %61 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %4, align 8
  %62 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pm_runtime_get_sync(i32 %63)
  %65 = load %struct.clk*, %struct.clk** %6, align 8
  %66 = call i32 @clk_put(%struct.clk* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %51, %31, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.clk* @clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @clk_set_parent(i32, %struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
