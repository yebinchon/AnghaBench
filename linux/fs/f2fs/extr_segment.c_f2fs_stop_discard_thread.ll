; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_stop_discard_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_stop_discard_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.discard_cmd_control = type { %struct.task_struct* }
%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { %struct.discard_cmd_control* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_stop_discard_thread(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.discard_cmd_control*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %5 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %6 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %7, align 8
  store %struct.discard_cmd_control* %8, %struct.discard_cmd_control** %3, align 8
  %9 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %3, align 8
  %10 = icmp ne %struct.discard_cmd_control* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %3, align 8
  %13 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %12, i32 0, i32 0
  %14 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %3, align 8
  %18 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %17, i32 0, i32 0
  %19 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  store %struct.task_struct* %19, %struct.task_struct** %4, align 8
  %20 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %3, align 8
  %21 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %20, i32 0, i32 0
  store %struct.task_struct* null, %struct.task_struct** %21, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = call i32 @kthread_stop(%struct.task_struct* %22)
  br label %24

24:                                               ; preds = %16, %11, %1
  ret void
}

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
