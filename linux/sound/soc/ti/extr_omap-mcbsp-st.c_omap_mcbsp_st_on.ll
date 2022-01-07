; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_on.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_omap_mcbsp_st_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@SYSCONFIG = common dso_local global i32 0, align 4
@ST_AUTOIDLE = common dso_local global i32 0, align 4
@SSELCR = common dso_local global i32 0, align 4
@SIDETONEEN = common dso_local global i32 0, align 4
@ST_SIDETONEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mcbsp*)* @omap_mcbsp_st_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcbsp_st_on(%struct.omap_mcbsp* %0) #0 {
  %2 = alloca %struct.omap_mcbsp*, align 8
  %3 = alloca i32, align 4
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %2, align 8
  %4 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %5 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %9 = icmp ne i32 (i32, i32)* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %12 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %16 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %17 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 %15(i32 %20, i32 1)
  br label %22

22:                                               ; preds = %10, %1
  %23 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %24 = load i32, i32* @SYSCONFIG, align 4
  %25 = call i32 @MCBSP_ST_READ(%struct.omap_mcbsp* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %27 = load i32, i32* @SYSCONFIG, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ST_AUTOIDLE, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @MCBSP_ST_WRITE(%struct.omap_mcbsp* %26, i32 %27, i32 %31)
  %33 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %34 = load i32, i32* @SSELCR, align 4
  %35 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %37 = load i32, i32* @SSELCR, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @SIDETONEEN, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %36, i32 %37, i32 %40)
  %42 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %43 = load i32, i32* @SSELCR, align 4
  %44 = call i32 @MCBSP_ST_READ(%struct.omap_mcbsp* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %46 = load i32, i32* @SSELCR, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @ST_SIDETONEEN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @MCBSP_ST_WRITE(%struct.omap_mcbsp* %45, i32 %46, i32 %49)
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
