; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime*, i32 }
%struct.snd_pcm_runtime = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@PCM_ENABLE_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_PCM_IOCTL_START = common dso_local global i32 0, align 4
@SNDRV_PCM_IOCTL_DROP = common dso_local global i32 0, align 4
@PCM_ENABLE_INPUT = common dso_local global i32 0, align 4
@substream = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_oss_file*, i32)* @snd_pcm_oss_set_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_set_trigger(%struct.snd_pcm_oss_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_oss_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_oss_file* %0, %struct.snd_pcm_oss_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %7, align 8
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %8, align 8
  %11 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, i64 %14
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %15, align 8
  store %struct.snd_pcm_substream* %16, %struct.snd_pcm_substream** %7, align 8
  %17 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %17, i32 0, i32 0
  %19 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %18, align 8
  %20 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, i64 %20
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %21, align 8
  store %struct.snd_pcm_substream* %22, %struct.snd_pcm_substream** %8, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %24 = icmp ne %struct.snd_pcm_substream* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %27 = call i32 @snd_pcm_oss_make_ready(%struct.snd_pcm_substream* %26)
  store i32 %27, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %197

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %34 = icmp ne %struct.snd_pcm_substream* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %37 = call i32 @snd_pcm_oss_make_ready(%struct.snd_pcm_substream* %36)
  store i32 %37, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %197

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %32
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %44 = icmp ne %struct.snd_pcm_substream* %43, null
  br i1 %44, label %45, label %124

45:                                               ; preds = %42
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %46, i32 0, i32 0
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %47, align 8
  store %struct.snd_pcm_runtime* %48, %struct.snd_pcm_runtime** %6, align 8
  store i32 0, i32* %10, align 4
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = call i64 @mutex_lock_interruptible(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @ERESTARTSYS, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %197

57:                                               ; preds = %45
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @PCM_ENABLE_OUTPUT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %57
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %107

69:                                               ; preds = %62
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %70, i32 0, i32 1
  %72 = call i64 @atomic_read(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %77 = call i32 @get_hw_ptr_period(%struct.snd_pcm_runtime* %76)
  %78 = call i32 @snd_pcm_oss_simulate_fill(%struct.snd_pcm_substream* %75, i32 %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* @SNDRV_PCM_IOCTL_START, align 4
  store i32 %85, i32* %10, align 4
  br label %106

86:                                               ; preds = %57
  %87 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  br label %107

93:                                               ; preds = %86
  %94 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 4
  %97 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @SNDRV_PCM_IOCTL_DROP, align 4
  store i32 %102, i32* %10, align 4
  %103 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %104 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %93, %79
  br label %107

107:                                              ; preds = %106, %92, %68
  %108 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %109 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %107
  %115 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %115, i32 %116, i32* null)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %197

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %107
  br label %124

124:                                              ; preds = %123, %42
  %125 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %126 = icmp ne %struct.snd_pcm_substream* %125, null
  br i1 %126, label %127, label %196

127:                                              ; preds = %124
  %128 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %128, i32 0, i32 0
  %130 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %129, align 8
  store %struct.snd_pcm_runtime* %130, %struct.snd_pcm_runtime** %6, align 8
  store i32 0, i32* %10, align 4
  %131 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = call i64 @mutex_lock_interruptible(i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i32, i32* @ERESTARTSYS, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %197

139:                                              ; preds = %127
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %139
  %145 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %146 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %179

151:                                              ; preds = %144
  %152 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %153 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  store i32 1, i32* %154, align 4
  %155 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %156 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %155, i32 0, i32 0
  store i32 1, i32* %156, align 4
  %157 = load i32, i32* @SNDRV_PCM_IOCTL_START, align 4
  store i32 %157, i32* %10, align 4
  br label %178

158:                                              ; preds = %139
  %159 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %160 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %158
  br label %179

165:                                              ; preds = %158
  %166 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %167 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  store i32 0, i32* %168, align 4
  %169 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %170 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %173 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @SNDRV_PCM_IOCTL_DROP, align 4
  store i32 %174, i32* %10, align 4
  %175 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %176 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  store i32 1, i32* %177, align 4
  br label %178

178:                                              ; preds = %165, %151
  br label %179

179:                                              ; preds = %178, %164, %150
  %180 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %181 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  %183 = call i32 @mutex_unlock(i32* %182)
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %179
  %187 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %187, i32 %188, i32* null)
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %3, align 4
  br label %197

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %194, %179
  br label %196

196:                                              ; preds = %195, %124
  store i32 0, i32* %3, align 4
  br label %197

197:                                              ; preds = %196, %192, %136, %120, %54, %39, %29
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @snd_pcm_oss_make_ready(%struct.snd_pcm_substream*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @snd_pcm_oss_simulate_fill(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @get_hw_ptr_period(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
