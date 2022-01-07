; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_mixer.c_mixart_update_monitoring.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_mixer.c_mixart_update_monitoring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixart = type { i64*, i32, %struct.TYPE_4__*, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.mixart_msg = type { i32, %struct.mixart_set_out_audio_level*, i32, i32 }
%struct.mixart_set_out_audio_level = type { i32, i32, i32 }

@PIPE_UNDEFINED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MSG_CONNECTOR_SET_OUT_AUDIO_LEVEL = common dso_local global i32 0, align 4
@MIXART_AUDIO_LEVEL_MONITOR_MASK = common dso_local global i32 0, align 4
@MIXART_AUDIO_LEVEL_MUTE_M1_MASK = common dso_local global i32 0, align 4
@mixart_digital_level = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"error MSG_CONNECTOR_SET_OUT_AUDIO_LEVEL card(%d) resp(%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixart*, i32)* @mixart_update_monitoring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixart_update_monitoring(%struct.snd_mixart* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_mixart*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mixart_msg, align 8
  %8 = alloca %struct.mixart_set_out_audio_level, align 4
  %9 = alloca i64, align 8
  store %struct.snd_mixart* %0, %struct.snd_mixart** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %11 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PIPE_UNDEFINED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %93

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %24 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %7, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  br label %34

28:                                               ; preds = %19
  %29 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %30 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %7, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @MSG_CONNECTOR_SET_OUT_AUDIO_LEVEL, align 4
  %36 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %7, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %7, i32 0, i32 1
  store %struct.mixart_set_out_audio_level* %8, %struct.mixart_set_out_audio_level** %37, align 8
  %38 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %7, i32 0, i32 0
  store i32 12, i32* %38, align 8
  %39 = call i32 @memset(%struct.mixart_set_out_audio_level* %8, i32 0, i32 12)
  %40 = load i32, i32* @MIXART_AUDIO_LEVEL_MONITOR_MASK, align 4
  %41 = load i32, i32* @MIXART_AUDIO_LEVEL_MUTE_M1_MASK, align 4
  %42 = or i32 %40, %41
  %43 = getelementptr inbounds %struct.mixart_set_out_audio_level, %struct.mixart_set_out_audio_level* %8, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** @mixart_digital_level, align 8
  %45 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %46 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %47, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %44, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.mixart_set_out_audio_level, %struct.mixart_set_out_audio_level* %8, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %58 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = getelementptr inbounds %struct.mixart_set_out_audio_level, %struct.mixart_set_out_audio_level* %8, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %71 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @snd_mixart_send_msg(i32 %72, %struct.mixart_msg* %7, i32 8, i64* %9)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %34
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %76, %34
  %80 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %81 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %86 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @dev_dbg(i32 %84, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %87, i64 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %93

92:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %79, %16
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @memset(%struct.mixart_set_out_audio_level*, i32, i32) #1

declare dso_local i32 @snd_mixart_send_msg(i32, %struct.mixart_msg*, i32, i64*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
