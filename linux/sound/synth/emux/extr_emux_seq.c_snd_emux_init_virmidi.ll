; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_seq.c_snd_emux_init_virmidi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_seq.c_snd_emux_init_virmidi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32, i8*, %struct.snd_rawmidi**, i32*, i32, i64 }
%struct.snd_rawmidi = type { i32, %struct.snd_virmidi_dev* }
%struct.snd_virmidi_dev = type { i32, i32, i32 }
%struct.snd_card = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s Synth MIDI\00", align 1
@SNDRV_VIRMIDI_SEQ_ATTACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emux_init_virmidi(%struct.snd_emux* %0, %struct.snd_card* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emux*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_rawmidi*, align 8
  %8 = alloca %struct.snd_virmidi_dev*, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %4, align 8
  store %struct.snd_card* %1, %struct.snd_card** %5, align 8
  %9 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %10 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %9, i32 0, i32 2
  store %struct.snd_rawmidi** null, %struct.snd_rawmidi*** %10, align 8
  %11 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %12 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %102

16:                                               ; preds = %2
  %17 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %18 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.snd_rawmidi** @kcalloc(i32 %19, i32 8, i32 %20)
  %22 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %23 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %22, i32 0, i32 2
  store %struct.snd_rawmidi** %21, %struct.snd_rawmidi*** %23, align 8
  %24 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %25 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %24, i32 0, i32 2
  %26 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %25, align 8
  %27 = icmp ne %struct.snd_rawmidi** %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %102

31:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %93, %31
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %35 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %96

38:                                               ; preds = %32
  %39 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %40 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %41 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = call i64 @snd_virmidi_new(%struct.snd_card* %39, i64 %45, %struct.snd_rawmidi** %7)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %97

49:                                               ; preds = %38
  %50 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %7, align 8
  %51 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %50, i32 0, i32 1
  %52 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %51, align 8
  store %struct.snd_virmidi_dev* %52, %struct.snd_virmidi_dev** %8, align 8
  %53 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %7, align 8
  %54 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %57 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @sprintf(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @SNDRV_VIRMIDI_SEQ_ATTACH, align 4
  %61 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %8, align 8
  %62 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %64 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %8, align 8
  %67 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %69 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %8, align 8
  %76 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %78 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %7, align 8
  %79 = call i64 @snd_device_register(%struct.snd_card* %77, %struct.snd_rawmidi* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %49
  %82 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %83 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %7, align 8
  %84 = call i32 @snd_device_free(%struct.snd_card* %82, %struct.snd_rawmidi* %83)
  br label %97

85:                                               ; preds = %49
  %86 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %7, align 8
  %87 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %88 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %87, i32 0, i32 2
  %89 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.snd_rawmidi*, %struct.snd_rawmidi** %89, i64 %91
  store %struct.snd_rawmidi* %86, %struct.snd_rawmidi** %92, align 8
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %32

96:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %102

97:                                               ; preds = %81, %48
  %98 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %99 = call i32 @snd_emux_delete_virmidi(%struct.snd_emux* %98)
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %97, %96, %28, %15
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.snd_rawmidi** @kcalloc(i32, i32, i32) #1

declare dso_local i64 @snd_virmidi_new(%struct.snd_card*, i64, %struct.snd_rawmidi**) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i64 @snd_device_register(%struct.snd_card*, %struct.snd_rawmidi*) #1

declare dso_local i32 @snd_device_free(%struct.snd_card*, %struct.snd_rawmidi*) #1

declare dso_local i32 @snd_emux_delete_virmidi(%struct.snd_emux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
