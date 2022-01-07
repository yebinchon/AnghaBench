; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pident_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pident_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.task_struct = type { i32 }
%struct.pid_entry = type { i32, i64, i64, i32 }
%struct.inode = type { i64, i64, i32 }
%struct.proc_inode = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@pid_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* @proc_pident_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_pident_instantiate(%struct.dentry* %0, %struct.task_struct* %1, i8* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pid_entry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.proc_inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.pid_entry*
  store %struct.pid_entry* %12, %struct.pid_entry** %8, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %17 = load %struct.pid_entry*, %struct.pid_entry** %8, align 8
  %18 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.inode* @proc_pid_make_inode(i32 %15, %struct.task_struct* %16, i32 %19)
  store %struct.inode* %20, %struct.inode** %9, align 8
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.dentry* @ERR_PTR(i32 %25)
  store %struct.dentry* %26, %struct.dentry** %4, align 8
  br label %74

27:                                               ; preds = %3
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = call %struct.proc_inode* @PROC_I(%struct.inode* %28)
  store %struct.proc_inode* %29, %struct.proc_inode** %10, align 8
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @S_ISDIR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = call i32 @set_nlink(%struct.inode* %36, i32 2)
  br label %38

38:                                               ; preds = %35, %27
  %39 = load %struct.pid_entry*, %struct.pid_entry** %8, align 8
  %40 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.pid_entry*, %struct.pid_entry** %8, align 8
  %45 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.pid_entry*, %struct.pid_entry** %8, align 8
  %51 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.pid_entry*, %struct.pid_entry** %8, align 8
  %56 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.pid_entry*, %struct.pid_entry** %8, align 8
  %62 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.proc_inode*, %struct.proc_inode** %10, align 8
  %65 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = call i32 @pid_update_inode(%struct.task_struct* %66, %struct.inode* %67)
  %69 = load %struct.dentry*, %struct.dentry** %5, align 8
  %70 = call i32 @d_set_d_op(%struct.dentry* %69, i32* @pid_dentry_operations)
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = load %struct.dentry*, %struct.dentry** %5, align 8
  %73 = call %struct.dentry* @d_splice_alias(%struct.inode* %71, %struct.dentry* %72)
  store %struct.dentry* %73, %struct.dentry** %4, align 8
  br label %74

74:                                               ; preds = %60, %23
  %75 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %75
}

declare dso_local %struct.inode* @proc_pid_make_inode(i32, %struct.task_struct*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @pid_update_inode(%struct.task_struct*, %struct.inode*) #1

declare dso_local i32 @d_set_d_op(%struct.dentry*, i32*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
