; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_init_threads.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_init_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.task_struct*, %struct.task_struct* }
%struct.task_struct = type { i32 }

@gfs2_logd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"gfs2_logd\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"can't start logd thread: %d\0A\00", align 1
@gfs2_quotad = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"gfs2_quotad\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"can't start quotad thread: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*)* @init_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_threads(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @gfs2_logd, align 4
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %8 = call %struct.task_struct* @kthread_run(i32 %6, %struct.gfs2_sbd* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %8, %struct.task_struct** %4, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = call i64 @IS_ERR(%struct.task_struct* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.task_struct* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @fs_err(%struct.gfs2_sbd* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 0
  store %struct.task_struct* %20, %struct.task_struct** %22, align 8
  %23 = load i32, i32* @gfs2_quotad, align 4
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %25 = call %struct.task_struct* @kthread_run(i32 %23, %struct.gfs2_sbd* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store %struct.task_struct* %25, %struct.task_struct** %4, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %27 = call i64 @IS_ERR(%struct.task_struct* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %31 = call i32 @PTR_ERR(%struct.task_struct* %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @fs_err(%struct.gfs2_sbd* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %39

35:                                               ; preds = %19
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %38 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %37, i32 0, i32 1
  store %struct.task_struct* %36, %struct.task_struct** %38, align 8
  store i32 0, i32* %2, align 4
  br label %47

39:                                               ; preds = %29
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %41 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %40, i32 0, i32 0
  %42 = load %struct.task_struct*, %struct.task_struct** %41, align 8
  %43 = call i32 @kthread_stop(%struct.task_struct* %42)
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %45 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %44, i32 0, i32 0
  store %struct.task_struct* null, %struct.task_struct** %45, align 8
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %39, %35, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.gfs2_sbd*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
