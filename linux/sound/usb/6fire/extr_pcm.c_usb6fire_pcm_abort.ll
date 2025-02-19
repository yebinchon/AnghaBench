; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_abort.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfire_chip = type { %struct.pcm_runtime* }
%struct.pcm_runtime = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@PCM_N_URBS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb6fire_pcm_abort(%struct.sfire_chip* %0) #0 {
  %2 = alloca %struct.sfire_chip*, align 8
  %3 = alloca %struct.pcm_runtime*, align 8
  %4 = alloca i32, align 4
  store %struct.sfire_chip* %0, %struct.sfire_chip** %2, align 8
  %5 = load %struct.sfire_chip*, %struct.sfire_chip** %2, align 8
  %6 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %5, i32 0, i32 0
  %7 = load %struct.pcm_runtime*, %struct.pcm_runtime** %6, align 8
  store %struct.pcm_runtime* %7, %struct.pcm_runtime** %3, align 8
  %8 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %9 = icmp ne %struct.pcm_runtime* %8, null
  br i1 %9, label %10, label %62

10:                                               ; preds = %1
  %11 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %20 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @snd_pcm_stop_xrun(i64 %22)
  br label %24

24:                                               ; preds = %18, %10
  %25 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %26 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %32 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @snd_pcm_stop_xrun(i64 %34)
  br label %36

36:                                               ; preds = %30, %24
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @PCM_N_URBS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %43 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @usb_poison_urb(i32* %48)
  %50 = load %struct.pcm_runtime*, %struct.pcm_runtime** %3, align 8
  %51 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = call i32 @usb_poison_urb(i32* %56)
  br label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %37

61:                                               ; preds = %37
  br label %62

62:                                               ; preds = %61, %1
  ret void
}

declare dso_local i32 @snd_pcm_stop_xrun(i64) #1

declare dso_local i32 @usb_poison_urb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
