; ModuleID = '/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_core.c_sq_allocate_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_core.c_sq_allocate_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i32)*, i32 (i32, i32)* }
%struct.sound_queue = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dmasound = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sound_queue*, i32, i32)* @sq_allocate_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sq_allocate_buffers(%struct.sound_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sound_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sound_queue* %0, %struct.sound_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %10 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %87

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %17 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %20 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kmalloc_array(i32 %21, i32 8, i32 %22)
  %24 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %25 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %27 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %14
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %87

33:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %83, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %34
  %39 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 0, i32 1), align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 %39(i32 %40, i32 %41)
  %43 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %44 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  %49 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %50 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %82, label %57

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %62, %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %8, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 0, i32 0), align 8
  %64 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %65 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 %63(i32 %70, i32 %71)
  br label %58

73:                                               ; preds = %58
  %74 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %75 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @kfree(i32* %76)
  %78 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %79 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %87

82:                                               ; preds = %38
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %34

86:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %73, %30, %13
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
