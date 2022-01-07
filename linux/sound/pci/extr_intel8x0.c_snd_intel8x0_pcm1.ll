; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_pcm1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_pcm1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0 = type { %struct.TYPE_4__**, i64, i64, i64, i32, %struct.snd_pcm**, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.snd_pcm_chmap** }
%struct.snd_pcm_chmap = type { i32 }
%struct.snd_pcm = type { i8*, i64, %struct.intel8x0* }
%struct.TYPE_6__ = type { i8* }
%struct.ich_pcm_table = type { i8*, %struct.TYPE_5__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"Intel ICH - %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Intel ICH\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%s - %s\00", align 1
@snd_intel8x0_playback_open = common dso_local global i64 0, align 8
@snd_pcm_alt_chmaps = common dso_local global i32 0, align 4
@SND_PCM_CHMAP_MASK_2468 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0*, i32, %struct.ich_pcm_table*)* @snd_intel8x0_pcm1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_pcm1(%struct.intel8x0* %0, i32 %1, %struct.ich_pcm_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel8x0*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ich_pcm_table*, align 8
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca %struct.snd_pcm_chmap*, align 8
  %12 = alloca i32, align 4
  store %struct.intel8x0* %0, %struct.intel8x0** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ich_pcm_table* %2, %struct.ich_pcm_table** %7, align 8
  %13 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %14 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %19 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %20 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %26

23:                                               ; preds = %3
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %25 = call i32 @strcpy(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %28 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %27, i32 0, i32 6
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %33 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %39 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %38, i32 0, i32 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = call i32 @snd_pcm_new(%struct.TYPE_6__* %29, i8* %30, i32 %31, i32 %37, i32 %43, %struct.snd_pcm** %8)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %26
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %185

49:                                               ; preds = %26
  %50 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %51 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %56 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %57 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %58 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %55, i64 %56, %struct.TYPE_5__* %59)
  br label %61

61:                                               ; preds = %54, %49
  %62 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %63 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %62, i32 0, i32 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = icmp ne %struct.TYPE_5__* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %68 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %69 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %70 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %69, i32 0, i32 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %67, i64 %68, %struct.TYPE_5__* %71)
  br label %73

73:                                               ; preds = %66, %61
  %74 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %75 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %76 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %75, i32 0, i32 2
  store %struct.intel8x0* %74, %struct.intel8x0** %76, align 8
  %77 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %78 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %80 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %73
  %84 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %85 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %88 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %87, i32 0, i32 6
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %93 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %91, i8* %94)
  br label %106

96:                                               ; preds = %73
  %97 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %98 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %101 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %100, i32 0, i32 6
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcpy(i8* %99, i8* %104)
  br label %106

106:                                              ; preds = %96, %83
  %107 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %108 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %109 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %108, i32 0, i32 5
  %110 = load %struct.snd_pcm**, %struct.snd_pcm*** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %110, i64 %112
  store %struct.snd_pcm* %107, %struct.snd_pcm** %113, align 8
  %114 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %115 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %116 = call i32 @intel8x0_dma_type(%struct.intel8x0* %115)
  %117 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %118 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @snd_dma_pci_data(i32 %119)
  %121 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %122 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %125 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %114, i32 %116, i32 %120, i32 %123, i32 %126)
  %128 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %129 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %128, i32 0, i32 1
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = icmp ne %struct.TYPE_5__* %130, null
  br i1 %131, label %132, label %184

132:                                              ; preds = %106
  %133 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %7, align 8
  %134 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %133, i32 0, i32 1
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @snd_intel8x0_playback_open, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %184

140:                                              ; preds = %132
  store i32 2, i32* %12, align 4
  %141 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %142 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 8, i32* %12, align 4
  br label %160

146:                                              ; preds = %140
  %147 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %148 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 6, i32* %12, align 4
  br label %159

152:                                              ; preds = %146
  %153 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %154 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i32 4, i32* %12, align 4
  br label %158

158:                                              ; preds = %157, %152
  br label %159

159:                                              ; preds = %158, %151
  br label %160

160:                                              ; preds = %159, %145
  %161 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %162 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %163 = load i32, i32* @snd_pcm_alt_chmaps, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm* %161, i64 %162, i32 %163, i32 %164, i32 0, %struct.snd_pcm_chmap** %11)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %160
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %4, align 4
  br label %185

170:                                              ; preds = %160
  %171 = load i32, i32* @SND_PCM_CHMAP_MASK_2468, align 4
  %172 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %11, align 8
  %173 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  %174 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %11, align 8
  %175 = load %struct.intel8x0*, %struct.intel8x0** %5, align 8
  %176 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %177, i64 0
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load %struct.snd_pcm_chmap**, %struct.snd_pcm_chmap*** %180, align 8
  %182 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %183 = getelementptr inbounds %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %181, i64 %182
  store %struct.snd_pcm_chmap* %174, %struct.snd_pcm_chmap** %183, align 8
  br label %184

184:                                              ; preds = %170, %132, %106
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %184, %168, %47
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @snd_pcm_new(%struct.TYPE_6__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i64, %struct.TYPE_5__*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @intel8x0_dma_type(%struct.intel8x0*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm*, i64, i32, i32, i32, %struct.snd_pcm_chmap**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
