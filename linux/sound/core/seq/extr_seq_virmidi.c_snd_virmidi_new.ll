; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_rawmidi = type { i32, i32*, i32, %struct.snd_virmidi_dev*, i32, i32 }
%struct.snd_virmidi_dev = type { i32, i32, i32, i32, i32, i32, %struct.snd_rawmidi*, %struct.snd_card* }

@.str = private unnamed_addr constant [8 x i8] c"VirMidi\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_VIRMIDI_SEQ_DISPATCH = common dso_local global i32 0, align 4
@snd_virmidi_free = common dso_local global i32 0, align 4
@snd_virmidi_global_ops = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@snd_virmidi_input_ops = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@snd_virmidi_output_ops = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_virmidi_new(%struct.snd_card* %0, i32 %1, %struct.snd_rawmidi** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_rawmidi**, align 8
  %8 = alloca %struct.snd_rawmidi*, align 8
  %9 = alloca %struct.snd_virmidi_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_rawmidi** %2, %struct.snd_rawmidi*** %7, align 8
  %11 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %7, align 8
  store %struct.snd_rawmidi* null, %struct.snd_rawmidi** %11, align 8
  %12 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @snd_rawmidi_new(%struct.snd_card* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13, i32 16, i32 16, %struct.snd_rawmidi** %8)
  store i32 %14, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %83

18:                                               ; preds = %3
  %19 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %20 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %23 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strcpy(i32 %21, i32 %24)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.snd_virmidi_dev* @kzalloc(i32 40, i32 %26)
  store %struct.snd_virmidi_dev* %27, %struct.snd_virmidi_dev** %9, align 8
  %28 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %9, align 8
  %29 = icmp eq %struct.snd_virmidi_dev* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %32 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %33 = call i32 @snd_device_free(%struct.snd_card* %31, %struct.snd_rawmidi* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %83

36:                                               ; preds = %18
  %37 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %38 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %9, align 8
  %39 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %38, i32 0, i32 7
  store %struct.snd_card* %37, %struct.snd_card** %39, align 8
  %40 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %41 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %9, align 8
  %42 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %41, i32 0, i32 6
  store %struct.snd_rawmidi* %40, %struct.snd_rawmidi** %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %9, align 8
  %45 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %9, align 8
  %47 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %46, i32 0, i32 1
  store i32 -1, i32* %47, align 4
  %48 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %9, align 8
  %49 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %48, i32 0, i32 5
  %50 = call i32 @init_rwsem(i32* %49)
  %51 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %9, align 8
  %52 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %51, i32 0, i32 4
  %53 = call i32 @rwlock_init(i32* %52)
  %54 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %9, align 8
  %55 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %54, i32 0, i32 3
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load i32, i32* @SNDRV_VIRMIDI_SEQ_DISPATCH, align 4
  %58 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %9, align 8
  %59 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %9, align 8
  %61 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %62 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %61, i32 0, i32 3
  store %struct.snd_virmidi_dev* %60, %struct.snd_virmidi_dev** %62, align 8
  %63 = load i32, i32* @snd_virmidi_free, align 4
  %64 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %65 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %67 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %66, i32 0, i32 1
  store i32* @snd_virmidi_global_ops, i32** %67, align 8
  %68 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %69 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %70 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %68, i32 %69, i32* @snd_virmidi_input_ops)
  %71 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %72 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %73 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %71, i32 %72, i32* @snd_virmidi_output_ops)
  %74 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %75 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %80 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %82 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %7, align 8
  store %struct.snd_rawmidi* %81, %struct.snd_rawmidi** %82, align 8
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %36, %30, %16
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @snd_rawmidi_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_rawmidi**) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local %struct.snd_virmidi_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_device_free(%struct.snd_card*, %struct.snd_rawmidi*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
