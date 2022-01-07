; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_kcontrols_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_kcontrols_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.ct_mixer = type { %struct.ct_atc* }
%struct.ct_atc = type { i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, void (%struct.capabilities*, %struct.ct_atc*)* }
%struct.capabilities = type { i64, i64, i64, i64 }

@VOL_MIXER_START = common dso_local global i32 0, align 4
@VOL_MIXER_END = common dso_local global i32 0, align 4
@ct_kcontrol_init_table = common dso_local global %struct.TYPE_11__* null, align 8
@vol_ctl = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@MIXER_DIGITAL_IO_S = common dso_local global i64 0, align 8
@SWH_MIXER_START = common dso_local global i32 0, align 4
@SWH_MIXER_END = common dso_local global i32 0, align 4
@swh_ctl = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@iec958_mask_ctl = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@iec958_default_ctl = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@iec958_ctl = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@output_ctl = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@mic_source_ctl = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@MIXER_WAVEF_P_S = common dso_local global i32 0, align 4
@MIXER_WAVES_P_S = common dso_local global i32 0, align 4
@MIXER_WAVEC_P_S = common dso_local global i32 0, align 4
@MIXER_WAVER_P_S = common dso_local global i32 0, align 4
@MIXER_SPDIFO_P_S = common dso_local global i32 0, align 4
@MIXER_PCM_C_S = common dso_local global i32 0, align 4
@MIXER_LINEIN_C_S = common dso_local global i32 0, align 4
@MIXER_SPDIFI_C_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_mixer*)* @ct_mixer_kcontrols_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_mixer_kcontrols_create(%struct.ct_mixer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ct_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ct_atc*, align 8
  %6 = alloca %struct.capabilities, align 8
  %7 = alloca i32, align 4
  store %struct.ct_mixer* %0, %struct.ct_mixer** %3, align 8
  %8 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %9 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %8, i32 0, i32 0
  %10 = load %struct.ct_atc*, %struct.ct_atc** %9, align 8
  store %struct.ct_atc* %10, %struct.ct_atc** %5, align 8
  %11 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %12 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %11, i32 0, i32 8
  %13 = load void (%struct.capabilities*, %struct.ct_atc*)*, void (%struct.capabilities*, %struct.ct_atc*)** %12, align 8
  %14 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  call void %13(%struct.capabilities* sret %6, %struct.ct_atc* %14)
  %15 = load i32, i32* @VOL_MIXER_START, align 4
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %45, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @VOL_MIXER_END, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ct_kcontrol_init_table, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ct_kcontrol_init_table, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vol_ctl, i32 0, i32 1), align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vol_ctl, i32 0, i32 0), align 8
  %37 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %38 = call i32 @ct_mixer_kcontrol_new(%struct.ct_mixer* %37, %struct.TYPE_10__* @vol_ctl)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %203

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %20
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %16

48:                                               ; preds = %16
  %49 = getelementptr inbounds %struct.capabilities, %struct.capabilities* %6, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ct_kcontrol_init_table, align 8
  %52 = load i64, i64* @MIXER_DIGITAL_IO_S, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  store i64 %50, i64* %54, align 8
  %55 = load i32, i32* @SWH_MIXER_START, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %85, %48
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @SWH_MIXER_END, align 4
  %59 = icmp ule i32 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %56
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ct_kcontrol_init_table, align 8
  %62 = load i32, i32* %4, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %60
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ct_kcontrol_init_table, align 8
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @swh_ctl, i32 0, i32 1), align 8
  %75 = load i32, i32* %4, align 4
  %76 = zext i32 %75 to i64
  store i64 %76, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @swh_ctl, i32 0, i32 0), align 8
  %77 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %78 = call i32 @ct_mixer_kcontrol_new(%struct.ct_mixer* %77, %struct.TYPE_10__* @swh_ctl)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %203

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %60
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %4, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %56

88:                                               ; preds = %56
  %89 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %90 = call i32 @ct_mixer_kcontrol_new(%struct.ct_mixer* %89, %struct.TYPE_10__* @iec958_mask_ctl)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %203

95:                                               ; preds = %88
  %96 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %97 = call i32 @ct_mixer_kcontrol_new(%struct.ct_mixer* %96, %struct.TYPE_10__* @iec958_default_ctl)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %203

