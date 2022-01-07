; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_update_r_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_update_r_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_stream = type { %struct.TYPE_4__*, %struct.snd_pcm_substream* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_substream = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pcxhr_rmh = type { i32*, i32 }
%struct.snd_pcxhr = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"pcxhr_update_r_buffer(pcm%c%d) : addr(%p) bytes(%zx) subs(%d)\0A\00", align 1
@CMD_UPDATE_R_BUFFERS = common dso_local global i32 0, align 4
@MASK_DSP_WORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR CMD_UPDATE_R_BUFFERS err=%x;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_stream*)* @pcxhr_update_r_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_update_r_buffer(%struct.pcxhr_stream* %0) #0 {
  %2 = alloca %struct.pcxhr_stream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcxhr_rmh, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcxhr*, align 8
  store %struct.pcxhr_stream* %0, %struct.pcxhr_stream** %2, align 8
  %9 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %2, align 8
  %10 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  store %struct.snd_pcm_substream* %11, %struct.snd_pcm_substream** %7, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %13 = call %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %12)
  store %struct.snd_pcxhr* %13, %struct.snd_pcxhr** %8, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi i32 [ 0, %22 ], [ %26, %23 ]
  store i32 %28, i32* %5, align 4
  %29 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %8, align 8
  %30 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 99, i32 112
  %38 = trunc i32 %37 to i8
  %39 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %8, align 8
  %40 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8 signext %38, i32 %41, i8* %48, i32 %53, i32 %56)
  %58 = load i32, i32* @CMD_UPDATE_R_BUFFERS, align 4
  %59 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %6, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %2, align 8
  %62 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh* %6, i32 %60, i32 %65, i32 %66, i32 0)
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %72, 2097152
  %74 = zext i1 %73 to i32
  %75 = call i32 @snd_BUG_ON(i32 %74)
  %76 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 8
  %82 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %6, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 24
  %91 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %6, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  store i32 %90, i32* %93, align 4
  %94 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %6, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, 524288
  store i32 %98, i32* %96, align 4
  %99 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %99, i32 0, i32 2
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MASK_DSP_WORD, align 4
  %105 = and i32 %103, %104
  %106 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %6, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  store i32 %105, i32* %108, align 4
  %109 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %6, i32 0, i32 1
  store i32 4, i32* %109, align 8
  %110 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %8, align 8
  %111 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @pcxhr_send_msg(i32 %112, %struct.pcxhr_rmh* %6)
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* %3, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %27
  %117 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %8, align 8
  %118 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @dev_err(i32 %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %116, %27
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 signext, i32, i8*, i32, i32) #1

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @pcxhr_send_msg(i32, %struct.pcxhr_rmh*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
