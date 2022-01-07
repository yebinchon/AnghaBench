; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_stream_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_stream_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_runtime = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"channel count mismatch: %d vs %d\00", align 1
@CMD_0C_DEF_STREAM = common dso_local global i32 0, align 4
@STREAM_FMT_16b = common dso_local global i32 0, align 4
@STREAM_FMT_OFFSET = common dso_local global i32 0, align 4
@STREAM_FMT_intel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lx_stream_set_format(%struct.lx6464es* %0, %struct.snd_pcm_runtime* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lx6464es*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %5, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @PIPE_INFO_TO_CMD(i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %4
  %24 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %25 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %23, %4
  %35 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %36 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %39 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %38, i32 0, i32 1
  %40 = load i32, i32* @CMD_0C_DEF_STREAM, align 4
  %41 = call i32 @lx_message_init(%struct.TYPE_5__* %39, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %44 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %42
  store i32 %49, i32* %47, align 4
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 16
  br i1 %53, label %54, label %65

54:                                               ; preds = %34
  %55 = load i32, i32* @STREAM_FMT_16b, align 4
  %56 = load i32, i32* @STREAM_FMT_OFFSET, align 4
  %57 = shl i32 %55, %56
  %58 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %59 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %57
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %54, %34
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @snd_pcm_format_little_endian(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load i32, i32* @STREAM_FMT_intel, align 4
  %73 = load i32, i32* @STREAM_FMT_OFFSET, align 4
  %74 = shl i32 %72, %73
  %75 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %76 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %74
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %71, %65
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %86 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %84
  store i32 %91, i32* %89, align 4
  %92 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %93 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %94 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %93, i32 0, i32 1
  %95 = call i32 @lx_message_send_atomic(%struct.lx6464es* %92, %struct.TYPE_5__* %94)
  store i32 %95, i32* %9, align 4
  %96 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %97 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %9, align 4
  ret i32 %99
}

declare dso_local i32 @PIPE_INFO_TO_CMD(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lx_message_init(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @snd_pcm_format_little_endian(i32) #1

declare dso_local i32 @lx_message_send_atomic(%struct.lx6464es*, %struct.TYPE_5__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
