; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_poll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.snd_rawmidi_file* }
%struct.snd_rawmidi_file = type { %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_rawmidi_runtime* }
%struct.snd_rawmidi_runtime = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @snd_rawmidi_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rawmidi_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.snd_rawmidi_file*, align 8
  %6 = alloca %struct.snd_rawmidi_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %9, align 8
  store %struct.snd_rawmidi_file* %10, %struct.snd_rawmidi_file** %5, align 8
  %11 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %5, align 8
  %12 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %5, align 8
  %17 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %19, align 8
  store %struct.snd_rawmidi_runtime* %20, %struct.snd_rawmidi_runtime** %6, align 8
  %21 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %5, align 8
  %22 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call i32 @snd_rawmidi_input_trigger(%struct.TYPE_3__* %23, i32 1)
  %25 = load %struct.file*, %struct.file** %3, align 8
  %26 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %6, align 8
  %27 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %26, i32 0, i32 0
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @poll_wait(%struct.file* %25, i32* %27, i32* %28)
  br label %30

30:                                               ; preds = %15, %2
  %31 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %5, align 8
  %32 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %5, align 8
  %37 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %39, align 8
  store %struct.snd_rawmidi_runtime* %40, %struct.snd_rawmidi_runtime** %6, align 8
  %41 = load %struct.file*, %struct.file** %3, align 8
  %42 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %6, align 8
  %43 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %42, i32 0, i32 0
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @poll_wait(%struct.file* %41, i32* %43, i32* %44)
  br label %46

46:                                               ; preds = %35, %30
  store i32 0, i32* %7, align 4
  %47 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %5, align 8
  %48 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %5, align 8
  %53 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = call i64 @snd_rawmidi_ready(%struct.TYPE_3__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* @EPOLLIN, align 4
  %59 = load i32, i32* @EPOLLRDNORM, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63, %46
  %65 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %5, align 8
  %66 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = icmp ne %struct.TYPE_3__* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %5, align 8
  %71 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = call i64 @snd_rawmidi_ready(%struct.TYPE_3__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32, i32* @EPOLLOUT, align 4
  %77 = load i32, i32* @EPOLLWRNORM, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %75, %69
  br label %82

82:                                               ; preds = %81, %64
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @snd_rawmidi_input_trigger(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @snd_rawmidi_ready(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
