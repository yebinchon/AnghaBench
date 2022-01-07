; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_tid_fd_update_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_tid_fd_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.inode = type { i32, i32, i32 }

@S_IFLNK = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.inode*, i32)* @tid_fd_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tid_fd_update_inode(%struct.task_struct* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 2
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = call i32 @task_dump_owner(%struct.task_struct* %8, i32 0, i32* %10, i32* %12)
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISLNK(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %3
  %20 = load i32, i32* @S_IFLNK, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @FMODE_READ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @S_IRUSR, align 4
  %27 = load i32, i32* @S_IXUSR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %25, %19
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @FMODE_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @S_IWUSR, align 4
  %38 = load i32, i32* @S_IXUSR, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %3
  %47 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = call i32 @security_task_to_inode(%struct.task_struct* %47, %struct.inode* %48)
  ret void
}

declare dso_local i32 @task_dump_owner(%struct.task_struct*, i32, i32*, i32*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @security_task_to_inode(%struct.task_struct*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
