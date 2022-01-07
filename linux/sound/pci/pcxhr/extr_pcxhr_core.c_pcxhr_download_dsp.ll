; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_download_dsp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_download_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@PCXHR_DSP_ISR = common dso_local global i32 0, align 4
@PCXHR_ISR_HI08_TRDY = common dso_local global i32 0, align 4
@PCXHR_TIMEOUT_DSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"dsp loading error at position %d\0A\00", align 1
@PCXHR_DSP_TXH = common dso_local global i32 0, align 4
@PCXHR_DSP_TXM = common dso_local global i32 0, align 4
@PCXHR_DSP_TXL = common dso_local global i32 0, align 4
@PCXHR_WAIT_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, %struct.firmware*)* @pcxhr_download_dsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_download_dsp(%struct.pcxhr_mgr* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcxhr_mgr*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %11 = load %struct.firmware*, %struct.firmware** %5, align 8
  %12 = getelementptr inbounds %struct.firmware, %struct.firmware* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %129

18:                                               ; preds = %2
  %19 = load %struct.firmware*, %struct.firmware** %5, align 8
  %20 = getelementptr inbounds %struct.firmware, %struct.firmware* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = srem i32 %21, 3
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %129

27:                                               ; preds = %18
  %28 = load %struct.firmware*, %struct.firmware** %5, align 8
  %29 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @snd_BUG_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %129

39:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %123, %39
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.firmware*, %struct.firmware** %5, align 8
  %43 = getelementptr inbounds %struct.firmware, %struct.firmware* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %126

46:                                               ; preds = %40
  %47 = load %struct.firmware*, %struct.firmware** %5, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %9, align 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %46
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 16
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl i32 %64, 8
  %66 = add nsw i32 %60, %65
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = add nsw i32 %66, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %55
  %75 = load %struct.firmware*, %struct.firmware** %5, align 8
  %76 = getelementptr inbounds %struct.firmware, %struct.firmware* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 2
  %80 = mul i32 %79, 3
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %129

85:                                               ; preds = %74, %55
  br label %86

86:                                               ; preds = %85, %46
  %87 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %88 = load i32, i32* @PCXHR_DSP_ISR, align 4
  %89 = load i32, i32* @PCXHR_ISR_HI08_TRDY, align 4
  %90 = load i32, i32* @PCXHR_ISR_HI08_TRDY, align 4
  %91 = load i32, i32* @PCXHR_TIMEOUT_DSP, align 4
  %92 = call i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr* %87, i32 %88, i32 %89, i32 %90, i32 %91, i8* %10)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %86
  %96 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %97 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %129

103:                                              ; preds = %86
  %104 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %105 = load i32, i32* @PCXHR_DSP_TXH, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %104, i32 %105, i8 zeroext %108)
  %110 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %111 = load i32, i32* @PCXHR_DSP_TXM, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %110, i32 %111, i8 zeroext %114)
  %116 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %117 = load i32, i32* @PCXHR_DSP_TXL, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  %120 = load i8, i8* %119, align 1
  %121 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %116, i32 %117, i8 zeroext %120)
  %122 = call i32 (...) @cond_resched()
  br label %123

123:                                              ; preds = %103
  %124 = load i32, i32* %7, align 4
  %125 = add i32 %124, 3
  store i32 %125, i32* %7, align 4
  br label %40

126:                                              ; preds = %40
  %127 = load i32, i32* @PCXHR_WAIT_DEFAULT, align 4
  %128 = call i32 @msleep(i32 %127)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %126, %95, %82, %36, %24, %15
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PCXHR_OUTPB(%struct.pcxhr_mgr*, i32, i8 zeroext) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
