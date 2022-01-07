; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_chgain.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_chgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { %struct.omap_mcbsp_st_data* }
%struct.omap_mcbsp_st_data = type { i32, i32 }

@SSELCR = common dso_local global i32 0, align 4
@SGAINCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mcbsp*)* @omap_mcbsp_st_chgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcbsp_st_chgain(%struct.omap_mcbsp* %0) #0 {
  %2 = alloca %struct.omap_mcbsp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_mcbsp_st_data*, align 8
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %2, align 8
  %5 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %6 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %5, i32 0, i32 0
  %7 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %6, align 8
  store %struct.omap_mcbsp_st_data* %7, %struct.omap_mcbsp_st_data** %4, align 8
  %8 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %9 = load i32, i32* @SSELCR, align 4
  %10 = call i32 @MCBSP_ST_READ(%struct.omap_mcbsp* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %12 = load i32, i32* @SGAINCR, align 4
  %13 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %4, align 8
  %14 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ST_CH0GAIN(i32 %15)
  %17 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %4, align 8
  %18 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ST_CH1GAIN(i32 %19)
  %21 = or i32 %16, %20
  %22 = call i32 @MCBSP_ST_WRITE(%struct.omap_mcbsp* %11, i32 %12, i32 %21)
  ret void
}

declare dso_local i32 @MCBSP_ST_READ(%struct.omap_mcbsp*, i32) #1

declare dso_local i32 @MCBSP_ST_WRITE(%struct.omap_mcbsp*, i32, i32) #1

declare dso_local i32 @ST_CH0GAIN(i32) #1

declare dso_local i32 @ST_CH1GAIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
