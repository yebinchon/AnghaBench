; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_send_it_dsp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_send_it_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCXHR_MASK_IT_MANAGE_HF5 = common dso_local global i32 0, align 4
@PCXHR_PLX_MBOX0 = common dso_local global i32 0, align 4
@PCXHR_MBOX0_HF5 = common dso_local global i32 0, align 4
@PCXHR_MASK_IT_NO_HF0_HF1 = common dso_local global i32 0, align 4
@PCXHR_ICR_HI08_RREQ = common dso_local global i8 0, align 1
@PCXHR_ICR_HI08_TREQ = common dso_local global i8 0, align 1
@PCXHR_ICR_HI08_HDRQ = common dso_local global i8 0, align 1
@PCXHR_MASK_IT_HF0 = common dso_local global i32 0, align 4
@PCXHR_ICR_HI08_HF0 = common dso_local global i8 0, align 1
@PCXHR_MASK_IT_HF1 = common dso_local global i32 0, align 4
@PCXHR_ICR_HI08_HF1 = common dso_local global i8 0, align 1
@PCXHR_DSP_ICR = common dso_local global i32 0, align 4
@PCXHR_MASK_EXTRA_INFO = common dso_local global i32 0, align 4
@PCXHR_CVR_HI08_HC = common dso_local global i32 0, align 4
@PCXHR_DSP_CVR = common dso_local global i32 0, align 4
@PCXHR_MASK_IT_WAIT = common dso_local global i32 0, align 4
@PCXHR_WAIT_IT = common dso_local global i32 0, align 4
@PCXHR_MASK_IT_WAIT_EXTRA = common dso_local global i32 0, align 4
@PCXHR_WAIT_IT_EXTRA = common dso_local global i32 0, align 4
@PCXHR_TIMEOUT_DSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pcxhr_send_it_dsp : TIMEOUT CVR\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"pcxhr_send_it_dsp : TIMEOUT HF5\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, i32, i32)* @pcxhr_send_it_dsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_send_it_dsp(%struct.pcxhr_mgr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcxhr_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PCXHR_MASK_IT_MANAGE_HF5, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %16 = load i32, i32* @PCXHR_PLX_MBOX0, align 4
  %17 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %18 = load i32, i32* @PCXHR_PLX_MBOX0, align 4
  %19 = call i32 @PCXHR_INPL(%struct.pcxhr_mgr* %17, i32 %18)
  %20 = load i32, i32* @PCXHR_MBOX0_HF5, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @PCXHR_OUTPL(%struct.pcxhr_mgr* %15, i32 %16, i32 %22)
  br label %24

24:                                               ; preds = %14, %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PCXHR_MASK_IT_NO_HF0_HF1, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  %30 = load i8, i8* @PCXHR_ICR_HI08_RREQ, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @PCXHR_ICR_HI08_TREQ, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %31, %33
  %35 = load i8, i8* @PCXHR_ICR_HI08_HDRQ, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %34, %36
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %9, align 1
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PCXHR_MASK_IT_HF0, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %29
  %44 = load i8, i8* @PCXHR_ICR_HI08_HF0, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %9, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %9, align 1
  br label %50

50:                                               ; preds = %43, %29
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @PCXHR_MASK_IT_HF1, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i8, i8* @PCXHR_ICR_HI08_HF1, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* %9, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %59, %57
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %9, align 1
  br label %62

62:                                               ; preds = %55, %50
  %63 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %64 = load i32, i32* @PCXHR_DSP_ICR, align 4
  %65 = load i8, i8* %9, align 1
  %66 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %63, i32 %64, i8 zeroext %65)
  br label %67

67:                                               ; preds = %62, %24
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @PCXHR_MASK_EXTRA_INFO, align 4
  %70 = and i32 %68, %69
  %71 = lshr i32 %70, 1
  %72 = load i32, i32* @PCXHR_CVR_HI08_HC, align 4
  %73 = or i32 %71, %72
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %9, align 1
  %75 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %76 = load i32, i32* @PCXHR_DSP_CVR, align 4
  %77 = load i8, i8* %9, align 1
  %78 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %75, i32 %76, i8 zeroext %77)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @PCXHR_MASK_IT_WAIT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %67
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @PCXHR_WAIT_IT, align 4
  %88 = call i32 @mdelay(i32 %87)
  br label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @PCXHR_WAIT_IT, align 4
  %91 = call i32 @msleep(i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %67
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @PCXHR_MASK_IT_WAIT_EXTRA, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @PCXHR_WAIT_IT_EXTRA, align 4
  %103 = call i32 @mdelay(i32 %102)
  br label %107

104:                                              ; preds = %98
  %105 = load i32, i32* @PCXHR_WAIT_IT, align 4
  %106 = call i32 @msleep(i32 %105)
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %93
  %109 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %110 = load i32, i32* @PCXHR_DSP_CVR, align 4
  %111 = load i32, i32* @PCXHR_CVR_HI08_HC, align 4
  %112 = load i32, i32* @PCXHR_TIMEOUT_DSP, align 4
  %113 = call i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr* %109, i32 %110, i32 %111, i32 0, i32 %112, i8* %9)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %118 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %4, align 4
  br label %146

123:                                              ; preds = %108
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @PCXHR_MASK_IT_MANAGE_HF5, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %123
  %129 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %130 = load i32, i32* @PCXHR_PLX_MBOX0, align 4
  %131 = load i32, i32* @PCXHR_MBOX0_HF5, align 4
  %132 = load i32, i32* @PCXHR_MBOX0_HF5, align 4
  %133 = load i32, i32* @PCXHR_TIMEOUT_DSP, align 4
  %134 = call i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr* %129, i32 %130, i32 %131, i32 %132, i32 %133, i8* %9)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %128
  %138 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %139 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = call i32 @dev_err(i32* %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %4, align 4
  br label %146

144:                                              ; preds = %128
  br label %145

145:                                              ; preds = %144, %123
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %137, %116
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @PCXHR_OUTPL(%struct.pcxhr_mgr*, i32, i32) #1

declare dso_local i32 @PCXHR_INPL(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @PCXHR_OUTPB(%struct.pcxhr_mgr*, i32, i8 zeroext) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
