; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_fir_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_fir_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i32 }

@SSELCR = common dso_local global i32 0, align 4
@ST_COEFFWREN = common dso_local global i32 0, align 4
@SFIRCR = common dso_local global i32 0, align 4
@ST_COEFFWRDONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"McBSP FIR load error!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mcbsp*, i32*)* @omap_mcbsp_st_fir_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcbsp_st_fir_write(%struct.omap_mcbsp* %0, i32* %1) #0 {
  %3 = alloca %struct.omap_mcbsp*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %8 = load i32, i32* @SSELCR, align 4
  %9 = call i32 @MCBSP_ST_READ(%struct.omap_mcbsp* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ST_COEFFWREN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %16 = load i32, i32* @SSELCR, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ST_COEFFWREN, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = call i32 @MCBSP_ST_WRITE(%struct.omap_mcbsp* %15, i32 %16, i32 %20)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %24 = load i32, i32* @SSELCR, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ST_COEFFWREN, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @MCBSP_ST_WRITE(%struct.omap_mcbsp* %23, i32 %24, i32 %27)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %41, %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 128
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %34 = load i32, i32* @SFIRCR, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MCBSP_ST_WRITE(%struct.omap_mcbsp* %33, i32 %34, i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %29

44:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  %45 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %46 = load i32, i32* @SSELCR, align 4
  %47 = call i32 @MCBSP_ST_READ(%struct.omap_mcbsp* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %59, %44
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ST_COEFFWRDONE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = icmp slt i32 %55, 1000
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi i1 [ false, %48 ], [ %56, %53 ]
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  %60 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %61 = load i32, i32* @SSELCR, align 4
  %62 = call i32 @MCBSP_ST_READ(%struct.omap_mcbsp* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %48

63:                                               ; preds = %57
  %64 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %65 = load i32, i32* @SSELCR, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @ST_COEFFWREN, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = call i32 @MCBSP_ST_WRITE(%struct.omap_mcbsp* %64, i32 %65, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 1000
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %75 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %73, %63
  ret void
}

declare dso_local i32 @MCBSP_ST_READ(%struct.omap_mcbsp*, i32) #1

declare dso_local i32 @MCBSP_ST_WRITE(%struct.omap_mcbsp*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
