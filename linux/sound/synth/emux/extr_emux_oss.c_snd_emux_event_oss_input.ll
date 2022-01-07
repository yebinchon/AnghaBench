; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_snd_emux_event_oss_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_snd_emux_event_oss_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.snd_emux = type { i32 }
%struct.snd_emux_port = type { %struct.snd_emux* }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_OSS = common dso_local global i64 0, align 8
@_EMUX_OSS_MODE_VALUE_MASK = common dso_local global i8 0, align 1
@_EMUX_OSS_MODE_FLAG = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_event*, i32, i8*, i32, i32)* @snd_emux_event_oss_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emux_event_oss_input(%struct.snd_seq_event* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_emux*, align 8
  %13 = alloca %struct.snd_emux_port*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  store %struct.snd_seq_event* %0, %struct.snd_seq_event** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.snd_emux_port*
  store %struct.snd_emux_port* %17, %struct.snd_emux_port** %13, align 8
  %18 = load %struct.snd_emux_port*, %struct.snd_emux_port** %13, align 8
  %19 = icmp ne %struct.snd_emux_port* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %99

27:                                               ; preds = %5
  %28 = load %struct.snd_emux_port*, %struct.snd_emux_port** %13, align 8
  %29 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %28, i32 0, i32 0
  %30 = load %struct.snd_emux*, %struct.snd_emux** %29, align 8
  store %struct.snd_emux* %30, %struct.snd_emux** %12, align 8
  %31 = load %struct.snd_emux*, %struct.snd_emux** %12, align 8
  %32 = icmp ne %struct.snd_emux* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @snd_BUG_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %99

40:                                               ; preds = %27
  %41 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %42 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SNDRV_SEQ_EVENT_OSS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @snd_emux_event_input(%struct.snd_seq_event* %47, i32 %48, i8* %49, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %99

53:                                               ; preds = %40
  %54 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %55 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %15, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 254
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %99

65:                                               ; preds = %53
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* @_EMUX_OSS_MODE_VALUE_MASK, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %69, %71
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %14, align 1
  %74 = load i8*, i8** %15, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @_EMUX_OSS_MODE_FLAG, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %65
  %83 = load %struct.snd_emux*, %struct.snd_emux** %12, align 8
  %84 = load %struct.snd_emux_port*, %struct.snd_emux_port** %13, align 8
  %85 = load i8, i8* %14, align 1
  %86 = load i8*, i8** %15, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @emuspec_control(%struct.snd_emux* %83, %struct.snd_emux_port* %84, i8 zeroext %85, i8* %86, i32 %87, i32 %88)
  br label %98

90:                                               ; preds = %65
  %91 = load %struct.snd_emux*, %struct.snd_emux** %12, align 8
  %92 = load %struct.snd_emux_port*, %struct.snd_emux_port** %13, align 8
  %93 = load i8, i8* %14, align 1
  %94 = load i8*, i8** %15, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @gusspec_control(%struct.snd_emux* %91, %struct.snd_emux_port* %92, i8 zeroext %93, i8* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %90, %82
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %64, %46, %37, %24
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_emux_event_input(%struct.snd_seq_event*, i32, i8*, i32, i32) #1

declare dso_local i32 @emuspec_control(%struct.snd_emux*, %struct.snd_emux_port*, i8 zeroext, i8*, i32, i32) #1

declare dso_local i32 @gusspec_control(%struct.snd_emux*, %struct.snd_emux_port*, i8 zeroext, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
