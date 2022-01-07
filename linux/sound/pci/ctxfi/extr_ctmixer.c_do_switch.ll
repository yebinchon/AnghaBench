; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_do_switch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_do_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i64 (%struct.ct_atc*)*, %struct.ct_mixer* }
%struct.ct_mixer = type { i32 }
%struct.capabilities = type { i64 }

@SWH_CAPTURE_START = common dso_local global i32 0, align 4
@SWH_CAPTURE_END = common dso_local global i32 0, align 4
@MIXER_LINEIN_C_S = common dso_local global i32 0, align 4
@MIXER_MIC_C_S = common dso_local global i32 0, align 4
@MIXER_SPDIFI_C_S = common dso_local global i32 0, align 4
@MIXER_WAVEF_P_S = common dso_local global i32 0, align 4
@MIXER_WAVES_P_S = common dso_local global i32 0, align 4
@MIXER_WAVEC_P_S = common dso_local global i32 0, align 4
@MIXER_WAVER_P_S = common dso_local global i32 0, align 4
@MIXER_SPDIFO_P_S = common dso_local global i32 0, align 4
@MIXER_DIGITAL_IO_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ct_atc*, i32, i32)* @do_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_switch(%struct.ct_atc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ct_mixer*, align 8
  %8 = alloca %struct.capabilities, align 8
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %10 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %9, i32 0, i32 9
  %11 = load %struct.ct_mixer*, %struct.ct_mixer** %10, align 8
  store %struct.ct_mixer* %11, %struct.ct_mixer** %7, align 8
  %12 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %13 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %12, i32 0, i32 8
  %14 = load i64 (%struct.ct_atc*)*, i64 (%struct.ct_atc*)** %13, align 8
  %15 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %16 = call i64 %14(%struct.ct_atc* %15)
  %17 = getelementptr inbounds %struct.capabilities, %struct.capabilities* %8, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load i32, i32* @SWH_CAPTURE_START, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %3
  %22 = load i32, i32* @SWH_CAPTURE_END, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.ct_mixer*, %struct.ct_mixer** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @get_amixer_index(i32 %30)
  %32 = call i32 @ct_mixer_recording_select(%struct.ct_mixer* %29, i32 %31)
  br label %38

33:                                               ; preds = %25
  %34 = load %struct.ct_mixer*, %struct.ct_mixer** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @get_amixer_index(i32 %35)
  %37 = call i32 @ct_mixer_recording_unselect(%struct.ct_mixer* %34, i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  br label %39

39:                                               ; preds = %38, %21, %3
  %40 = getelementptr inbounds %struct.capabilities, %struct.capabilities* %8, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %65, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @MIXER_LINEIN_C_S, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @MIXER_MIC_C_S, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @do_line_mic_switch(%struct.ct_atc* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %60 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %59, i32 0, i32 7
  %61 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %60, align 8
  %62 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 %61(%struct.ct_atc* %62, i32 %63)
  br label %178

65:                                               ; preds = %47, %39
  %66 = getelementptr inbounds %struct.capabilities, %struct.capabilities* %8, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i32, i32* @MIXER_LINEIN_C_S, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %75 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %74, i32 0, i32 7
  %76 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %75, align 8
  %77 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 %76(%struct.ct_atc* %77, i32 %78)
  br label %177

80:                                               ; preds = %69, %65
  %81 = getelementptr inbounds %struct.capabilities, %struct.capabilities* %8, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i32, i32* @MIXER_MIC_C_S, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %90 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %89, i32 0, i32 6
  %91 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %90, align 8
  %92 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 %91(%struct.ct_atc* %92, i32 %93)
  br label %176

95:                                               ; preds = %84, %80
  %96 = load i32, i32* @MIXER_SPDIFI_C_S, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %101 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %100, i32 0, i32 5
  %102 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %101, align 8
  %103 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 %102(%struct.ct_atc* %103, i32 %104)
  br label %175

106:                                              ; preds = %95
  %107 = load i32, i32* @MIXER_WAVEF_P_S, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %112 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %111, i32 0, i32 4
  %113 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %112, align 8
  %114 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 %113(%struct.ct_atc* %114, i32 %115)
  br label %174

117:                                              ; preds = %106
  %118 = load i32, i32* @MIXER_WAVES_P_S, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %123 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %122, i32 0, i32 3
  %124 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %123, align 8
  %125 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 %124(%struct.ct_atc* %125, i32 %126)
  br label %173

128:                                              ; preds = %117
  %129 = load i32, i32* @MIXER_WAVEC_P_S, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %134 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %133, i32 0, i32 2
  %135 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %134, align 8
  %136 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 %135(%struct.ct_atc* %136, i32 %137)
  br label %172

139:                                              ; preds = %128
  %140 = load i32, i32* @MIXER_WAVER_P_S, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %145 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %144, i32 0, i32 1
  %146 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %145, align 8
  %147 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 %146(%struct.ct_atc* %147, i32 %148)
  br label %171

150:                                              ; preds = %139
  %151 = load i32, i32* @MIXER_SPDIFO_P_S, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %156 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %155, i32 0, i32 0
  %157 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %156, align 8
  %158 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 %157(%struct.ct_atc* %158, i32 %159)
  br label %170

161:                                              ; preds = %150
  %162 = load i32, i32* @MIXER_DIGITAL_IO_S, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @do_digit_io_switch(%struct.ct_atc* %166, i32 %167)
  br label %169

169:                                              ; preds = %165, %161
  br label %170

170:                                              ; preds = %169, %154
  br label %171

171:                                              ; preds = %170, %143
  br label %172

172:                                              ; preds = %171, %132
  br label %173

173:                                              ; preds = %172, %121
  br label %174

174:                                              ; preds = %173, %110
  br label %175

175:                                              ; preds = %174, %99
  br label %176

176:                                              ; preds = %175, %88
  br label %177

177:                                              ; preds = %176, %73
  br label %178

178:                                              ; preds = %177, %58
  ret void
}

declare dso_local i32 @ct_mixer_recording_select(%struct.ct_mixer*, i32) #1

declare dso_local i32 @get_amixer_index(i32) #1

declare dso_local i32 @ct_mixer_recording_unselect(%struct.ct_mixer*, i32) #1

declare dso_local i32 @do_line_mic_switch(%struct.ct_atc*, i32) #1

declare dso_local i32 @do_digit_io_switch(%struct.ct_atc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
