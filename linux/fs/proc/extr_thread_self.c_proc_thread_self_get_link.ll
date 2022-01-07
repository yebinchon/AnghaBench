; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_thread_self.c_proc_thread_self_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_thread_self.c_proc_thread_self_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.delayed_call = type { i32 }
%struct.pid_namespace = type { i32 }

@current = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%u/task/%u\00", align 1
@kfree_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @proc_thread_self_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @proc_thread_self_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca %struct.pid_namespace*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call %struct.pid_namespace* @proc_pid_ns(%struct.inode* %12)
  store %struct.pid_namespace* %13, %struct.pid_namespace** %8, align 8
  %14 = load i32, i32* @current, align 4
  %15 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %16 = call i32 @task_tgid_nr_ns(i32 %14, %struct.pid_namespace* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @current, align 4
  %18 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %19 = call i32 @task_pid_nr_ns(i32 %17, %struct.pid_namespace* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i8* @ERR_PTR(i32 %24)
  store i8* %25, i8** %4, align 8
  br label %65

26:                                               ; preds = %3
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = icmp ne %struct.dentry* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @GFP_KERNEL, align 4
  br label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = call i8* @kmalloc(i32 27, i32 %34)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %33
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = icmp ne %struct.dentry* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call i8* @ERR_PTR(i32 %47)
  br label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @ECHILD, align 4
  %51 = sub nsw i32 0, %50
  %52 = call i8* @ERR_PTR(i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i8* [ %48, %45 ], [ %52, %49 ]
  store i8* %54, i8** %4, align 8
  br label %65

55:                                               ; preds = %33
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %61 = load i32, i32* @kfree_link, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @set_delayed_call(%struct.delayed_call* %60, i32 %61, i8* %62)
  %64 = load i8*, i8** %11, align 8
  store i8* %64, i8** %4, align 8
  br label %65

65:                                               ; preds = %55, %53, %22
  %66 = load i8*, i8** %4, align 8
  ret i8* %66
}

declare dso_local %struct.pid_namespace* @proc_pid_ns(%struct.inode*) #1

declare dso_local i32 @task_tgid_nr_ns(i32, %struct.pid_namespace*) #1

declare dso_local i32 @task_pid_nr_ns(i32, %struct.pid_namespace*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @set_delayed_call(%struct.delayed_call*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
