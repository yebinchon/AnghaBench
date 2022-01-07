; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_stream_run.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_stream_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@SKL_ADSP_REG_CL_SD_CTL = common dso_local global i32 0, align 4
@CL_SD_CTL_RUN_MASK = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [36 x i8] c"Failed to set Run bit=%d enable=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_dsp*, i32)* @skl_cldma_stream_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_cldma_stream_run(%struct.sst_dsp* %0, i32 %1) #0 {
  %3 = alloca %struct.sst_dsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %8 = load i32, i32* @SKL_ADSP_REG_CL_SD_CTL, align 4
  %9 = load i8, i8* @CL_SD_CTL_RUN_MASK, align 1
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @CL_SD_CTL_RUN(i32 %10)
  %12 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %7, i32 %8, i8 zeroext %9, i32 %11)
  %13 = call i32 @udelay(i32 3)
  store i32 300, i32* %6, align 4
  br label %14

14:                                               ; preds = %40, %2
  %15 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %16 = load i32, i32* @SKL_ADSP_REG_CL_SD_CTL, align 4
  %17 = call zeroext i8 @sst_dsp_shim_read(%struct.sst_dsp* %15, i32 %16)
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @CL_SD_CTL_RUN_MASK, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %18, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %5, align 1
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %44

30:                                               ; preds = %25, %14
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i8, i8* %5, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %44

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %37
  %39 = call i32 @udelay(i32 3)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %14, label %44

44:                                               ; preds = %40, %36, %29
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %49 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8, i8* %5, align 1
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 zeroext %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %44
  ret void
}

declare dso_local i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp*, i32, i8 zeroext, i32) #1

declare dso_local i32 @CL_SD_CTL_RUN(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i8 @sst_dsp_shim_read(%struct.sst_dsp*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
