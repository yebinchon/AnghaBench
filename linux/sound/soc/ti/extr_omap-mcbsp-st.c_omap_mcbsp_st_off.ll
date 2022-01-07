; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_off.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i32)* }

@SSELCR = common dso_local global i32 0, align 4
@ST_SIDETONEEN = common dso_local global i32 0, align 4
@SIDETONEEN = common dso_local global i32 0, align 4
@SYSCONFIG = common dso_local global i32 0, align 4
@ST_AUTOIDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mcbsp*)* @omap_mcbsp_st_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcbsp_st_off(%struct.omap_mcbsp* %0) #0 {
  %2 = alloca %struct.omap_mcbsp*, align 8
  %3 = alloca i32, align 4
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %2, align 8
  %4 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %5 = load i32, i32* @SSELCR, align 4
  %6 = call i32 @MCBSP_ST_READ(%struct.omap_mcbsp* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %8 = load i32, i32* @SSELCR, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ST_SIDETONEEN, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = call i32 @MCBSP_ST_WRITE(%struct.omap_mcbsp* %7, i32 %8, i32 %12)
  %14 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %15 = load i32, i32* @SSELCR, align 4
  %16 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %18 = load i32, i32* @SSELCR, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SIDETONEEN, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %17, i32 %18, i32 %22)
  %24 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %25 = load i32, i32* @SYSCONFIG, align 4
  %26 = call i32 @MCBSP_ST_READ(%struct.omap_mcbsp* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %28 = load i32, i32* @SYSCONFIG, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ST_AUTOIDLE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @MCBSP_ST_WRITE(%struct.omap_mcbsp* %27, i32 %28, i32 %31)
  %33 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %34 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = icmp ne i32 (i32, i32)* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %1
  %40 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %41 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %46 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 %44(i32 %49, i32 0)
  br label %51

51:                                               ; preds = %39, %1
  ret void
}

declare dso_local i32 @MCBSP_ST_READ(%struct.omap_mcbsp*, i32) #1

declare dso_local i32 @MCBSP_ST_WRITE(%struct.omap_mcbsp*, i32, i32) #1

declare dso_local i32 @MCBSP_READ(%struct.omap_mcbsp*, i32) #1

declare dso_local i32 @MCBSP_WRITE(%struct.omap_mcbsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
