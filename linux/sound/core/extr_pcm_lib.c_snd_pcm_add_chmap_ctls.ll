; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_pcm_add_chmap_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_pcm_add_chmap_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.snd_pcm_chmap_elem = type { i32 }
%struct.snd_pcm_chmap = type { i32, i32, %struct.TYPE_8__*, %struct.snd_pcm_chmap_elem*, %struct.snd_pcm* }
%struct.snd_kcontrol_new = type { i32, i8*, i64, i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@SNDRV_CTL_ELEM_ACCESS_READ = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_READ = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK = common dso_local global i32 0, align 4
@pcm_chmap_ctl_tlv = common dso_local global i32 0, align 4
@pcm_chmap_ctl_get = common dso_local global i32 0, align 4
@pcm_chmap_ctl_info = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_IFACE_PCM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Playback Channel Map\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Capture Channel Map\00", align 1
@pcm_chmap_ctl_private_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm* %0, i32 %1, %struct.snd_pcm_chmap_elem* %2, i32 %3, i64 %4, %struct.snd_pcm_chmap** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_chmap_elem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.snd_pcm_chmap**, align 8
  %14 = alloca %struct.snd_pcm_chmap*, align 8
  %15 = alloca %struct.snd_kcontrol_new, align 8
  %16 = alloca i32, align 4
  store %struct.snd_pcm* %0, %struct.snd_pcm** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.snd_pcm_chmap_elem* %2, %struct.snd_pcm_chmap_elem** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store %struct.snd_pcm_chmap** %5, %struct.snd_pcm_chmap*** %13, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %15, i32 0, i32 0
  %18 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READ, align 4
  %19 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READ, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %17, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %15, i32 0, i32 1
  store i8* null, i8** %23, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %15, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %15, i32 0, i32 3
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %15, i32 0, i32 4
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %15, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* @pcm_chmap_ctl_tlv, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %15, i32 0, i32 6
  %31 = load i32, i32* @pcm_chmap_ctl_get, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %15, i32 0, i32 7
  %33 = load i32, i32* @pcm_chmap_ctl_info, align 4
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %15, i32 0, i32 8
  %35 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_PCM, align 4
  store i32 %35, i32* %34, align 4
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %37 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = call i64 @WARN_ON(%struct.TYPE_8__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %6
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %140

49:                                               ; preds = %6
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.snd_pcm_chmap* @kzalloc(i32 32, i32 %50)
  store %struct.snd_pcm_chmap* %51, %struct.snd_pcm_chmap** %14, align 8
  %52 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %14, align 8
  %53 = icmp ne %struct.snd_pcm_chmap* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %140

57:                                               ; preds = %49
  %58 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %59 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %14, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %59, i32 0, i32 4
  store %struct.snd_pcm* %58, %struct.snd_pcm** %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %14, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %10, align 8
  %65 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %14, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %65, i32 0, i32 3
  store %struct.snd_pcm_chmap_elem* %64, %struct.snd_pcm_chmap_elem** %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %14, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %57
  %74 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %74, align 8
  br label %77

75:                                               ; preds = %57
  %76 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %76, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %79 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %15, i32 0, i32 4
  store i32 %80, i32* %81, align 4
  %82 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %83 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %15, i32 0, i32 3
  store i32 %89, i32* %90, align 8
  %91 = load i64, i64* %12, align 8
  %92 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %15, i32 0, i32 2
  store i64 %91, i64* %92, align 8
  %93 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %14, align 8
  %94 = call %struct.TYPE_8__* @snd_ctl_new1(%struct.snd_kcontrol_new* %15, %struct.snd_pcm_chmap* %93)
  %95 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %14, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %95, i32 0, i32 2
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %96, align 8
  %97 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %14, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %97, i32 0, i32 2
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = icmp ne %struct.TYPE_8__* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %77
  %102 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %14, align 8
  %103 = call i32 @kfree(%struct.snd_pcm_chmap* %102)
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %7, align 4
  br label %140

106:                                              ; preds = %77
  %107 = load i32, i32* @pcm_chmap_ctl_private_free, align 4
  %108 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %14, align 8
  %109 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %108, i32 0, i32 2
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 4
  %112 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %113 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %14, align 8
  %116 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %115, i32 0, i32 2
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = call i32 @snd_ctl_add(i32 %114, %struct.TYPE_8__* %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %106
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %7, align 4
  br label %140

123:                                              ; preds = %106
  %124 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %14, align 8
  %125 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %124, i32 0, i32 2
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %128 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store %struct.TYPE_8__* %126, %struct.TYPE_8__** %133, align 8
  %134 = load %struct.snd_pcm_chmap**, %struct.snd_pcm_chmap*** %13, align 8
  %135 = icmp ne %struct.snd_pcm_chmap** %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %123
  %137 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %14, align 8
  %138 = load %struct.snd_pcm_chmap**, %struct.snd_pcm_chmap*** %13, align 8
  store %struct.snd_pcm_chmap* %137, %struct.snd_pcm_chmap** %138, align 8
  br label %139

139:                                              ; preds = %136, %123
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %139, %121, %101, %54, %46
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i64 @WARN_ON(%struct.TYPE_8__*) #1

declare dso_local %struct.snd_pcm_chmap* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_8__* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_pcm_chmap*) #1

declare dso_local i32 @kfree(%struct.snd_pcm_chmap*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
