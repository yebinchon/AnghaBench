; ModuleID = '/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_core.c_sq_open2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_core.c_sq_open2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sound_queue = type { i32, i32, i32 }
%struct.file = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sound_queue*, %struct.file*, i32, i32, i32)* @sq_open2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sq_open2(%struct.sound_queue* %0, %struct.file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sound_queue*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sound_queue* %0, %struct.sound_queue** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.file*, %struct.file** %8, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %5
  %20 = load %struct.sound_queue*, %struct.sound_queue** %7, align 8
  %21 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %49

27:                                               ; preds = %19
  %28 = load %struct.sound_queue*, %struct.sound_queue** %7, align 8
  %29 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.sound_queue*, %struct.sound_queue** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @sq_allocate_buffers(%struct.sound_queue* %30, i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.sound_queue*, %struct.sound_queue** %7, align 8
  %37 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %6, align 4
  br label %49

39:                                               ; preds = %27
  %40 = load %struct.file*, %struct.file** %8, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @O_NONBLOCK, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.sound_queue*, %struct.sound_queue** %7, align 8
  %46 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %5
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %35, %24
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @sq_allocate_buffers(%struct.sound_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
