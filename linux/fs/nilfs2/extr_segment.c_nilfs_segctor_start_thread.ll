; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_start_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32*, i32, i32 }
%struct.task_struct = type { i32 }

@nilfs_segctor_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"segctord\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"error %d creating segctord thread\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*)* @nilfs_segctor_start_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_start_thread(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  %6 = load i32, i32* @nilfs_segctor_thread, align 4
  %7 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %8 = call %struct.task_struct* @kthread_run(i32 %6, %struct.nilfs_sc_info* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %8, %struct.task_struct** %4, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = call i64 @IS_ERR(%struct.task_struct* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.task_struct* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %16 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @KERN_ERR, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @nilfs_msg(i32 %17, i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %32

22:                                               ; preds = %1
  %23 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %24 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %27 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @wait_event(i32 %25, i32 %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %22, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.nilfs_sc_info*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
