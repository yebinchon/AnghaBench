; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_mcasp_i2s_hw_param.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_mcasp_i2s_hw_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcasp = type { i32, i32*, i32, i32 }

@DAVINCI_MCASP_ACLKXCTL_REG = common dso_local global i32 0, align 4
@TX_ASYNC = common dso_local global i32 0, align 4
@TXSEL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@DAVINCI_MCASP_TXTDM_REG = common dso_local global i32 0, align 4
@DAVINCI_MCASP_TXFMT_REG = common dso_local global i32 0, align 4
@TXORD = common dso_local global i32 0, align 4
@DAVINCI_MCASP_TXFMCTL_REG = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@DAVINCI_MCASP_RXTDM_REG = common dso_local global i32 0, align 4
@DAVINCI_MCASP_RXFMT_REG = common dso_local global i32 0, align 4
@RXORD = common dso_local global i32 0, align 4
@DAVINCI_MCASP_RXFMCTL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.davinci_mcasp*, i32, i32)* @mcasp_i2s_hw_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcasp_i2s_hw_param(%struct.davinci_mcasp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.davinci_mcasp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.davinci_mcasp* %0, %struct.davinci_mcasp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %14 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %17 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %3
  %25 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %26 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @hweight32(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %33, %34
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %8, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %24
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %24
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %71, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 1, %49
  %51 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %52 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %50, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 1, %61
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %8, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %74

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %44

74:                                               ; preds = %68, %44
  br label %102

75:                                               ; preds = %3
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %76, %77
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %9, align 4
  %81 = sdiv i32 %79, %80
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %8, align 4
  br label %88

86:                                               ; preds = %75
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %86, %84
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %98, %88
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = shl i32 1, %94
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %89

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %74
  %103 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %104 = load i32, i32* @DAVINCI_MCASP_ACLKXCTL_REG, align 4
  %105 = load i32, i32* @TX_ASYNC, align 4
  %106 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %103, i32 %104, i32 %105)
  %107 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %108 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %102
  %112 = load i32, i32* @TXSEL, align 4
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %111, %102
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %113
  %118 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %119 = load i32, i32* @DAVINCI_MCASP_TXTDM_REG, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @mcasp_set_reg(%struct.davinci_mcasp* %118, i32 %119, i32 %120)
  %122 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %123 = load i32, i32* @DAVINCI_MCASP_TXFMT_REG, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @TXORD, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %122, i32 %123, i32 %126)
  %128 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %129 = load i32, i32* @DAVINCI_MCASP_TXFMCTL_REG, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @FSXMOD(i32 %130)
  %132 = call i32 @FSXMOD(i32 511)
  %133 = call i32 @mcasp_mod_bits(%struct.davinci_mcasp* %128, i32 %129, i32 %131, i32 %132)
  br label %172

134:                                              ; preds = %113
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %171

138:                                              ; preds = %134
  %139 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %140 = load i32, i32* @DAVINCI_MCASP_RXTDM_REG, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @mcasp_set_reg(%struct.davinci_mcasp* %139, i32 %140, i32 %141)
  %143 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %144 = load i32, i32* @DAVINCI_MCASP_RXFMT_REG, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @RXORD, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %143, i32 %144, i32 %147)
  %149 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %150 = load i32, i32* @DAVINCI_MCASP_RXFMCTL_REG, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @FSRMOD(i32 %151)
  %153 = call i32 @FSRMOD(i32 511)
  %154 = call i32 @mcasp_mod_bits(%struct.davinci_mcasp* %149, i32 %150, i32 %152, i32 %153)
  %155 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %156 = call i64 @mcasp_is_synchronous(%struct.davinci_mcasp* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %138
  %159 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %160 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %158
  %164 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %165 = load i32, i32* @DAVINCI_MCASP_TXFMCTL_REG, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @FSXMOD(i32 %166)
  %168 = call i32 @FSXMOD(i32 511)
  %169 = call i32 @mcasp_mod_bits(%struct.davinci_mcasp* %164, i32 %165, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %163, %158, %138
  br label %171

171:                                              ; preds = %170, %134
  br label %172

172:                                              ; preds = %171, %117
  ret i32 0
}

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @mcasp_clr_bits(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i32 @mcasp_set_reg(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i32 @mcasp_set_bits(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i32 @mcasp_mod_bits(%struct.davinci_mcasp*, i32, i32, i32) #1

declare dso_local i32 @FSXMOD(i32) #1

declare dso_local i32 @FSRMOD(i32) #1

declare dso_local i64 @mcasp_is_synchronous(%struct.davinci_mcasp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
