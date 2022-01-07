; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pident_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pident_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.pid_entry = type { i64, i32 }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.pid_entry*, %struct.pid_entry*)* @proc_pident_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_pident_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.pid_entry* %2, %struct.pid_entry* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.pid_entry*, align 8
  %8 = alloca %struct.pid_entry*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.pid_entry* %2, %struct.pid_entry** %7, align 8
  store %struct.pid_entry* %3, %struct.pid_entry** %8, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.task_struct* @get_proc_task(%struct.inode* %11)
  store %struct.task_struct* %12, %struct.task_struct** %9, align 8
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.dentry* @ERR_PTR(i32 %14)
  store %struct.dentry* %15, %struct.dentry** %10, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %17 = icmp ne %struct.task_struct* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %59

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %53, %19
  %21 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  %22 = load %struct.pid_entry*, %struct.pid_entry** %8, align 8
  %23 = icmp ult %struct.pid_entry* %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  %26 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %53

34:                                               ; preds = %24
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  %40 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  %43 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @memcmp(i32 %38, i32 %41, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %34
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %50 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  %51 = call %struct.dentry* @proc_pident_instantiate(%struct.dentry* %48, %struct.task_struct* %49, %struct.pid_entry* %50)
  store %struct.dentry* %51, %struct.dentry** %10, align 8
  br label %56

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %33
  %54 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  %55 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %54, i32 1
  store %struct.pid_entry* %55, %struct.pid_entry** %7, align 8
  br label %20

56:                                               ; preds = %47, %20
  %57 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %58 = call i32 @put_task_struct(%struct.task_struct* %57)
  br label %59

59:                                               ; preds = %56, %18
  %60 = load %struct.dentry*, %struct.dentry** %10, align 8
  ret %struct.dentry* %60
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local %struct.dentry* @proc_pident_instantiate(%struct.dentry*, %struct.task_struct*, %struct.pid_entry*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
