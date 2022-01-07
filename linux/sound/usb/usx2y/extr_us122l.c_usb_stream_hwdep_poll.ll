; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_us122l.c_usb_stream_hwdep_poll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_us122l.c_usb_stream_hwdep_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hwdep = type { %struct.us122l* }
%struct.us122l = type { i32, i32, %struct.file*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.usb_stream*, i32 }
%struct.usb_stream = type { i64, i32, i32 }
%struct.file = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@usb_stream_ready = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hwdep*, %struct.file*, i32*)* @usb_stream_hwdep_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_stream_hwdep_poll(%struct.snd_hwdep* %0, %struct.file* %1, i32* %2) #0 {
  %4 = alloca %struct.snd_hwdep*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.us122l*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_stream*, align 8
  store %struct.snd_hwdep* %0, %struct.snd_hwdep** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %12 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %11, i32 0, i32 0
  %13 = load %struct.us122l*, %struct.us122l** %12, align 8
  store %struct.us122l* %13, %struct.us122l** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = load %struct.us122l*, %struct.us122l** %7, align 8
  %16 = getelementptr inbounds %struct.us122l, %struct.us122l* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @poll_wait(%struct.file* %14, i32* %17, i32* %18)
  %20 = load i32, i32* @EPOLLIN, align 4
  %21 = load i32, i32* @EPOLLOUT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @EPOLLWRNORM, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @EPOLLERR, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.us122l*, %struct.us122l** %7, align 8
  %28 = getelementptr inbounds %struct.us122l, %struct.us122l* %27, i32 0, i32 1
  %29 = call i64 @mutex_trylock(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %79

31:                                               ; preds = %3
  %32 = load %struct.us122l*, %struct.us122l** %7, align 8
  %33 = getelementptr inbounds %struct.us122l, %struct.us122l* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.usb_stream*, %struct.usb_stream** %34, align 8
  store %struct.usb_stream* %35, %struct.usb_stream** %10, align 8
  %36 = load %struct.usb_stream*, %struct.usb_stream** %10, align 8
  %37 = icmp ne %struct.usb_stream* %36, null
  br i1 %37, label %38, label %75

38:                                               ; preds = %31
  %39 = load %struct.usb_stream*, %struct.usb_stream** %10, align 8
  %40 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @usb_stream_ready, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %38
  %45 = load %struct.us122l*, %struct.us122l** %7, align 8
  %46 = getelementptr inbounds %struct.us122l, %struct.us122l* %45, i32 0, i32 2
  %47 = load %struct.file*, %struct.file** %46, align 8
  %48 = load %struct.file*, %struct.file** %5, align 8
  %49 = icmp eq %struct.file* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.usb_stream*, %struct.usb_stream** %10, align 8
  %52 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %51, i32 0, i32 1
  store i32* %52, i32** %8, align 8
  br label %56

53:                                               ; preds = %44
  %54 = load %struct.us122l*, %struct.us122l** %7, align 8
  %55 = getelementptr inbounds %struct.us122l, %struct.us122l* %54, i32 0, i32 0
  store i32* %55, i32** %8, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.usb_stream*, %struct.usb_stream** %10, align 8
  %60 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load %struct.usb_stream*, %struct.usb_stream** %10, align 8
  %65 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @EPOLLIN, align 4
  %69 = load i32, i32* @EPOLLOUT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @EPOLLWRNORM, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %9, align 4
  br label %74

73:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %63
  br label %75

75:                                               ; preds = %74, %38, %31
  %76 = load %struct.us122l*, %struct.us122l** %7, align 8
  %77 = getelementptr inbounds %struct.us122l, %struct.us122l* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  br label %79

79:                                               ; preds = %75, %3
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
