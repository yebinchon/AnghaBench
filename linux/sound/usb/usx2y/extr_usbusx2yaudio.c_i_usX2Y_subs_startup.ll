; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_i_usX2Y_subs_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_i_usX2Y_subs_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.snd_usX2Y_substream* }
%struct.snd_usX2Y_substream = type { i32, %struct.TYPE_2__**, %struct.usX2Ydev* }
%struct.TYPE_2__ = type { i64 }
%struct.usX2Ydev = type { i32, %struct.snd_usX2Y_substream* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @i_usX2Y_subs_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i_usX2Y_subs_startup(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.snd_usX2Y_substream*, align 8
  %4 = alloca %struct.usX2Ydev*, align 8
  %5 = alloca %struct.snd_usX2Y_substream*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 1
  %8 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  store %struct.snd_usX2Y_substream* %8, %struct.snd_usX2Y_substream** %3, align 8
  %9 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %9, i32 0, i32 2
  %11 = load %struct.usX2Ydev*, %struct.usX2Ydev** %10, align 8
  store %struct.usX2Ydev* %11, %struct.usX2Ydev** %4, align 8
  %12 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %13 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %12, i32 0, i32 1
  %14 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %13, align 8
  store %struct.snd_usX2Y_substream* %14, %struct.snd_usX2Y_substream** %5, align 8
  %15 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %16 = icmp ne %struct.snd_usX2Y_substream* null, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = load %struct.urb*, %struct.urb** %2, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %22 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %20, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %17
  %30 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %31 = call i32 @usX2Y_subs_startup_finish(%struct.usX2Ydev* %30)
  %32 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %33 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %32, i32 0, i32 0
  %34 = call i32 @atomic_inc(i32* %33)
  %35 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %36 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %35, i32 0, i32 0
  %37 = call i32 @wake_up(i32* %36)
  br label %38

38:                                               ; preds = %29, %17
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.urb*, %struct.urb** %2, align 8
  %41 = call i32 @i_usX2Y_urb_complete(%struct.urb* %40)
  ret void
}

declare dso_local i32 @usX2Y_subs_startup_finish(%struct.usX2Ydev*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @i_usX2Y_urb_complete(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
