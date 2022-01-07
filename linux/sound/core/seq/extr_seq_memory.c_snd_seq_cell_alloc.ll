; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_memory.c_snd_seq_cell_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_memory.c_snd_seq_cell_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_pool = type { i32, i32, i32, i32, i32, %struct.snd_seq_event_cell*, i64, i32, i32* }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell* }
%struct.file = type { i32 }
%struct.mutex = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ALSA: seq: pool is not initialized\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_pool*, %struct.snd_seq_event_cell**, i32, %struct.file*, %struct.mutex*)* @snd_seq_cell_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_cell_alloc(%struct.snd_seq_pool* %0, %struct.snd_seq_event_cell** %1, i32 %2, %struct.file* %3, %struct.mutex* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_pool*, align 8
  %8 = alloca %struct.snd_seq_event_cell**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.mutex*, align 8
  %12 = alloca %struct.snd_seq_event_cell*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_seq_pool* %0, %struct.snd_seq_pool** %7, align 8
  store %struct.snd_seq_event_cell** %1, %struct.snd_seq_event_cell*** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.file* %3, %struct.file** %10, align 8
  store %struct.mutex* %4, %struct.mutex** %11, align 8
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %14, align 4
  %19 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %20 = icmp eq %struct.snd_seq_pool* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %150

24:                                               ; preds = %5
  %25 = load %struct.snd_seq_event_cell**, %struct.snd_seq_event_cell*** %8, align 8
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %25, align 8
  %26 = load i32, i32* @current, align 4
  %27 = call i32 @init_waitqueue_entry(i32* %15, i32 %26)
  %28 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %29 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %28, i32 0, i32 1
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %33 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %32, i32 0, i32 8
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %14, align 4
  br label %144

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %93, %40
  %42 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %43 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %42, i32 0, i32 5
  %44 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %43, align 8
  %45 = icmp eq %struct.snd_seq_event_cell* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %51 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %49, %46, %41
  %56 = phi i1 [ false, %46 ], [ false, %41 ], [ %54, %49 ]
  br i1 %56, label %57, label %94

57:                                               ; preds = %55
  %58 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %59 = call i32 @set_current_state(i32 %58)
  %60 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %61 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %60, i32 0, i32 7
  %62 = call i32 @add_wait_queue(i32* %61, i32* %15)
  %63 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %64 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %63, i32 0, i32 1
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.mutex*, %struct.mutex** %11, align 8
  %68 = icmp ne %struct.mutex* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load %struct.mutex*, %struct.mutex** %11, align 8
  %71 = call i32 @mutex_unlock(%struct.mutex* %70)
  br label %72

72:                                               ; preds = %69, %57
  %73 = call i32 (...) @schedule()
  %74 = load %struct.mutex*, %struct.mutex** %11, align 8
  %75 = icmp ne %struct.mutex* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.mutex*, %struct.mutex** %11, align 8
  %78 = call i32 @mutex_lock(%struct.mutex* %77)
  br label %79

79:                                               ; preds = %76, %72
  %80 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %81 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %80, i32 0, i32 1
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @spin_lock_irqsave(i32* %81, i64 %82)
  %84 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %85 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %84, i32 0, i32 7
  %86 = call i32 @remove_wait_queue(i32* %85, i32* %15)
  %87 = load i32, i32* @current, align 4
  %88 = call i64 @signal_pending(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load i32, i32* @ERESTARTSYS, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %14, align 4
  br label %144

93:                                               ; preds = %79
  br label %41

94:                                               ; preds = %55
  %95 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %96 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %14, align 4
  br label %144

102:                                              ; preds = %94
  %103 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %104 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %103, i32 0, i32 5
  %105 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %104, align 8
  store %struct.snd_seq_event_cell* %105, %struct.snd_seq_event_cell** %12, align 8
  %106 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %12, align 8
  %107 = icmp ne %struct.snd_seq_event_cell* %106, null
  br i1 %107, label %108, label %136

108:                                              ; preds = %102
  %109 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %12, align 8
  %110 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %109, i32 0, i32 0
  %111 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %110, align 8
  %112 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %113 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %112, i32 0, i32 5
  store %struct.snd_seq_event_cell* %111, %struct.snd_seq_event_cell** %113, align 8
  %114 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %115 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %114, i32 0, i32 4
  %116 = call i32 @atomic_inc(i32* %115)
  %117 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %118 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %117, i32 0, i32 4
  %119 = call i32 @atomic_read(i32* %118)
  store i32 %119, i32* %16, align 4
  %120 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %121 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %16, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %108
  %126 = load i32, i32* %16, align 4
  %127 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %128 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %108
  %130 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %131 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %12, align 8
  %135 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %134, i32 0, i32 0
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %135, align 8
  store i32 0, i32* %14, align 4
  br label %141

136:                                              ; preds = %102
  %137 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %138 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %136, %129
  %142 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %12, align 8
  %143 = load %struct.snd_seq_event_cell**, %struct.snd_seq_event_cell*** %8, align 8
  store %struct.snd_seq_event_cell* %142, %struct.snd_seq_event_cell** %143, align 8
  br label %144

144:                                              ; preds = %141, %99, %90, %36
  %145 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %146 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %145, i32 0, i32 1
  %147 = load i64, i64* %13, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* %146, i64 %147)
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %144, %21
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
