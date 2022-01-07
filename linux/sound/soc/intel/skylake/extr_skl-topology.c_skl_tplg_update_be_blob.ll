; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_update_be_blob.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_update_be_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.skl_module_cfg* }
%struct.skl_module_cfg = type { i32, i32, i32, %struct.TYPE_12__, i32, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i64, i32* }
%struct.TYPE_7__ = type { %struct.skl_module_iface* }
%struct.skl_module_iface = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.skl_dev = type { i32 }
%struct.nhlt_specific_cfg = type { i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Applying default cfg blob\0A\00", align 1
@NHLT_LINK_DMIC = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@NHLT_LINK_SSP = common dso_local global i32 0, align 4
@SKL_CONN_SOURCE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Blob NULL for id %x type %d dirn %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"PCM: ch %d, freq %d, fmt %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.skl_dev*)* @skl_tplg_update_be_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_update_be_blob(%struct.snd_soc_dapm_widget* %0, %struct.skl_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.skl_dev*, align 8
  %6 = alloca %struct.skl_module_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nhlt_specific_cfg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.skl_module_iface*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.skl_dev* %1, %struct.skl_dev** %5, align 8
  %16 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %16, i32 0, i32 0
  %18 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %17, align 8
  store %struct.skl_module_cfg* %18, %struct.skl_module_cfg** %6, align 8
  %19 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %20 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @skl_tplg_be_dev_type(i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %24 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %27 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %26, i32 0, i32 5
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.skl_module_iface*, %struct.skl_module_iface** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %30, i64 %32
  store %struct.skl_module_iface* %33, %struct.skl_module_iface** %15, align 8
  %34 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %35 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %175

40:                                               ; preds = %2
  %41 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %42 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %46 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %126 [
    i32 129, label %48
    i32 128, label %72
  ]

48:                                               ; preds = %40
  %49 = load i32, i32* @NHLT_LINK_DMIC, align 4
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.skl_module_iface*, %struct.skl_module_iface** %15, align 8
  %52 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  %58 = load %struct.skl_module_iface*, %struct.skl_module_iface** %15, align 8
  %59 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %11, align 4
  %65 = load %struct.skl_module_iface*, %struct.skl_module_iface** %15, align 8
  %66 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  br label %129

72:                                               ; preds = %40
  %73 = load i32, i32* @NHLT_LINK_SSP, align 4
  store i32 %73, i32* %7, align 4
  %74 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %75 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SKL_CONN_SOURCE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %72
  %80 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  store i32 %80, i32* %8, align 4
  %81 = load %struct.skl_module_iface*, %struct.skl_module_iface** %15, align 8
  %82 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %10, align 4
  %88 = load %struct.skl_module_iface*, %struct.skl_module_iface** %15, align 8
  %89 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %11, align 4
  %95 = load %struct.skl_module_iface*, %struct.skl_module_iface** %15, align 8
  %96 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %9, align 4
  br label %125

102:                                              ; preds = %72
  %103 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  store i32 %103, i32* %8, align 4
  %104 = load %struct.skl_module_iface*, %struct.skl_module_iface** %15, align 8
  %105 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %10, align 4
  %111 = load %struct.skl_module_iface*, %struct.skl_module_iface** %15, align 8
  %112 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %111, i32 0, i32 0
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %11, align 4
  %118 = load %struct.skl_module_iface*, %struct.skl_module_iface** %15, align 8
  %119 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %118, i32 0, i32 0
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %102, %79
  br label %129

126:                                              ; preds = %40
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %175

129:                                              ; preds = %125, %48
  %130 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %131 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %132 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call %struct.nhlt_specific_cfg* @skl_get_ep_blob(%struct.skl_dev* %130, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139)
  store %struct.nhlt_specific_cfg* %140, %struct.nhlt_specific_cfg** %12, align 8
  %141 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %12, align 8
  %142 = icmp ne %struct.nhlt_specific_cfg* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %129
  %144 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %12, align 8
  %145 = getelementptr inbounds %struct.nhlt_specific_cfg, %struct.nhlt_specific_cfg* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %148 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  store i64 %146, i64* %149, align 8
  %150 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %12, align 8
  %151 = getelementptr inbounds %struct.nhlt_specific_cfg, %struct.nhlt_specific_cfg* %150, i32 0, i32 1
  %152 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %153 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  store i32* %151, i32** %154, align 8
  br label %174

155:                                              ; preds = %129
  %156 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %157 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %160 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @dev_err(i32 %158, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %161, i32 %162, i32 %163)
  %165 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %166 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @dev_err(i32 %167, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* @EIO, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  br label %175

174:                                              ; preds = %143
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %155, %126, %39
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @skl_tplg_be_dev_type(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local %struct.nhlt_specific_cfg* @skl_get_ep_blob(%struct.skl_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
