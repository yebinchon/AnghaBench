; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_get_clock_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_get_clock_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_rmh = type { i32*, i32 }

@PCXHR_FREQ_QUARTZ_48000 = common dso_local global i32 0, align 4
@PCXHR_FREQ_QUARTZ_24000 = common dso_local global i32 0, align 4
@PCXHR_FREQ_QUARTZ_12000 = common dso_local global i32 0, align 4
@PCXHR_FREQ_QUARTZ_32000 = common dso_local global i32 0, align 4
@PCXHR_FREQ_QUARTZ_16000 = common dso_local global i32 0, align 4
@PCXHR_FREQ_QUARTZ_8000 = common dso_local global i32 0, align 4
@PCXHR_FREQ_QUARTZ_44100 = common dso_local global i32 0, align 4
@PCXHR_FREQ_QUARTZ_22050 = common dso_local global i32 0, align 4
@PCXHR_FREQ_QUARTZ_11025 = common dso_local global i32 0, align 4
@PCXHR_FREQ_QUARTZ_192000 = common dso_local global i32 0, align 4
@PCXHR_FREQ_QUARTZ_96000 = common dso_local global i32 0, align 4
@PCXHR_FREQ_QUARTZ_176400 = common dso_local global i32 0, align 4
@PCXHR_FREQ_QUARTZ_88200 = common dso_local global i32 0, align 4
@PCXHR_FREQ_QUARTZ_128000 = common dso_local global i32 0, align 4
@PCXHR_FREQ_QUARTZ_64000 = common dso_local global i32 0, align 4
@PCXHR_FREQ_PLL = common dso_local global i32 0, align 4
@CMD_ACCESS_IO_WRITE = common dso_local global i32 0, align 4
@IO_NUM_REG_GENCLK = common dso_local global i32 0, align 4
@MASK_DSP_WORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"error CMD_ACCESS_IO_WRITE for PLL register : %x!\0A\00", align 1
@PCXHR_FREQ_WORD_CLOCK = common dso_local global i32 0, align 4
@PCXHR_FREQ_SYNC_AES = common dso_local global i32 0, align 4
@PCXHR_FREQ_AES_1 = common dso_local global i32 0, align 4
@PCXHR_FREQ_AES_2 = common dso_local global i32 0, align 4
@PCXHR_FREQ_AES_3 = common dso_local global i32 0, align 4
@PCXHR_FREQ_AES_4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, i32, i32*, i32*)* @pcxhr_get_clock_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_get_clock_reg(%struct.pcxhr_mgr* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcxhr_mgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pcxhr_rmh, align 8
  %14 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %17 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %106 [
    i32 129, label %19
    i32 128, label %94
    i32 130, label %96
    i32 134, label %98
    i32 133, label %100
    i32 132, label %102
    i32 131, label %104
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %51 [
    i32 48000, label %21
    i32 24000, label %23
    i32 12000, label %25
    i32 32000, label %27
    i32 16000, label %29
    i32 8000, label %31
    i32 44100, label %33
    i32 22050, label %35
    i32 11025, label %37
    i32 192000, label %39
    i32 96000, label %41
    i32 176400, label %43
    i32 88200, label %45
    i32 128000, label %47
    i32 64000, label %49
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @PCXHR_FREQ_QUARTZ_48000, align 4
  store i32 %22, i32* %10, align 4
  br label %93

23:                                               ; preds = %19
  %24 = load i32, i32* @PCXHR_FREQ_QUARTZ_24000, align 4
  store i32 %24, i32* %10, align 4
  br label %93

25:                                               ; preds = %19
  %26 = load i32, i32* @PCXHR_FREQ_QUARTZ_12000, align 4
  store i32 %26, i32* %10, align 4
  br label %93

27:                                               ; preds = %19
  %28 = load i32, i32* @PCXHR_FREQ_QUARTZ_32000, align 4
  store i32 %28, i32* %10, align 4
  br label %93

29:                                               ; preds = %19
  %30 = load i32, i32* @PCXHR_FREQ_QUARTZ_16000, align 4
  store i32 %30, i32* %10, align 4
  br label %93

31:                                               ; preds = %19
  %32 = load i32, i32* @PCXHR_FREQ_QUARTZ_8000, align 4
  store i32 %32, i32* %10, align 4
  br label %93

33:                                               ; preds = %19
  %34 = load i32, i32* @PCXHR_FREQ_QUARTZ_44100, align 4
  store i32 %34, i32* %10, align 4
  br label %93

35:                                               ; preds = %19
  %36 = load i32, i32* @PCXHR_FREQ_QUARTZ_22050, align 4
  store i32 %36, i32* %10, align 4
  br label %93

37:                                               ; preds = %19
  %38 = load i32, i32* @PCXHR_FREQ_QUARTZ_11025, align 4
  store i32 %38, i32* %10, align 4
  br label %93

39:                                               ; preds = %19
  %40 = load i32, i32* @PCXHR_FREQ_QUARTZ_192000, align 4
  store i32 %40, i32* %10, align 4
  br label %93

41:                                               ; preds = %19
  %42 = load i32, i32* @PCXHR_FREQ_QUARTZ_96000, align 4
  store i32 %42, i32* %10, align 4
  br label %93

43:                                               ; preds = %19
  %44 = load i32, i32* @PCXHR_FREQ_QUARTZ_176400, align 4
  store i32 %44, i32* %10, align 4
  br label %93

45:                                               ; preds = %19
  %46 = load i32, i32* @PCXHR_FREQ_QUARTZ_88200, align 4
  store i32 %46, i32* %10, align 4
  br label %93

47:                                               ; preds = %19
  %48 = load i32, i32* @PCXHR_FREQ_QUARTZ_128000, align 4
  store i32 %48, i32* %10, align 4
  br label %93

49:                                               ; preds = %19
  %50 = load i32, i32* @PCXHR_FREQ_QUARTZ_64000, align 4
  store i32 %50, i32* %10, align 4
  br label %93

51:                                               ; preds = %19
  %52 = load i32, i32* @PCXHR_FREQ_PLL, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @pcxhr_pll_freq_register(i32 %53, i32* %12, i32* %11)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %5, align 4
  br label %114

59:                                               ; preds = %51
  %60 = load i32, i32* @CMD_ACCESS_IO_WRITE, align 4
  %61 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %13, i32 %60)
  %62 = load i32, i32* @IO_NUM_REG_GENCLK, align 4
  %63 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %13, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @MASK_DSP_WORD, align 4
  %70 = and i32 %68, %69
  %71 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %13, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* %12, align 4
  %75 = lshr i32 %74, 24
  %76 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %13, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 %75, i32* %78, align 4
  %79 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %13, i32 0, i32 1
  store i32 3, i32* %79, align 8
  %80 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %81 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %80, %struct.pcxhr_rmh* %13)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %59
  %85 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %86 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %5, align 4
  br label %114

92:                                               ; preds = %59
  br label %93

93:                                               ; preds = %92, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21
  br label %109

94:                                               ; preds = %4
  %95 = load i32, i32* @PCXHR_FREQ_WORD_CLOCK, align 4
  store i32 %95, i32* %10, align 4
  br label %109

96:                                               ; preds = %4
  %97 = load i32, i32* @PCXHR_FREQ_SYNC_AES, align 4
  store i32 %97, i32* %10, align 4
  br label %109

98:                                               ; preds = %4
  %99 = load i32, i32* @PCXHR_FREQ_AES_1, align 4
  store i32 %99, i32* %10, align 4
  br label %109

100:                                              ; preds = %4
  %101 = load i32, i32* @PCXHR_FREQ_AES_2, align 4
  store i32 %101, i32* %10, align 4
  br label %109

102:                                              ; preds = %4
  %103 = load i32, i32* @PCXHR_FREQ_AES_3, align 4
  store i32 %103, i32* %10, align 4
  br label %109

104:                                              ; preds = %4
  %105 = load i32, i32* @PCXHR_FREQ_AES_4, align 4
  store i32 %105, i32* %10, align 4
  br label %109

106:                                              ; preds = %4
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %114

109:                                              ; preds = %104, %102, %100, %98, %96, %94, %93
  %110 = load i32, i32* %10, align 4
  %111 = load i32*, i32** %8, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32*, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %109, %106, %84, %57
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @pcxhr_pll_freq_register(i32, i32*, i32*) #1

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
