; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.snd_pcm = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.snd_pcm*, i32)* @snd_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_open(%struct.file* %0, %struct.snd_pcm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.snd_pcm* %1, %struct.snd_pcm** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %11 = icmp eq %struct.snd_pcm* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  br label %121

15:                                               ; preds = %3
  %16 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %17 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = call i32 @snd_card_file_add(%struct.TYPE_3__* %18, %struct.file* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %121

24:                                               ; preds = %15
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @try_module_get(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %115

35:                                               ; preds = %24
  %36 = load i32, i32* @current, align 4
  %37 = call i32 @init_waitqueue_entry(i32* %9, i32 %36)
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %39 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %38, i32 0, i32 2
  %40 = call i32 @add_wait_queue(i32* %39, i32* %9)
  %41 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %42 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  br label %44

44:                                               ; preds = %35, %95
  %45 = load %struct.file*, %struct.file** %5, align 8
  %46 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @snd_pcm_open_file(%struct.file* %45, %struct.snd_pcm* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %96

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.file*, %struct.file** %5, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @O_NONBLOCK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %96

67:                                               ; preds = %57
  br label %69

68:                                               ; preds = %52
  br label %96

69:                                               ; preds = %67
  %70 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %71 = call i32 @set_current_state(i32 %70)
  %72 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %73 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = call i32 (...) @schedule()
  %76 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %77 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %76, i32 0, i32 1
  %78 = call i32 @mutex_lock(i32* %77)
  %79 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %80 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %69
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %96

88:                                               ; preds = %69
  %89 = load i32, i32* @current, align 4
  %90 = call i64 @signal_pending(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @ERESTARTSYS, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %96

95:                                               ; preds = %88
  br label %44

96:                                               ; preds = %92, %85, %68, %64, %51
  %97 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %98 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %97, i32 0, i32 2
  %99 = call i32 @remove_wait_queue(i32* %98, i32* %9)
  %100 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %101 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %100, i32 0, i32 1
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %108

106:                                              ; preds = %96
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %123

108:                                              ; preds = %105
  %109 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %110 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @module_put(i32 %113)
  br label %115

115:                                              ; preds = %108, %32
  %116 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %117 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load %struct.file*, %struct.file** %5, align 8
  %120 = call i32 @snd_card_file_remove(%struct.TYPE_3__* %118, %struct.file* %119)
  br label %121

121:                                              ; preds = %115, %23, %12
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %106
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @snd_card_file_add(%struct.TYPE_3__*, %struct.file*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_pcm_open_file(%struct.file*, %struct.snd_pcm*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @snd_card_file_remove(%struct.TYPE_3__*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
