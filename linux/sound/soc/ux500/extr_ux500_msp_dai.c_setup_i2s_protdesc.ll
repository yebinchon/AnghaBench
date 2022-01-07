; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_dai.c_setup_i2s_protdesc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_dai.c_setup_i2s_protdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msp_protdesc = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@MSP_DUAL_PHASE = common dso_local global i8* null, align 8
@MSP_PHASE2_START_MODE_FSYNC = common dso_local global i8* null, align 8
@MSP_BTF_MS_BIT_FIRST = common dso_local global i8* null, align 8
@MSP_FSYNC_POL_ACT_LO = common dso_local global i32 0, align 4
@RFSPOL_SHIFT = common dso_local global i32 0, align 4
@MSP_FRAME_LEN_1 = common dso_local global i8* null, align 8
@MSP_ELEM_LEN_16 = common dso_local global i8* null, align 8
@MSP_RISING_EDGE = common dso_local global i32 0, align 4
@MSP_FALLING_EDGE = common dso_local global i32 0, align 4
@MSP_DELAY_0 = common dso_local global i8* null, align 8
@MSP_SWAP_NONE = common dso_local global i8* null, align 8
@MSP_COMPRESS_MODE_LINEAR = common dso_local global i32 0, align 4
@MSP_EXPAND_MODE_LINEAR = common dso_local global i32 0, align 4
@MSP_FSYNC_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msp_protdesc*)* @setup_i2s_protdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_i2s_protdesc(%struct.msp_protdesc* %0) #0 {
  %2 = alloca %struct.msp_protdesc*, align 8
  store %struct.msp_protdesc* %0, %struct.msp_protdesc** %2, align 8
  %3 = load i8*, i8** @MSP_DUAL_PHASE, align 8
  %4 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %5 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %4, i32 0, i32 24
  store i8* %3, i8** %5, align 8
  %6 = load i8*, i8** @MSP_DUAL_PHASE, align 8
  %7 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %8 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %7, i32 0, i32 23
  store i8* %6, i8** %8, align 8
  %9 = load i8*, i8** @MSP_PHASE2_START_MODE_FSYNC, align 8
  %10 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %11 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %10, i32 0, i32 22
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @MSP_PHASE2_START_MODE_FSYNC, align 8
  %13 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %14 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %13, i32 0, i32 21
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @MSP_BTF_MS_BIT_FIRST, align 8
  %16 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %17 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %16, i32 0, i32 20
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @MSP_BTF_MS_BIT_FIRST, align 8
  %19 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %20 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %19, i32 0, i32 19
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @MSP_FSYNC_POL_ACT_LO, align 4
  %22 = call i32 @MSP_FSYNC_POL(i32 %21)
  %23 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %24 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %23, i32 0, i32 18
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @MSP_FSYNC_POL_ACT_LO, align 4
  %26 = load i32, i32* @RFSPOL_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %29 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** @MSP_FRAME_LEN_1, align 8
  %31 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %32 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %31, i32 0, i32 17
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @MSP_FRAME_LEN_1, align 8
  %34 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %35 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %34, i32 0, i32 16
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @MSP_FRAME_LEN_1, align 8
  %37 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %38 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %37, i32 0, i32 15
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @MSP_FRAME_LEN_1, align 8
  %40 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %41 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %40, i32 0, i32 14
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @MSP_ELEM_LEN_16, align 8
  %43 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %44 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %43, i32 0, i32 13
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @MSP_ELEM_LEN_16, align 8
  %46 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %47 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %46, i32 0, i32 12
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @MSP_ELEM_LEN_16, align 8
  %49 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %50 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %49, i32 0, i32 11
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @MSP_ELEM_LEN_16, align 8
  %52 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %53 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %52, i32 0, i32 10
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @MSP_RISING_EDGE, align 4
  %55 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %56 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @MSP_FALLING_EDGE, align 4
  %58 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %59 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** @MSP_DELAY_0, align 8
  %61 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %62 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %61, i32 0, i32 7
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @MSP_DELAY_0, align 8
  %64 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %65 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @MSP_SWAP_NONE, align 8
  %67 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %68 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @MSP_SWAP_NONE, align 8
  %70 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %71 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @MSP_COMPRESS_MODE_LINEAR, align 4
  %73 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %74 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @MSP_EXPAND_MODE_LINEAR, align 4
  %76 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %77 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @MSP_FSYNC_IGNORE, align 4
  %79 = load %struct.msp_protdesc*, %struct.msp_protdesc** %2, align 8
  %80 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  ret i32 0
}

declare dso_local i32 @MSP_FSYNC_POL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
