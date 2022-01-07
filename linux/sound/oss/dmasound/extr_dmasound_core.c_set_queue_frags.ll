; ModuleID = '/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_core.c_set_queue_frags.c'
source_filename = "/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_core.c_set_queue_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sound_queue = type { i32, i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MIN_FRAG_SIZE = common dso_local global i32 0, align 4
@MAX_FRAG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sound_queue*, i32, i32)* @set_queue_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_queue_frags(%struct.sound_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sound_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sound_queue* %0, %struct.sound_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %9 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %62

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MIN_FRAG_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MAX_FRAG_SIZE, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %62

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 1, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %31 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %62

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %62

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %46 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %51 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %56 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %58 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %57, i32 0, i32 2
  store i32 %54, i32* %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %61 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %53, %40, %34, %23, %12
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
