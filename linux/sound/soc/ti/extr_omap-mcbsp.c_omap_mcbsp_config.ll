; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.omap_mcbsp_reg_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Configuring McBSP%d  phys_base: 0x%08lx\0A\00", align 1
@SPCR2 = common dso_local global i32 0, align 4
@SPCR1 = common dso_local global i32 0, align 4
@RCR2 = common dso_local global i32 0, align 4
@RCR1 = common dso_local global i32 0, align 4
@XCR2 = common dso_local global i32 0, align 4
@XCR1 = common dso_local global i32 0, align 4
@SRGR2 = common dso_local global i32 0, align 4
@SRGR1 = common dso_local global i32 0, align 4
@MCR2 = common dso_local global i32 0, align 4
@MCR1 = common dso_local global i32 0, align 4
@PCR0 = common dso_local global i32 0, align 4
@XCCR = common dso_local global i32 0, align 4
@RCCR = common dso_local global i32 0, align 4
@WAKEUPEN = common dso_local global i32 0, align 4
@XRDYEN = common dso_local global i32 0, align 4
@RRDYEN = common dso_local global i32 0, align 4
@IRQEN = common dso_local global i32 0, align 4
@RSYNCERREN = common dso_local global i32 0, align 4
@XSYNCERREN = common dso_local global i32 0, align 4
@RUNDFLEN = common dso_local global i32 0, align 4
@ROVFLEN = common dso_local global i32 0, align 4
@XUNDFLEN = common dso_local global i32 0, align 4
@XOVFLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mcbsp*, %struct.omap_mcbsp_reg_cfg*)* @omap_mcbsp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcbsp_config(%struct.omap_mcbsp* %0, %struct.omap_mcbsp_reg_cfg* %1) #0 {
  %3 = alloca %struct.omap_mcbsp*, align 8
  %4 = alloca %struct.omap_mcbsp_reg_cfg*, align 8
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %3, align 8
  store %struct.omap_mcbsp_reg_cfg* %1, %struct.omap_mcbsp_reg_cfg** %4, align 8
  %5 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %6 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %9 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %12 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %16 = load i32, i32* @SPCR2, align 4
  %17 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %4, align 8
  %18 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %15, i32 %16, i32 %19)
  %21 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %22 = load i32, i32* @SPCR1, align 4
  %23 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %4, align 8
  %24 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %21, i32 %22, i32 %25)
  %27 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %28 = load i32, i32* @RCR2, align 4
  %29 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %4, align 8
  %30 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %27, i32 %28, i32 %31)
  %33 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %34 = load i32, i32* @RCR1, align 4
  %35 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %4, align 8
  %36 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %33, i32 %34, i32 %37)
  %39 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %40 = load i32, i32* @XCR2, align 4
  %41 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %4, align 8
  %42 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %39, i32 %40, i32 %43)
  %45 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %46 = load i32, i32* @XCR1, align 4
  %47 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %4, align 8
  %48 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %45, i32 %46, i32 %49)
  %51 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %52 = load i32, i32* @SRGR2, align 4
  %53 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %4, align 8
  %54 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %51, i32 %52, i32 %55)
  %57 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %58 = load i32, i32* @SRGR1, align 4
  %59 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %4, align 8
  %60 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %57, i32 %58, i32 %61)
  %63 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %64 = load i32, i32* @MCR2, align 4
  %65 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %4, align 8
  %66 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %63, i32 %64, i32 %67)
  %69 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %70 = load i32, i32* @MCR1, align 4
  %71 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %4, align 8
  %72 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %69, i32 %70, i32 %73)
  %75 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %76 = load i32, i32* @PCR0, align 4
  %77 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %4, align 8
  %78 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %75, i32 %76, i32 %79)
  %81 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %82 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %2
  %88 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %89 = load i32, i32* @XCCR, align 4
  %90 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %4, align 8
  %91 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %88, i32 %89, i32 %92)
  %94 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %95 = load i32, i32* @RCCR, align 4
  %96 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %4, align 8
  %97 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %96, i32 0, i32 12
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %94, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %87, %2
  %101 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %102 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %109 = load i32, i32* @WAKEUPEN, align 4
  %110 = load i32, i32* @XRDYEN, align 4
  %111 = load i32, i32* @RRDYEN, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %108, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %107, %100
  %115 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %116 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %114
  %120 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %121 = load i32, i32* @IRQEN, align 4
  %122 = load i32, i32* @RSYNCERREN, align 4
  %123 = load i32, i32* @XSYNCERREN, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @RUNDFLEN, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @ROVFLEN, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @XUNDFLEN, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @XOVFLEN, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %120, i32 %121, i32 %132)
  br label %134

134:                                              ; preds = %119, %114
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @MCBSP_WRITE(%struct.omap_mcbsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
