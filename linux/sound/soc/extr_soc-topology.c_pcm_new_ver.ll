; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_pcm_new_ver.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_pcm_new_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i32 }
%struct.snd_soc_tplg_pcm = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.snd_soc_tplg_pcm_v4 = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [24 x i8] c"ASoC: invalid PCM size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ASoC: old version of PCM\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm**)* @pcm_new_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_new_ver(%struct.soc_tplg* %0, %struct.snd_soc_tplg_pcm* %1, %struct.snd_soc_tplg_pcm** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_tplg*, align 8
  %6 = alloca %struct.snd_soc_tplg_pcm*, align 8
  %7 = alloca %struct.snd_soc_tplg_pcm**, align 8
  %8 = alloca %struct.snd_soc_tplg_pcm*, align 8
  %9 = alloca %struct.snd_soc_tplg_pcm_v4*, align 8
  %10 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %5, align 8
  store %struct.snd_soc_tplg_pcm* %1, %struct.snd_soc_tplg_pcm** %6, align 8
  store %struct.snd_soc_tplg_pcm** %2, %struct.snd_soc_tplg_pcm*** %7, align 8
  %11 = load %struct.snd_soc_tplg_pcm**, %struct.snd_soc_tplg_pcm*** %7, align 8
  store %struct.snd_soc_tplg_pcm* null, %struct.snd_soc_tplg_pcm** %11, align 8
  %12 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @le32_to_cpu(i32 %14)
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 56
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %20 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %137

25:                                               ; preds = %3
  %26 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %27 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %6, align 8
  %31 = bitcast %struct.snd_soc_tplg_pcm* %30 to %struct.snd_soc_tplg_pcm_v4*
  store %struct.snd_soc_tplg_pcm_v4* %31, %struct.snd_soc_tplg_pcm_v4** %9, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.snd_soc_tplg_pcm* @kzalloc(i32 64, i32 %32)
  store %struct.snd_soc_tplg_pcm* %33, %struct.snd_soc_tplg_pcm** %8, align 8
  %34 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %8, align 8
  %35 = icmp ne %struct.snd_soc_tplg_pcm* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %137

39:                                               ; preds = %25
  %40 = call i32 @cpu_to_le32(i32 64)
  %41 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %8, align 8
  %42 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  %43 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %8, align 8
  %44 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %43, i32 0, i32 9
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.snd_soc_tplg_pcm_v4*, %struct.snd_soc_tplg_pcm_v4** %9, align 8
  %47 = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, %struct.snd_soc_tplg_pcm_v4* %46, i32 0, i32 9
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %50 = call i32 @memcpy(i32* %45, i32* %48, i32 %49)
  %51 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %8, align 8
  %52 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %51, i32 0, i32 8
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.snd_soc_tplg_pcm_v4*, %struct.snd_soc_tplg_pcm_v4** %9, align 8
  %55 = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, %struct.snd_soc_tplg_pcm_v4* %54, i32 0, i32 8
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %58 = call i32 @memcpy(i32* %53, i32* %56, i32 %57)
  %59 = load %struct.snd_soc_tplg_pcm_v4*, %struct.snd_soc_tplg_pcm_v4** %9, align 8
  %60 = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, %struct.snd_soc_tplg_pcm_v4* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %8, align 8
  %63 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load %struct.snd_soc_tplg_pcm_v4*, %struct.snd_soc_tplg_pcm_v4** %9, align 8
  %65 = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, %struct.snd_soc_tplg_pcm_v4* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %8, align 8
  %68 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load %struct.snd_soc_tplg_pcm_v4*, %struct.snd_soc_tplg_pcm_v4** %9, align 8
  %70 = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, %struct.snd_soc_tplg_pcm_v4* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %8, align 8
  %73 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.snd_soc_tplg_pcm_v4*, %struct.snd_soc_tplg_pcm_v4** %9, align 8
  %75 = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, %struct.snd_soc_tplg_pcm_v4* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %8, align 8
  %78 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.snd_soc_tplg_pcm_v4*, %struct.snd_soc_tplg_pcm_v4** %9, align 8
  %80 = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, %struct.snd_soc_tplg_pcm_v4* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %8, align 8
  %83 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.snd_soc_tplg_pcm_v4*, %struct.snd_soc_tplg_pcm_v4** %9, align 8
  %85 = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, %struct.snd_soc_tplg_pcm_v4* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %8, align 8
  %88 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %110, %39
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %8, align 8
  %92 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @le32_to_cpu(i32 %93)
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %89
  %97 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %8, align 8
  %98 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load %struct.snd_soc_tplg_pcm_v4*, %struct.snd_soc_tplg_pcm_v4** %9, align 8
  %104 = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, %struct.snd_soc_tplg_pcm_v4* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = call i32 @memcpy(i32* %102, i32* %108, i32 4)
  br label %110

110:                                              ; preds = %96
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %89

113:                                              ; preds = %89
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %131, %113
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 2
  br i1 %116, label %117, label %134

117:                                              ; preds = %114
  %118 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %8, align 8
  %119 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load %struct.snd_soc_tplg_pcm_v4*, %struct.snd_soc_tplg_pcm_v4** %9, align 8
  %125 = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, %struct.snd_soc_tplg_pcm_v4* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = call i32 @stream_caps_new_ver(i32* %123, i32* %129)
  br label %131

131:                                              ; preds = %117
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %114

134:                                              ; preds = %114
  %135 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %8, align 8
  %136 = load %struct.snd_soc_tplg_pcm**, %struct.snd_soc_tplg_pcm*** %7, align 8
  store %struct.snd_soc_tplg_pcm* %135, %struct.snd_soc_tplg_pcm** %136, align 8
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %134, %36, %18
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local %struct.snd_soc_tplg_pcm* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @stream_caps_new_ver(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