102:                                              ; preds = %95
  %103 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %104 = call i32 @ct_mixer_kcontrol_new(%struct.ct_mixer* %103, %struct.TYPE_10__* @iec958_ctl)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %203

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.capabilities, %struct.capabilities* %6, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %115 = call i32 @ct_mixer_kcontrol_new(%struct.ct_mixer* %114, %struct.TYPE_10__* @output_ctl)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %2, align 4
  br label %203

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120, %109
  %122 = getelementptr inbounds %struct.capabilities, %struct.capabilities* %6, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %127 = call i32 @ct_mixer_kcontrol_new(%struct.ct_mixer* %126, %struct.TYPE_10__* @mic_source_ctl)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %2, align 4
  br label %203

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132, %121
  %134 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %135 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %134, i32 0, i32 7
  %136 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %135, align 8
  %137 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %138 = call i32 %136(%struct.ct_atc* %137, i32 1)
  %139 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %140 = load i32, i32* @MIXER_WAVEF_P_S, align 4
  %141 = call i32 @set_switch_state(%struct.ct_mixer* %139, i32 %140, i32 1)
  %142 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %143 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %142, i32 0, i32 6
  %144 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %143, align 8
  %145 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %146 = call i32 %144(%struct.ct_atc* %145, i32 0)
  %147 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %148 = load i32, i32* @MIXER_WAVES_P_S, align 4
  %149 = call i32 @set_switch_state(%struct.ct_mixer* %147, i32 %148, i32 0)
  %150 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %151 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %150, i32 0, i32 5
  %152 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %151, align 8
  %153 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %154 = call i32 %152(%struct.ct_atc* %153, i32 0)
  %155 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %156 = load i32, i32* @MIXER_WAVEC_P_S, align 4
  %157 = call i32 @set_switch_state(%struct.ct_mixer* %155, i32 %156, i32 0)
  %158 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %159 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %158, i32 0, i32 4
  %160 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %159, align 8
  %161 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %162 = call i32 %160(%struct.ct_atc* %161, i32 0)
  %163 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %164 = load i32, i32* @MIXER_WAVER_P_S, align 4
  %165 = call i32 @set_switch_state(%struct.ct_mixer* %163, i32 %164, i32 0)
  %166 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %167 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %166, i32 0, i32 3
  %168 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %167, align 8
  %169 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %170 = call i32 %168(%struct.ct_atc* %169, i32 0)
  %171 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %172 = load i32, i32* @MIXER_SPDIFO_P_S, align 4
  %173 = call i32 @set_switch_state(%struct.ct_mixer* %171, i32 %172, i32 0)
  %174 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %175 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %174, i32 0, i32 2
  %176 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %175, align 8
  %177 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %178 = call i32 %176(%struct.ct_atc* %177, i32 0)
  %179 = getelementptr inbounds %struct.capabilities, %struct.capabilities* %6, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %133
  %183 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %184 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %183, i32 0, i32 1
  %185 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %184, align 8
  %186 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %187 = call i32 %185(%struct.ct_atc* %186, i32 0)
  br label %188

188:                                              ; preds = %182, %133
  %189 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %190 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %189, i32 0, i32 0
  %191 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %190, align 8
  %192 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %193 = call i32 %191(%struct.ct_atc* %192, i32 0)
  %194 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %195 = load i32, i32* @MIXER_PCM_C_S, align 4
  %196 = call i32 @set_switch_state(%struct.ct_mixer* %194, i32 %195, i32 0)
  %197 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %198 = load i32, i32* @MIXER_LINEIN_C_S, align 4
  %199 = call i32 @set_switch_state(%struct.ct_mixer* %197, i32 %198, i32 0)
  %200 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %201 = load i32, i32* @MIXER_SPDIFI_C_S, align 4
  %202 = call i32 @set_switch_state(%struct.ct_mixer* %200, i32 %201, i32 0)
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %188, %130, %118, %107, %100, %93, %81, %41
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @ct_mixer_kcontrol_new(%struct.ct_mixer*, %struct.TYPE_10__*) #1

declare dso_local i32 @set_switch_state(%struct.ct_mixer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
