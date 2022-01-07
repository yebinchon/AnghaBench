; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_drain_output.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_drain_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__*, i32, %struct.snd_rawmidi_runtime* }
%struct.TYPE_2__ = type { {}* }
%struct.snd_rawmidi_runtime = type { i32, i64, i64, i32 }

@HZ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"rawmidi drain error (avail = %li, buffer_size = %li)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_rawmidi_drain_output(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_rawmidi_runtime*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %6, i32 0, i32 2
  %8 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  store %struct.snd_rawmidi_runtime* %8, %struct.snd_rawmidi_runtime** %5, align 8
  store i32 0, i32* %3, align 4
  %9 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %10 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %12 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %15 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %18 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 10, %22
  %24 = call i64 @wait_event_interruptible_timeout(i32 %13, i32 %21, i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i32, i32* @current, align 4
  %26 = call i64 @signal_pending(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @ERESTARTSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %33 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %36 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %31
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %39
  %43 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %44 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %47 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %50 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @rmidi_warn(i32 %45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %51)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %42, %39, %31
  %56 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %57 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @ERESTARTSYS, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %55
  %63 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %64 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = bitcast {}** %66 to i32 (%struct.snd_rawmidi_substream*)**
  %68 = load i32 (%struct.snd_rawmidi_substream*)*, i32 (%struct.snd_rawmidi_substream*)** %67, align 8
  %69 = icmp ne i32 (%struct.snd_rawmidi_substream*)* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %72 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = bitcast {}** %74 to i32 (%struct.snd_rawmidi_substream*)**
  %76 = load i32 (%struct.snd_rawmidi_substream*)*, i32 (%struct.snd_rawmidi_substream*)** %75, align 8
  %77 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %78 = call i32 %76(%struct.snd_rawmidi_substream* %77)
  br label %81

79:                                               ; preds = %62
  %80 = call i32 @msleep(i32 50)
  br label %81

81:                                               ; preds = %79, %70
  %82 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %83 = call i32 @snd_rawmidi_drop_output(%struct.snd_rawmidi_substream* %82)
  br label %84

84:                                               ; preds = %81, %55
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @rmidi_warn(i32, i8*, i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_rawmidi_drop_output(%struct.snd_rawmidi_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
