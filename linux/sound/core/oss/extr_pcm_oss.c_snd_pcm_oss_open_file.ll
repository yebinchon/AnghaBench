; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_open_file.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.snd_pcm_oss_file*, i32 }
%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_oss_setup = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.snd_pcm*, %struct.snd_pcm_oss_file**, i32, %struct.snd_pcm_oss_setup*)* @snd_pcm_oss_open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_open_file(%struct.file* %0, %struct.snd_pcm* %1, %struct.snd_pcm_oss_file** %2, i32 %3, %struct.snd_pcm_oss_setup* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca %struct.snd_pcm_oss_file**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_pcm_oss_setup*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_pcm_oss_file*, align 8
  %15 = alloca %struct.snd_pcm_substream*, align 8
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.snd_pcm* %1, %struct.snd_pcm** %8, align 8
  store %struct.snd_pcm_oss_file** %2, %struct.snd_pcm_oss_file*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.snd_pcm_oss_setup* %4, %struct.snd_pcm_oss_setup** %11, align 8
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %16, align 4
  %20 = load %struct.snd_pcm_oss_file**, %struct.snd_pcm_oss_file*** %9, align 8
  %21 = icmp ne %struct.snd_pcm_oss_file** %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load %struct.snd_pcm_oss_file**, %struct.snd_pcm_oss_file*** %9, align 8
  store %struct.snd_pcm_oss_file* null, %struct.snd_pcm_oss_file** %23, align 8
  br label %24

24:                                               ; preds = %22, %5
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.snd_pcm_oss_file* @kzalloc(i32 8, i32 %25)
  store %struct.snd_pcm_oss_file* %26, %struct.snd_pcm_oss_file** %14, align 8
  %27 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %14, align 8
  %28 = icmp eq %struct.snd_pcm_oss_file* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %157

32:                                               ; preds = %24
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* @FMODE_WRITE, align 4
  %35 = load i32, i32* @FMODE_READ, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = load i32, i32* @FMODE_WRITE, align 4
  %39 = load i32, i32* @FMODE_READ, align 4
  %40 = or i32 %38, %39
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %44 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SNDRV_PCM_INFO_HALF_DUPLEX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @FMODE_WRITE, align 4
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %49, %42, %32
  %52 = load i32, i32* @O_APPEND, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.file*, %struct.file** %7, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %125, %51
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %128

61:                                               ; preds = %58
  %62 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.snd_pcm_oss_setup, %struct.snd_pcm_oss_setup* %62, i64 %64
  %66 = getelementptr inbounds %struct.snd_pcm_oss_setup, %struct.snd_pcm_oss_setup* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %125

70:                                               ; preds = %61
  %71 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %72 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  br label %125

81:                                               ; preds = %70
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* @FMODE_WRITE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %125

91:                                               ; preds = %85
  br label %99

92:                                               ; preds = %81
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @FMODE_READ, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %125

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %91
  %100 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.file*, %struct.file** %7, align 8
  %103 = call i32 @snd_pcm_open_substream(%struct.snd_pcm* %100, i32 %101, %struct.file* %102, %struct.snd_pcm_substream** %15)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %14, align 8
  %108 = call i32 @snd_pcm_oss_release_file(%struct.snd_pcm_oss_file* %107)
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %6, align 4
  br label %157

110:                                              ; preds = %99
  %111 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %15, align 8
  %112 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %14, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %112, i32 0, i32 0
  %114 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %114, i64 %116
  store %struct.snd_pcm_substream* %111, %struct.snd_pcm_substream** %117, align 8
  %118 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %15, align 8
  %119 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %11, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.snd_pcm_oss_setup, %struct.snd_pcm_oss_setup* %119, i64 %121
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @snd_pcm_oss_init_substream(%struct.snd_pcm_substream* %118, %struct.snd_pcm_oss_setup* %122, i32 %123)
  br label %125

125:                                              ; preds = %110, %97, %90, %80, %69
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %58

128:                                              ; preds = %58
  %129 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %14, align 8
  %130 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %129, i32 0, i32 0
  %131 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %130, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %131, i64 0
  %133 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %132, align 8
  %134 = icmp ne %struct.snd_pcm_substream* %133, null
  br i1 %134, label %147, label %135

135:                                              ; preds = %128
  %136 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %14, align 8
  %137 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %136, i32 0, i32 0
  %138 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %137, align 8
  %139 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %138, i64 1
  %140 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %139, align 8
  %141 = icmp ne %struct.snd_pcm_substream* %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %135
  %143 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %14, align 8
  %144 = call i32 @snd_pcm_oss_release_file(%struct.snd_pcm_oss_file* %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %6, align 4
  br label %157

147:                                              ; preds = %135, %128
  %148 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %14, align 8
  %149 = load %struct.file*, %struct.file** %7, align 8
  %150 = getelementptr inbounds %struct.file, %struct.file* %149, i32 0, i32 1
  store %struct.snd_pcm_oss_file* %148, %struct.snd_pcm_oss_file** %150, align 8
  %151 = load %struct.snd_pcm_oss_file**, %struct.snd_pcm_oss_file*** %9, align 8
  %152 = icmp ne %struct.snd_pcm_oss_file** %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %14, align 8
  %155 = load %struct.snd_pcm_oss_file**, %struct.snd_pcm_oss_file*** %9, align 8
  store %struct.snd_pcm_oss_file* %154, %struct.snd_pcm_oss_file** %155, align 8
  br label %156

156:                                              ; preds = %153, %147
  store i32 0, i32* %6, align 4
  br label %157

157:                                              ; preds = %156, %142, %106, %29
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local %struct.snd_pcm_oss_file* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_open_substream(%struct.snd_pcm*, i32, %struct.file*, %struct.snd_pcm_substream**) #1

declare dso_local i32 @snd_pcm_oss_release_file(%struct.snd_pcm_oss_file*) #1

declare dso_local i32 @snd_pcm_oss_init_substream(%struct.snd_pcm_substream*, %struct.snd_pcm_oss_setup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
