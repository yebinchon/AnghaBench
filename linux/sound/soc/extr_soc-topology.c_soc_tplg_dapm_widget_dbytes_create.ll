; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dapm_widget_dbytes_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dapm_widget_dbytes_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i64, %struct.snd_kcontrol_new*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.soc_tplg = type { i32, i64 }
%struct.snd_soc_tplg_bytes_control = type { %struct.TYPE_7__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.soc_bytes_ext = type { i64, %struct.soc_bytes_ext*, %struct.TYPE_6__, i32, i32, i32 }
%struct.snd_soc_tplg_ctl_hdr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"ASoC: adding bytes kcontrol %s with access 0x%x\0A\00", align 1
@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ASoC: failed to init %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_kcontrol_new* (%struct.soc_tplg*, i32)* @soc_tplg_dapm_widget_dbytes_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_kcontrol_new* @soc_tplg_dapm_widget_dbytes_create(%struct.soc_tplg* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_kcontrol_new*, align 8
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_tplg_bytes_control*, align 8
  %7 = alloca %struct.soc_bytes_ext*, align 8
  %8 = alloca %struct.snd_kcontrol_new*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.soc_bytes_ext* @kcalloc(i32 %11, i32 32, i32 %12)
  %14 = bitcast %struct.soc_bytes_ext* %13 to %struct.snd_kcontrol_new*
  store %struct.snd_kcontrol_new* %14, %struct.snd_kcontrol_new** %8, align 8
  %15 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %16 = icmp ne %struct.snd_kcontrol_new* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.snd_kcontrol_new* null, %struct.snd_kcontrol_new** %3, align 8
  br label %194

18:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %160, %18
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %163

23:                                               ; preds = %19
  %24 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %25 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.snd_soc_tplg_bytes_control*
  store %struct.snd_soc_tplg_bytes_control* %27, %struct.snd_soc_tplg_bytes_control** %6, align 8
  %28 = load %struct.snd_soc_tplg_bytes_control*, %struct.snd_soc_tplg_bytes_control** %6, align 8
  %29 = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, %struct.snd_soc_tplg_bytes_control* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %33 = call i64 @strnlen(i32 %31, i64 %32)
  %34 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %165

37:                                               ; preds = %23
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.soc_bytes_ext* @kzalloc(i32 32, i32 %38)
  store %struct.soc_bytes_ext* %39, %struct.soc_bytes_ext** %7, align 8
  %40 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %7, align 8
  %41 = icmp eq %struct.soc_bytes_ext* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %165

43:                                               ; preds = %37
  %44 = load %struct.snd_soc_tplg_bytes_control*, %struct.snd_soc_tplg_bytes_control** %6, align 8
  %45 = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, %struct.snd_soc_tplg_bytes_control* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le32_to_cpu(i32 %47)
  %49 = add i64 16, %48
  %50 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %51 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %55 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.snd_soc_tplg_bytes_control*, %struct.snd_soc_tplg_bytes_control** %6, align 8
  %58 = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, %struct.snd_soc_tplg_bytes_control* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.snd_soc_tplg_bytes_control*, %struct.snd_soc_tplg_bytes_control** %6, align 8
  %62 = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, %struct.snd_soc_tplg_bytes_control* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %64)
  %66 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %7, align 8
  %67 = ptrtoint %struct.soc_bytes_ext* %66 to i64
  %68 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %68, i64 %70
  %72 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %71, i32 0, i32 0
  store i64 %67, i64* %72, align 8
  %73 = load %struct.snd_soc_tplg_bytes_control*, %struct.snd_soc_tplg_bytes_control** %6, align 8
  %74 = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, %struct.snd_soc_tplg_bytes_control* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.soc_bytes_ext* @kstrdup(i32 %76, i32 %77)
  %79 = bitcast %struct.soc_bytes_ext* %78 to %struct.snd_kcontrol_new*
  %80 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %80, i64 %82
  %84 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %83, i32 0, i32 1
  store %struct.snd_kcontrol_new* %79, %struct.snd_kcontrol_new** %84, align 8
  %85 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %85, i64 %87
  %89 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %88, i32 0, i32 1
  %90 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %89, align 8
  %91 = icmp eq %struct.snd_kcontrol_new* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %43
  br label %165

93:                                               ; preds = %43
  %94 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %95 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %95, i64 %97
  %99 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %98, i32 0, i32 5
  store i32 %94, i32* %99, align 4
  %100 = load %struct.snd_soc_tplg_bytes_control*, %struct.snd_soc_tplg_bytes_control** %6, align 8
  %101 = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, %struct.snd_soc_tplg_bytes_control* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %104, i64 %106
  %108 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %107, i32 0, i32 4
  store i32 %103, i32* %108, align 8
  %109 = load %struct.snd_soc_tplg_bytes_control*, %struct.snd_soc_tplg_bytes_control** %6, align 8
  %110 = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, %struct.snd_soc_tplg_bytes_control* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %7, align 8
  %113 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %7, align 8
  %115 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = call i32 @INIT_LIST_HEAD(i32* %116)
  %118 = load %struct.snd_soc_tplg_bytes_control*, %struct.snd_soc_tplg_bytes_control** %6, align 8
  %119 = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, %struct.snd_soc_tplg_bytes_control* %118, i32 0, i32 0
  %120 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %120, i64 %122
  %124 = bitcast %struct.snd_kcontrol_new* %123 to %struct.soc_bytes_ext*
  %125 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %126 = call i32 @soc_tplg_kcontrol_bind_io(%struct.TYPE_7__* %119, %struct.soc_bytes_ext* %124, %struct.soc_tplg* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %93
  %130 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %131 = load %struct.snd_soc_tplg_bytes_control*, %struct.snd_soc_tplg_bytes_control** %6, align 8
  %132 = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, %struct.snd_soc_tplg_bytes_control* %131, i32 0, i32 0
  %133 = load %struct.snd_soc_tplg_bytes_control*, %struct.snd_soc_tplg_bytes_control** %6, align 8
  %134 = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, %struct.snd_soc_tplg_bytes_control* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @soc_control_err(%struct.soc_tplg* %130, %struct.TYPE_7__* %132, i32 %136)
  br label %165

138:                                              ; preds = %93
  %139 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %140 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %140, i64 %142
  %144 = bitcast %struct.snd_kcontrol_new* %143 to %struct.soc_bytes_ext*
  %145 = load %struct.snd_soc_tplg_bytes_control*, %struct.snd_soc_tplg_bytes_control** %6, align 8
  %146 = bitcast %struct.snd_soc_tplg_bytes_control* %145 to %struct.snd_soc_tplg_ctl_hdr*
  %147 = call i32 @soc_tplg_init_kcontrol(%struct.soc_tplg* %139, %struct.soc_bytes_ext* %144, %struct.snd_soc_tplg_ctl_hdr* %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %138
  %151 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %152 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.snd_soc_tplg_bytes_control*, %struct.snd_soc_tplg_bytes_control** %6, align 8
  %155 = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, %struct.snd_soc_tplg_bytes_control* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dev_err(i32 %153, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  br label %165

159:                                              ; preds = %138
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %19

163:                                              ; preds = %19
  %164 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  store %struct.snd_kcontrol_new* %164, %struct.snd_kcontrol_new** %3, align 8
  br label %194

165:                                              ; preds = %150, %129, %92, %42, %36
  br label %166

166:                                              ; preds = %187, %165
  %167 = load i32, i32* %9, align 4
  %168 = icmp sge i32 %167, 0
  br i1 %168, label %169, label %190

169:                                              ; preds = %166
  %170 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %170, i64 %172
  %174 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = inttoptr i64 %175 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %176, %struct.soc_bytes_ext** %7, align 8
  %177 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %7, align 8
  %178 = call i32 @kfree(%struct.soc_bytes_ext* %177)
  %179 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %179, i64 %181
  %183 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %182, i32 0, i32 1
  %184 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %183, align 8
  %185 = bitcast %struct.snd_kcontrol_new* %184 to %struct.soc_bytes_ext*
  %186 = call i32 @kfree(%struct.soc_bytes_ext* %185)
  br label %187

187:                                              ; preds = %169
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %9, align 4
  br label %166

190:                                              ; preds = %166
  %191 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %192 = bitcast %struct.snd_kcontrol_new* %191 to %struct.soc_bytes_ext*
  %193 = call i32 @kfree(%struct.soc_bytes_ext* %192)
  store %struct.snd_kcontrol_new* null, %struct.snd_kcontrol_new** %3, align 8
  br label %194

194:                                              ; preds = %190, %163, %17
  %195 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %3, align 8
  ret %struct.snd_kcontrol_new* %195
}

declare dso_local %struct.soc_bytes_ext* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @strnlen(i32, i64) #1

declare dso_local %struct.soc_bytes_ext* @kzalloc(i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local %struct.soc_bytes_ext* @kstrdup(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @soc_tplg_kcontrol_bind_io(%struct.TYPE_7__*, %struct.soc_bytes_ext*, %struct.soc_tplg*) #1

declare dso_local i32 @soc_control_err(%struct.soc_tplg*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @soc_tplg_init_kcontrol(%struct.soc_tplg*, %struct.soc_bytes_ext*, %struct.snd_soc_tplg_ctl_hdr*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.soc_bytes_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
