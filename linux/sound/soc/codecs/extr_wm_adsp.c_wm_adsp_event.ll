; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_dapm_widget = type { i64, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm_adsp = type { i64, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*, i32)*, i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)* }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error configuring MPU: %d\0A\00", align 1
@wm_adsp_fw = common dso_local global %struct.TYPE_4__* null, align 8
@WM_ADSP_FW_EVENT_SHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Execution stopped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_adsp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm_adsp*, align 8
  %10 = alloca %struct.wm_adsp*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %17 = call %struct.wm_adsp* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.wm_adsp* %17, %struct.wm_adsp** %9, align 8
  %18 = load %struct.wm_adsp*, %struct.wm_adsp** %9, align 8
  %19 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %18, i64 %21
  store %struct.wm_adsp* %22, %struct.wm_adsp** %10, align 8
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %217 [
    i32 129, label %24
    i32 128, label %129
  ]

24:                                               ; preds = %3
  %25 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %26 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %25, i32 0, i32 7
  %27 = call i32 @flush_work(i32* %26)
  %28 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %29 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %28, i32 0, i32 3
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %32 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  br label %219

38:                                               ; preds = %24
  %39 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %40 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %42, align 8
  %44 = icmp ne i32 (%struct.wm_adsp*)* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %47 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %46, i32 0, i32 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %49, align 8
  %51 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %52 = call i32 %50(%struct.wm_adsp* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %219

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %38
  %58 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %59 = call i32 @wm_coeff_sync_controls(%struct.wm_adsp* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %219

63:                                               ; preds = %57
  %64 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %65 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %64, i32 0, i32 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32 (%struct.wm_adsp*, i32)*, i32 (%struct.wm_adsp*, i32)** %67, align 8
  %69 = icmp ne i32 (%struct.wm_adsp*, i32)* %68, null
  br i1 %69, label %70, label %88

70:                                               ; preds = %63
  %71 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %72 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %71, i32 0, i32 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32 (%struct.wm_adsp*, i32)*, i32 (%struct.wm_adsp*, i32)** %74, align 8
  %76 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %77 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %78 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 %75(%struct.wm_adsp* %76, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %70
  %84 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @adsp_err(%struct.wm_adsp* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %219

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87, %63
  %89 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %90 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %89, i32 0, i32 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %92, align 8
  %94 = icmp ne i32 (%struct.wm_adsp*)* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %97 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %96, i32 0, i32 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %99, align 8
  %101 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %102 = call i32 %100(%struct.wm_adsp* %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %219

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106, %88
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm_adsp_fw, align 8
  %109 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %110 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %107
  %117 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %118 = call i32 @wm_adsp_buffer_init(%struct.wm_adsp* %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %219

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %107
  %124 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %125 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %124, i32 0, i32 1
  store i32 1, i32* %125, align 8
  %126 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %127 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %126, i32 0, i32 3
  %128 = call i32 @mutex_unlock(i32* %127)
  br label %218

129:                                              ; preds = %3
  %130 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %131 = load i32, i32* @WM_ADSP_FW_EVENT_SHUTDOWN, align 4
  %132 = call i32 @wm_adsp_signal_event_controls(%struct.wm_adsp* %130, i32 %131)
  %133 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %134 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %133, i32 0, i32 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 6
  %137 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %136, align 8
  %138 = icmp ne i32 (%struct.wm_adsp*)* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %129
  %140 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %141 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %140, i32 0, i32 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 6
  %144 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %143, align 8
  %145 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %146 = call i32 %144(%struct.wm_adsp* %145)
  br label %147

147:                                              ; preds = %139, %129
  %148 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %149 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %148, i32 0, i32 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 5
  %152 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %151, align 8
  %153 = icmp ne i32 (%struct.wm_adsp*)* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %147
  %155 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %156 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %155, i32 0, i32 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 5
  %159 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %158, align 8
  %160 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %161 = call i32 %159(%struct.wm_adsp* %160)
  br label %162

162:                                              ; preds = %154, %147
  %163 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %164 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %163, i32 0, i32 3
  %165 = call i32 @mutex_lock(i32* %164)
  %166 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %167 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %166, i32 0, i32 1
  store i32 0, i32* %167, align 8
  %168 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %169 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %168, i32 0, i32 4
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 4
  %172 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %171, align 8
  %173 = icmp ne i32 (%struct.wm_adsp*)* %172, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %162
  %175 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %176 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %175, i32 0, i32 4
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 4
  %179 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %178, align 8
  %180 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %181 = call i32 %179(%struct.wm_adsp* %180)
  br label %182

182:                                              ; preds = %174, %162
  %183 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %184 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %183, i32 0, i32 4
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 3
  %187 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %186, align 8
  %188 = icmp ne i32 (%struct.wm_adsp*)* %187, null
  br i1 %188, label %189, label %197

189:                                              ; preds = %182
  %190 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %191 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %190, i32 0, i32 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  %194 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %193, align 8
  %195 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %196 = call i32 %194(%struct.wm_adsp* %195)
  br label %197

197:                                              ; preds = %189, %182
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm_adsp_fw, align 8
  %199 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %200 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %208 = call i32 @wm_adsp_buffer_free(%struct.wm_adsp* %207)
  br label %209

209:                                              ; preds = %206, %197
  %210 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %211 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %210, i32 0, i32 2
  store i32 0, i32* %211, align 4
  %212 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %213 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %212, i32 0, i32 3
  %214 = call i32 @mutex_unlock(i32* %213)
  %215 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %216 = call i32 @adsp_dbg(%struct.wm_adsp* %215, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %218

217:                                              ; preds = %3
  br label %218

218:                                              ; preds = %217, %209, %123
  store i32 0, i32* %4, align 4
  br label %254

219:                                              ; preds = %121, %105, %83, %62, %55, %35
  %220 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %221 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %220, i32 0, i32 4
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 4
  %224 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %223, align 8
  %225 = icmp ne i32 (%struct.wm_adsp*)* %224, null
  br i1 %225, label %226, label %234

226:                                              ; preds = %219
  %227 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %228 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %227, i32 0, i32 4
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 4
  %231 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %230, align 8
  %232 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %233 = call i32 %231(%struct.wm_adsp* %232)
  br label %234

234:                                              ; preds = %226, %219
  %235 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %236 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %235, i32 0, i32 4
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 3
  %239 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %238, align 8
  %240 = icmp ne i32 (%struct.wm_adsp*)* %239, null
  br i1 %240, label %241, label %249

241:                                              ; preds = %234
  %242 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %243 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %242, i32 0, i32 4
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 3
  %246 = load i32 (%struct.wm_adsp*)*, i32 (%struct.wm_adsp*)** %245, align 8
  %247 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %248 = call i32 %246(%struct.wm_adsp* %247)
  br label %249

249:                                              ; preds = %241, %234
  %250 = load %struct.wm_adsp*, %struct.wm_adsp** %10, align 8
  %251 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %250, i32 0, i32 3
  %252 = call i32 @mutex_unlock(i32* %251)
  %253 = load i32, i32* %11, align 4
  store i32 %253, i32* %4, align 4
  br label %254

254:                                              ; preds = %249, %218
  %255 = load i32, i32* %4, align 4
  ret i32 %255
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wm_adsp* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm_coeff_sync_controls(%struct.wm_adsp*) #1

declare dso_local i32 @adsp_err(%struct.wm_adsp*, i8*, i32) #1

declare dso_local i32 @wm_adsp_buffer_init(%struct.wm_adsp*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wm_adsp_signal_event_controls(%struct.wm_adsp*, i32) #1

declare dso_local i32 @wm_adsp_buffer_free(%struct.wm_adsp*) #1

declare dso_local i32 @adsp_dbg(%struct.wm_adsp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
