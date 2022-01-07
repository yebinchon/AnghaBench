; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_wait_for_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_wait_for_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.slot_map = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@slot_timeout_secs = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@wait = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ORANGEFS_BUFMAP_WAIT_TIMEOUT_SECS = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slot_map*)* @wait_for_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_free(%struct.slot_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slot_map*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.slot_map* %0, %struct.slot_map** %3, align 8
  %7 = load i64, i64* @slot_timeout_secs, align 8
  %8 = load i64, i64* @HZ, align 8
  %9 = mul nsw i64 %7, %8
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wait, i32 0, i32 0), align 4
  %11 = call i32 @DEFINE_WAIT(i32 %10)
  br label %12

12:                                               ; preds = %88, %1
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %5, align 8
  %14 = call i32 @list_empty(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wait, i32 0, i32 0))
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.slot_map*, %struct.slot_map** %3, align 8
  %19 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %18, i32 0, i32 1
  %20 = call i32 @__add_wait_queue_entry_tail_exclusive(%struct.TYPE_7__* %19, %struct.TYPE_8__* @wait)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %23 = call i32 @set_current_state(i32 %22)
  %24 = load %struct.slot_map*, %struct.slot_map** %3, align 8
  %25 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %91

29:                                               ; preds = %21
  %30 = load %struct.slot_map*, %struct.slot_map** %3, align 8
  %31 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @ORANGEFS_BUFMAP_WAIT_TIMEOUT_SECS, align 8
  %37 = load i64, i64* @HZ, align 8
  %38 = mul nsw i64 %36, %37
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i64, i64* @ORANGEFS_BUFMAP_WAIT_TIMEOUT_SECS, align 8
  %42 = load i64, i64* @HZ, align 8
  %43 = mul nsw i64 %41, %42
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %40, %34
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.slot_map*, %struct.slot_map** %3, align 8
  %47 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @schedule_timeout(i64 %50)
  store i64 %51, i64* %6, align 8
  %52 = load %struct.slot_map*, %struct.slot_map** %3, align 8
  %53 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %45
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.slot_map*, %struct.slot_map** %3, align 8
  %68 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i64, i64* %6, align 8
  store i64 %72, i64* %4, align 8
  br label %79

73:                                               ; preds = %66, %62, %45
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = sub nsw i64 %75, %76
  %78 = add nsw i64 %74, %77
  store i64 %78, i64* %4, align 8
  br label %79

79:                                               ; preds = %73, %71
  %80 = load i32, i32* @current, align 4
  %81 = call i64 @signal_pending(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @EINTR, align 4
  %85 = sub nsw i32 0, %84
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %4, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %12, label %91

91:                                               ; preds = %88, %28
  %92 = call i32 @list_empty(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wait, i32 0, i32 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call i32 @list_del(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wait, i32 0, i32 0))
  br label %110

96:                                               ; preds = %91
  %97 = load i64, i64* %4, align 8
  %98 = icmp sle i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load %struct.slot_map*, %struct.slot_map** %3, align 8
  %101 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %100, i32 0, i32 1
  %102 = call i64 @waitqueue_active(%struct.TYPE_7__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.slot_map*, %struct.slot_map** %3, align 8
  %106 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %105, i32 0, i32 1
  %107 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %108 = call i32 @__wake_up_locked_key(%struct.TYPE_7__* %106, i32 %107, i32* null)
  br label %109

109:                                              ; preds = %104, %99, %96
  br label %110

110:                                              ; preds = %109, %94
  %111 = load i32, i32* @TASK_RUNNING, align 4
  %112 = call i32 @__set_current_state(i32 %111)
  %113 = load i64, i64* %4, align 8
  %114 = icmp sgt i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i64 @likely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %130

119:                                              ; preds = %110
  %120 = load i64, i64* %4, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* @EINTR, align 4
  %124 = sub nsw i32 0, %123
  br label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @ETIMEDOUT, align 4
  %127 = sub nsw i32 0, %126
  br label %128

128:                                              ; preds = %125, %122
  %129 = phi i32 [ %124, %122 ], [ %127, %125 ]
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %118
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__add_wait_queue_entry_tail_exclusive(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @waitqueue_active(%struct.TYPE_7__*) #1

declare dso_local i32 @__wake_up_locked_key(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
