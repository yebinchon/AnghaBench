; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_put_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_put_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_saif = type { i64, i64, i32, i32 }

@mxs_saif = common dso_local global %struct.mxs_saif** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SAIF_STAT = common dso_local global i64 0, align 8
@BM_SAIF_STAT_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"error: busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BM_SAIF_CTRL_CLKGATE = common dso_local global i32 0, align 4
@SAIF_CTRL = common dso_local global i64 0, align 8
@MXS_SET_ADDR = common dso_local global i64 0, align 8
@BM_SAIF_CTRL_RUN = common dso_local global i32 0, align 4
@MXS_CLR_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxs_saif_put_mclk(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxs_saif*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.mxs_saif**, %struct.mxs_saif*** @mxs_saif, align 8
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.mxs_saif*, %struct.mxs_saif** %6, i64 %8
  %10 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  store %struct.mxs_saif* %10, %struct.mxs_saif** %4, align 8
  %11 = load %struct.mxs_saif*, %struct.mxs_saif** %4, align 8
  %12 = icmp ne %struct.mxs_saif* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %59

16:                                               ; preds = %1
  %17 = load %struct.mxs_saif*, %struct.mxs_saif** %4, align 8
  %18 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SAIF_STAT, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @__raw_readl(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @BM_SAIF_STAT_BUSY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load %struct.mxs_saif*, %struct.mxs_saif** %4, align 8
  %29 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %59

34:                                               ; preds = %16
  %35 = load %struct.mxs_saif*, %struct.mxs_saif** %4, align 8
  %36 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @clk_disable_unprepare(i32 %37)
  %39 = load i32, i32* @BM_SAIF_CTRL_CLKGATE, align 4
  %40 = load %struct.mxs_saif*, %struct.mxs_saif** %4, align 8
  %41 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SAIF_CTRL, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* @MXS_SET_ADDR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @__raw_writel(i32 %39, i64 %46)
  %48 = load i32, i32* @BM_SAIF_CTRL_RUN, align 4
  %49 = load %struct.mxs_saif*, %struct.mxs_saif** %4, align 8
  %50 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SAIF_CTRL, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* @MXS_CLR_ADDR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @__raw_writel(i32 %48, i64 %55)
  %57 = load %struct.mxs_saif*, %struct.mxs_saif** %4, align 8
  %58 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %34, %27, %13
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
