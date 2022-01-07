; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pid_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pid_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.delayed_call = type { i32 }
%struct.path = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.dentry*, %struct.path*)* }

@EACCES = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @proc_pid_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @proc_pid_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca %struct.path, align 4
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %10 = load i32, i32* @EACCES, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ECHILD, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i8* @ERR_PTR(i32 %16)
  store i8* %17, i8** %4, align 8
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i32 @proc_fd_access_allowed(%struct.inode* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %36

23:                                               ; preds = %18
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call %struct.TYPE_4__* @PROC_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.dentry*, %struct.path*)*, i32 (%struct.dentry*, %struct.path*)** %27, align 8
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = call i32 %28(%struct.dentry* %29, %struct.path* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %36

34:                                               ; preds = %23
  %35 = call i32 @nd_jump_link(%struct.path* %8)
  store i8* null, i8** %4, align 8
  br label %39

36:                                               ; preds = %33, %22
  %37 = load i32, i32* %9, align 4
  %38 = call i8* @ERR_PTR(i32 %37)
  store i8* %38, i8** %4, align 8
  br label %39

39:                                               ; preds = %36, %34, %14
  %40 = load i8*, i8** %4, align 8
  ret i8* %40
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @proc_fd_access_allowed(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @PROC_I(%struct.inode*) #1

declare dso_local i32 @nd_jump_link(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
