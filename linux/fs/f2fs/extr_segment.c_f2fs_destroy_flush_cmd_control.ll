; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_destroy_flush_cmd_control.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_destroy_flush_cmd_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.flush_cmd_control = type { %struct.task_struct* }
%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { %struct.flush_cmd_control* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_destroy_flush_cmd_control(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.flush_cmd_control*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %8 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %9, align 8
  store %struct.flush_cmd_control* %10, %struct.flush_cmd_control** %5, align 8
  %11 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %12 = icmp ne %struct.flush_cmd_control* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %15 = getelementptr inbounds %struct.flush_cmd_control, %struct.flush_cmd_control* %14, i32 0, i32 0
  %16 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  %17 = icmp ne %struct.task_struct* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %20 = getelementptr inbounds %struct.flush_cmd_control, %struct.flush_cmd_control* %19, i32 0, i32 0
  %21 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  store %struct.task_struct* %21, %struct.task_struct** %6, align 8
  %22 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %23 = getelementptr inbounds %struct.flush_cmd_control, %struct.flush_cmd_control* %22, i32 0, i32 0
  store %struct.task_struct* null, %struct.task_struct** %23, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %25 = call i32 @kthread_stop(%struct.task_struct* %24)
  br label %26

26:                                               ; preds = %18, %13, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.flush_cmd_control*, %struct.flush_cmd_control** %5, align 8
  %31 = call i32 @kvfree(%struct.flush_cmd_control* %30)
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %33 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.flush_cmd_control* null, %struct.flush_cmd_control** %34, align 8
  br label %35

35:                                               ; preds = %29, %26
  ret void
}

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

declare dso_local i32 @kvfree(%struct.flush_cmd_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
