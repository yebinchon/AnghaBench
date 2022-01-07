; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_root.c_proc_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_root.c_proc_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32*, %struct.proc_fs_context*, i32 }
%struct.proc_fs_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@proc_fs_context_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @proc_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.proc_fs_context*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.proc_fs_context* @kzalloc(i32 8, i32 %5)
  store %struct.proc_fs_context* %6, %struct.proc_fs_context** %4, align 8
  %7 = load %struct.proc_fs_context*, %struct.proc_fs_context** %4, align 8
  %8 = icmp ne %struct.proc_fs_context* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load i32, i32* @current, align 4
  %14 = call i32 @task_active_pid_ns(i32 %13)
  %15 = call %struct.TYPE_2__* @get_pid_ns(i32 %14)
  %16 = load %struct.proc_fs_context*, %struct.proc_fs_context** %4, align 8
  %17 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %16, i32 0, i32 0
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %17, align 8
  %18 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %19 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @put_user_ns(i32 %20)
  %22 = load %struct.proc_fs_context*, %struct.proc_fs_context** %4, align 8
  %23 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_user_ns(i32 %26)
  %28 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %29 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.proc_fs_context*, %struct.proc_fs_context** %4, align 8
  %31 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %32 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %31, i32 0, i32 1
  store %struct.proc_fs_context* %30, %struct.proc_fs_context** %32, align 8
  %33 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %34 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %33, i32 0, i32 0
  store i32* @proc_fs_context_ops, i32** %34, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %12, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.proc_fs_context* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_2__* @get_pid_ns(i32) #1

declare dso_local i32 @task_active_pid_ns(i32) #1

declare dso_local i32 @put_user_ns(i32) #1

declare dso_local i32 @get_user_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
