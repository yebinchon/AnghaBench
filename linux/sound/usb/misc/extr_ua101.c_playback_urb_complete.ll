; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_playback_urb_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_playback_urb_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.ua101_urb = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, %struct.ua101* }
%struct.TYPE_8__ = type { i32 }
%struct.ua101 = type { i64, i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@USB_PLAYBACK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @playback_urb_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @playback_urb_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.ua101_urb*, align 8
  %4 = alloca %struct.ua101*, align 8
  %5 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = bitcast %struct.urb* %6 to %struct.ua101_urb*
  store %struct.ua101_urb* %7, %struct.ua101_urb** %3, align 8
  %8 = load %struct.ua101_urb*, %struct.ua101_urb** %3, align 8
  %9 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %11 = load %struct.ua101*, %struct.ua101** %10, align 8
  store %struct.ua101* %11, %struct.ua101** %4, align 8
  %12 = load %struct.ua101_urb*, %struct.ua101_urb** %3, align 8
  %13 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %43, label %19

19:                                               ; preds = %1
  %20 = load %struct.ua101_urb*, %struct.ua101_urb** %3, align 8
  %21 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %43, label %27

27:                                               ; preds = %19
  %28 = load %struct.ua101_urb*, %struct.ua101_urb** %3, align 8
  %29 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ECONNRESET, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load %struct.ua101_urb*, %struct.ua101_urb** %3, align 8
  %37 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ESHUTDOWN, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br label %43

43:                                               ; preds = %35, %27, %19, %1
  %44 = phi i1 [ true, %27 ], [ true, %19 ], [ true, %1 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.ua101*, %struct.ua101** %4, align 8
  %50 = call i32 @abort_usb_playback(%struct.ua101* %49)
  %51 = load %struct.ua101*, %struct.ua101** %4, align 8
  %52 = call i32 @abort_alsa_playback(%struct.ua101* %51)
  br label %103

53:                                               ; preds = %43
  %54 = load i32, i32* @USB_PLAYBACK_RUNNING, align 4
  %55 = load %struct.ua101*, %struct.ua101** %4, align 8
  %56 = getelementptr inbounds %struct.ua101, %struct.ua101* %55, i32 0, i32 5
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %103

59:                                               ; preds = %53
  %60 = load %struct.ua101*, %struct.ua101** %4, align 8
  %61 = getelementptr inbounds %struct.ua101, %struct.ua101* %60, i32 0, i32 1
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %struct.ua101_urb*, %struct.ua101_urb** %3, align 8
  %65 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %64, i32 0, i32 1
  %66 = load %struct.ua101*, %struct.ua101** %4, align 8
  %67 = getelementptr inbounds %struct.ua101, %struct.ua101* %66, i32 0, i32 4
  %68 = call i32 @list_add_tail(i32* %65, i32* %67)
  %69 = load %struct.ua101*, %struct.ua101** %4, align 8
  %70 = getelementptr inbounds %struct.ua101, %struct.ua101* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load %struct.ua101*, %struct.ua101** %4, align 8
  %75 = getelementptr inbounds %struct.ua101, %struct.ua101* %74, i32 0, i32 3
  %76 = call i32 @tasklet_schedule(i32* %75)
  br label %77

77:                                               ; preds = %73, %59
  %78 = load %struct.ua101_urb*, %struct.ua101_urb** %3, align 8
  %79 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ua101*, %struct.ua101** %4, align 8
  %86 = getelementptr inbounds %struct.ua101, %struct.ua101* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sdiv i32 %84, %88
  %90 = load %struct.ua101*, %struct.ua101** %4, align 8
  %91 = getelementptr inbounds %struct.ua101, %struct.ua101* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, %89
  store i32 %98, i32* %96, align 4
  %99 = load %struct.ua101*, %struct.ua101** %4, align 8
  %100 = getelementptr inbounds %struct.ua101, %struct.ua101* %99, i32 0, i32 1
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  br label %103

103:                                              ; preds = %48, %77, %53
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @abort_usb_playback(%struct.ua101*) #1

declare dso_local i32 @abort_alsa_playback(%struct.ua101*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
