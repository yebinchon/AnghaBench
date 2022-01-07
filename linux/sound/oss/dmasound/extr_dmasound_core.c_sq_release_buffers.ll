; ModuleID = '/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_core.c_sq_release_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_core.c_sq_release_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i32)* }
%struct.sound_queue = type { i32, i32*, i32 }

@dmasound = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sound_queue*)* @sq_release_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sq_release_buffers(%struct.sound_queue* %0) #0 {
  %2 = alloca %struct.sound_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.sound_queue* %0, %struct.sound_queue** %2, align 8
  %4 = load %struct.sound_queue*, %struct.sound_queue** %2, align 8
  %5 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %28, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.sound_queue*, %struct.sound_queue** %2, align 8
  %12 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 0, i32 0), align 8
  %17 = load %struct.sound_queue*, %struct.sound_queue** %2, align 8
  %18 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sound_queue*, %struct.sound_queue** %2, align 8
  %25 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %16(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.sound_queue*, %struct.sound_queue** %2, align 8
  %33 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @kfree(i32* %34)
  %36 = load %struct.sound_queue*, %struct.sound_queue** %2, align 8
  %37 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
