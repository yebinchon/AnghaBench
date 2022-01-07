; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_dump_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_dump_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"**** McBSP%d regs ****\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"DRR2:  0x%04x\0A\00", align 1
@DRR2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"DRR1:  0x%04x\0A\00", align 1
@DRR1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"DXR2:  0x%04x\0A\00", align 1
@DXR2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"DXR1:  0x%04x\0A\00", align 1
@DXR1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"SPCR2: 0x%04x\0A\00", align 1
@SPCR2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"SPCR1: 0x%04x\0A\00", align 1
@SPCR1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"RCR2:  0x%04x\0A\00", align 1
@RCR2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"RCR1:  0x%04x\0A\00", align 1
@RCR1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"XCR2:  0x%04x\0A\00", align 1
@XCR2 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"XCR1:  0x%04x\0A\00", align 1
@XCR1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"SRGR2: 0x%04x\0A\00", align 1
@SRGR2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"SRGR1: 0x%04x\0A\00", align 1
@SRGR1 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"PCR0:  0x%04x\0A\00", align 1
@PCR0 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"***********************\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mcbsp*)* @omap_mcbsp_dump_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcbsp_dump_reg(%struct.omap_mcbsp* %0) #0 {
  %2 = alloca %struct.omap_mcbsp*, align 8
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %2, align 8
  %3 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %4 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %7 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i32, i8*, ...) @dev_dbg(i32 %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %11 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %14 = load i32, i32* @DRR2, align 4
  %15 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %13, i32 %14)
  %16 = call i32 (i32, i8*, ...) @dev_dbg(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %18 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %21 = load i32, i32* @DRR1, align 4
  %22 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %20, i32 %21)
  %23 = call i32 (i32, i8*, ...) @dev_dbg(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %25 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %28 = load i32, i32* @DXR2, align 4
  %29 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %27, i32 %28)
  %30 = call i32 (i32, i8*, ...) @dev_dbg(i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %32 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %35 = load i32, i32* @DXR1, align 4
  %36 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %34, i32 %35)
  %37 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %39 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %42 = load i32, i32* @SPCR2, align 4
  %43 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %41, i32 %42)
  %44 = call i32 (i32, i8*, ...) @dev_dbg(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %46 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %49 = load i32, i32* @SPCR1, align 4
  %50 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %48, i32 %49)
  %51 = call i32 (i32, i8*, ...) @dev_dbg(i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %50)
  %52 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %53 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %56 = load i32, i32* @RCR2, align 4
  %57 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %55, i32 %56)
  %58 = call i32 (i32, i8*, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %57)
  %59 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %60 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %63 = load i32, i32* @RCR1, align 4
  %64 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %62, i32 %63)
  %65 = call i32 (i32, i8*, ...) @dev_dbg(i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %64)
  %66 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %67 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %70 = load i32, i32* @XCR2, align 4
  %71 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %69, i32 %70)
  %72 = call i32 (i32, i8*, ...) @dev_dbg(i32 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %71)
  %73 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %74 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %77 = load i32, i32* @XCR1, align 4
  %78 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %76, i32 %77)
  %79 = call i32 (i32, i8*, ...) @dev_dbg(i32 %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %78)
  %80 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %81 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %84 = load i32, i32* @SRGR2, align 4
  %85 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %83, i32 %84)
  %86 = call i32 (i32, i8*, ...) @dev_dbg(i32 %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %85)
  %87 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %88 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %91 = load i32, i32* @SRGR1, align 4
  %92 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %90, i32 %91)
  %93 = call i32 (i32, i8*, ...) @dev_dbg(i32 %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %92)
  %94 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %95 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %98 = load i32, i32* @PCR0, align 4
  %99 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %97, i32 %98)
  %100 = call i32 (i32, i8*, ...) @dev_dbg(i32 %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %99)
  %101 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %102 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @dev_dbg(i32 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @MCBSP_READ(%struct.omap_mcbsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
