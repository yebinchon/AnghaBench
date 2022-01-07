; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_snd_emux_sounds_off_all.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_snd_emux_sounds_off_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_port = type { %struct.snd_emux* }
%struct.snd_emux = type { i32, i32, %struct.TYPE_2__, %struct.snd_emux_voice* }
%struct.TYPE_2__ = type { i32 (%struct.snd_emux*, i32)*, i32 (%struct.snd_emux_voice*)*, i32 }
%struct.snd_emux_voice = type { i64, %struct.snd_emux_port* }

@SNDRV_EMUX_ST_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_sounds_off_all(%struct.snd_emux_port* %0) #0 {
  %2 = alloca %struct.snd_emux_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emux*, align 8
  %5 = alloca %struct.snd_emux_voice*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_emux_port* %0, %struct.snd_emux_port** %2, align 8
  %7 = load %struct.snd_emux_port*, %struct.snd_emux_port** %2, align 8
  %8 = icmp ne %struct.snd_emux_port* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @snd_BUG_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %109

14:                                               ; preds = %1
  %15 = load %struct.snd_emux_port*, %struct.snd_emux_port** %2, align 8
  %16 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %15, i32 0, i32 0
  %17 = load %struct.snd_emux*, %struct.snd_emux** %16, align 8
  store %struct.snd_emux* %17, %struct.snd_emux** %4, align 8
  %18 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %19 = icmp ne %struct.snd_emux* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %22 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %20, %14
  %28 = phi i1 [ true, %14 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @snd_BUG_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %109

33:                                               ; preds = %27
  %34 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %35 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %34, i32 0, i32 1
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %101, %33
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %41 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %104

44:                                               ; preds = %38
  %45 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %46 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %45, i32 0, i32 3
  %47 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %47, i64 %49
  store %struct.snd_emux_voice* %50, %struct.snd_emux_voice** %5, align 8
  %51 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %52 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @STATE_IS_PLAYING(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %44
  %57 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %58 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %57, i32 0, i32 1
  %59 = load %struct.snd_emux_port*, %struct.snd_emux_port** %58, align 8
  %60 = load %struct.snd_emux_port*, %struct.snd_emux_port** %2, align 8
  %61 = icmp eq %struct.snd_emux_port* %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %64 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %65 = call i32 @terminate_voice(%struct.snd_emux* %63, %struct.snd_emux_voice* %64, i32 0)
  br label %66

66:                                               ; preds = %62, %56, %44
  %67 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %68 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SNDRV_EMUX_ST_OFF, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %66
  %73 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %74 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)** %75, align 8
  %77 = icmp ne i32 (%struct.snd_emux_voice*)* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %80 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)** %81, align 8
  %83 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %84 = call i32 %82(%struct.snd_emux_voice* %83)
  br label %85

85:                                               ; preds = %78, %72
  %86 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %87 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32 (%struct.snd_emux*, i32)*, i32 (%struct.snd_emux*, i32)** %88, align 8
  %90 = icmp ne i32 (%struct.snd_emux*, i32)* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %93 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32 (%struct.snd_emux*, i32)*, i32 (%struct.snd_emux*, i32)** %94, align 8
  %96 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %97 = load i32, i32* %3, align 4
  %98 = call i32 %95(%struct.snd_emux* %96, i32 %97)
  br label %99

99:                                               ; preds = %91, %85
  br label %100

100:                                              ; preds = %99, %66
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %38

104:                                              ; preds = %38
  %105 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %106 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %105, i32 0, i32 1
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  br label %109

109:                                              ; preds = %104, %32, %13
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @STATE_IS_PLAYING(i64) #1

declare dso_local i32 @terminate_voice(%struct.snd_emux*, %struct.snd_emux_voice*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
