; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_proc_fd_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_proc_fd_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.path = type { i32 }
%struct.files_struct = type { i32 }
%struct.task_struct = type { i32 }
%struct.file = type { %struct.path }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.path*)* @proc_fd_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_fd_link(%struct.dentry* %0, %struct.path* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.files_struct*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.path* %1, %struct.path** %4, align 8
  store %struct.files_struct* null, %struct.files_struct** %5, align 8
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = call i32 @d_inode(%struct.dentry* %12)
  %14 = call %struct.task_struct* @get_proc_task(i32 %13)
  store %struct.task_struct* %14, %struct.task_struct** %6, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %16 = icmp ne %struct.task_struct* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %19 = call %struct.files_struct* @get_files_struct(%struct.task_struct* %18)
  store %struct.files_struct* %19, %struct.files_struct** %5, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %21 = call i32 @put_task_struct(%struct.task_struct* %20)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %24 = icmp ne %struct.files_struct* %23, null
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = call i32 @d_inode(%struct.dentry* %26)
  %28 = call i32 @proc_fd(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %30 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.file* @fcheck_files(%struct.files_struct* %32, i32 %33)
  store %struct.file* %34, %struct.file** %9, align 8
  %35 = load %struct.file*, %struct.file** %9, align 8
  %36 = icmp ne %struct.file* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %25
  %38 = load %struct.path*, %struct.path** %4, align 8
  %39 = load %struct.file*, %struct.file** %9, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = bitcast %struct.path* %38 to i8*
  %42 = bitcast %struct.path* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load %struct.file*, %struct.file** %9, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = call i32 @path_get(%struct.path* %44)
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %37, %25
  %47 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %48 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %51 = call i32 @put_files_struct(%struct.files_struct* %50)
  br label %52

52:                                               ; preds = %46, %22
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local %struct.task_struct* @get_proc_task(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.files_struct* @get_files_struct(%struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @proc_fd(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.file* @fcheck_files(%struct.files_struct*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_files_struct(%struct.files_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
