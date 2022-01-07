; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_self.c_proc_self_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_self.c_proc_self_get_link.c"
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
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@kfree_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @proc_self_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @proc_self_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca %struct.pid_namespace*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call %struct.pid_namespace* @proc_pid_ns(%struct.inode* %11)
  store %struct.pid_namespace* %12, %struct.pid_namespace** %8, align 8
  %13 = load i32, i32* @current, align 4
  %14 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %15 = call i32 @task_tgid_nr_ns(i32 %13, %struct.pid_namespace* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i8* @ERR_PTR(i32 %20)
  store i8* %21, i8** %4, align 8
  br label %60

22:                                               ; preds = %3
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = icmp ne %struct.dentry* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @GFP_KERNEL, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call i8* @kmalloc(i32 11, i32 %30)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %29
  %39 = load %struct.dentry*, %struct.dentry** %5, align 8
  %40 = icmp ne %struct.dentry* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i8* @ERR_PTR(i32 %43)
  br label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @ECHILD, align 4
  %47 = sub nsw i32 0, %46
  %48 = call i8* @ERR_PTR(i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i8* [ %44, %41 ], [ %48, %45 ]
  store i8* %50, i8** %4, align 8
  br label %60

51:                                               ; preds = %29
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %56 = load i32, i32* @kfree_link, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @set_delayed_call(%struct.delayed_call* %55, i32 %56, i8* %57)
  %59 = load i8*, i8** %10, align 8
  store i8* %59, i8** %4, align 8
  br label %60

60:                                               ; preds = %51, %49, %18
  %61 = load i8*, i8** %4, align 8
  ret i8* %61
}

declare dso_local %struct.pid_namespace* @proc_pid_ns(%struct.inode*) #1

declare dso_local i32 @task_tgid_nr_ns(i32, %struct.pid_namespace*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @set_delayed_call(%struct.delayed_call*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
