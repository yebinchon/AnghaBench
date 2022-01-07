; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_update_audio_pipe_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_update_audio_pipe_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcxhr = type { i32*, i32*, i64*, i32, %struct.TYPE_2__*, i32, %struct.pcxhr_pipe, %struct.pcxhr_pipe* }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_pipe = type { i32 }
%struct.pcxhr_rmh = type { i32*, i32 }

@CMD_AUDIO_LEVEL_ADJUST = common dso_local global i32 0, align 4
@VALID_AUDIO_IO_DIGITAL_LEVEL = common dso_local global i32 0, align 4
@VALID_AUDIO_IO_MONITOR_LEVEL = common dso_local global i32 0, align 4
@VALID_AUDIO_IO_MUTE_MONITOR_1 = common dso_local global i32 0, align 4
@AUDIO_IO_HAS_MUTE_MONITOR_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"error update_audio_level(%d) err=%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcxhr*, i32, i32)* @pcxhr_update_audio_pipe_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_update_audio_pipe_level(%struct.snd_pcxhr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcxhr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcxhr_rmh, align 8
  %10 = alloca %struct.pcxhr_pipe*, align 8
  store %struct.snd_pcxhr* %0, %struct.snd_pcxhr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %14, i32 0, i32 7
  %16 = load %struct.pcxhr_pipe*, %struct.pcxhr_pipe** %15, align 8
  %17 = getelementptr inbounds %struct.pcxhr_pipe, %struct.pcxhr_pipe* %16, i64 0
  store %struct.pcxhr_pipe* %17, %struct.pcxhr_pipe** %10, align 8
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %20 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %19, i32 0, i32 6
  store %struct.pcxhr_pipe* %20, %struct.pcxhr_pipe** %10, align 8
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* @CMD_AUDIO_LEVEL_ADJUST, align 4
  %23 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %9, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.pcxhr_pipe*, %struct.pcxhr_pipe** %10, align 8
  %27 = getelementptr inbounds %struct.pcxhr_pipe, %struct.pcxhr_pipe* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = shl i32 1, %29
  %31 = call i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh* %9, i32 %24, i32 0, i32 0, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %21
  %35 = load i32, i32* @VALID_AUDIO_IO_DIGITAL_LEVEL, align 4
  %36 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %42 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %47, i32* %50, align 4
  br label %87

51:                                               ; preds = %21
  %52 = load i32, i32* @VALID_AUDIO_IO_MONITOR_LEVEL, align 4
  %53 = load i32, i32* @VALID_AUDIO_IO_MUTE_MONITOR_1, align 4
  %54 = or i32 %52, %53
  %55 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %61 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 10
  %68 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %67, i32* %70, align 4
  %71 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %72 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %51
  %80 = load i32, i32* @AUDIO_IO_HAS_MUTE_MONITOR_1, align 4
  %81 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %80
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %79, %51
  br label %87

87:                                               ; preds = %86, %34
  %88 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 1
  store i32 3, i32* %88, align 8
  %89 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %90 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pcxhr_send_msg(i32 %91, %struct.pcxhr_rmh* %9)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %87
  %96 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %97 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %96, i32 0, i32 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %102 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @dev_dbg(i32 %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %109

108:                                              ; preds = %87
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %95
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh*, i32, i32, i32, i32) #1

declare dso_local i32 @pcxhr_send_msg(i32, %struct.pcxhr_rmh*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
