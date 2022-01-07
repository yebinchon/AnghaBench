; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_get_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_get_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_saif = type { i32, i64, i32, i32 }

@mxs_saif = common dso_local global %struct.mxs_saif** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@BM_SAIF_CTRL_SFTRST = common dso_local global i32 0, align 4
@SAIF_CTRL = common dso_local global i64 0, align 8
@MXS_CLR_ADDR = common dso_local global i64 0, align 8
@BM_SAIF_CTRL_CLKGATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"can not get mclk from a non-master saif\0A\00", align 1
@SAIF_STAT = common dso_local global i64 0, align 8
@BM_SAIF_STAT_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"error: busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BM_SAIF_CTRL_RUN = common dso_local global i32 0, align 4
@MXS_SET_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxs_saif_get_mclk(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mxs_saif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mxs_saif*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mxs_saif**, %struct.mxs_saif*** @mxs_saif, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mxs_saif*, %struct.mxs_saif** %12, i64 %14
  %16 = load %struct.mxs_saif*, %struct.mxs_saif** %15, align 8
  store %struct.mxs_saif* %16, %struct.mxs_saif** %8, align 8
  %17 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %18 = icmp ne %struct.mxs_saif* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %101

22:                                               ; preds = %3
  %23 = load i32, i32* @BM_SAIF_CTRL_SFTRST, align 4
  %24 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %25 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SAIF_CTRL, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* @MXS_CLR_ADDR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @__raw_writel(i32 %23, i64 %30)
  %32 = load i32, i32* @BM_SAIF_CTRL_CLKGATE, align 4
  %33 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %34 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SAIF_CTRL, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* @MXS_CLR_ADDR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @__raw_writel(i32 %32, i64 %39)
  %41 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %42 = call %struct.mxs_saif* @mxs_saif_get_master(%struct.mxs_saif* %41)
  store %struct.mxs_saif* %42, %struct.mxs_saif** %11, align 8
  %43 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %44 = load %struct.mxs_saif*, %struct.mxs_saif** %11, align 8
  %45 = icmp ne %struct.mxs_saif* %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %22
  %47 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %48 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %101

53:                                               ; preds = %22
  %54 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %55 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SAIF_STAT, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @__raw_readl(i64 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @BM_SAIF_STAT_BUSY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %53
  %65 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %66 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %101

71:                                               ; preds = %53
  %72 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %73 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @mxs_saif_set_clk(%struct.mxs_saif* %74, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %101

82:                                               ; preds = %71
  %83 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %84 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @clk_prepare_enable(i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %101

91:                                               ; preds = %82
  %92 = load i32, i32* @BM_SAIF_CTRL_RUN, align 4
  %93 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %94 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SAIF_CTRL, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i64, i64* @MXS_SET_ADDR, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @__raw_writel(i32 %92, i64 %99)
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %91, %89, %80, %64, %46, %19
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local %struct.mxs_saif* @mxs_saif_get_master(%struct.mxs_saif*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @mxs_saif_set_clk(%struct.mxs_saif*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
