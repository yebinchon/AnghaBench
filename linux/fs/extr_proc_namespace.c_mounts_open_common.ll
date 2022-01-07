; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_proc_namespace.c_mounts_open_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_proc_namespace.c_mounts_open_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.proc_mounts*, i32 }
%struct.proc_mounts = type { i32 (%struct.seq_file*, %struct.vfsmount*)*, i64, %struct.path, %struct.mnt_namespace* }
%struct.vfsmount = type opaque
%struct.path = type { i32 }
%struct.mnt_namespace = type { i32 }
%struct.vfsmount.0 = type opaque
%struct.task_struct = type { i32, %struct.nsproxy* }
%struct.nsproxy = type { %struct.mnt_namespace* }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@mounts_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32 (%struct.seq_file*, %struct.vfsmount.0*)*)* @mounts_open_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mounts_open_common(%struct.inode* %0, %struct.file* %1, i32 (%struct.seq_file*, %struct.vfsmount.0*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32 (%struct.seq_file*, %struct.vfsmount.0*)*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.nsproxy*, align 8
  %10 = alloca %struct.mnt_namespace*, align 8
  %11 = alloca %struct.path, align 4
  %12 = alloca %struct.proc_mounts*, align 8
  %13 = alloca %struct.seq_file*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 (%struct.seq_file*, %struct.vfsmount.0*)* %2, i32 (%struct.seq_file*, %struct.vfsmount.0*)** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.task_struct* @get_proc_task(%struct.inode* %15)
  store %struct.task_struct* %16, %struct.task_struct** %8, align 8
  store %struct.mnt_namespace* null, %struct.mnt_namespace** %10, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %14, align 4
  %19 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %20 = icmp ne %struct.task_struct* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %101

22:                                               ; preds = %3
  %23 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %24 = call i32 @task_lock(%struct.task_struct* %23)
  %25 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 1
  %27 = load %struct.nsproxy*, %struct.nsproxy** %26, align 8
  store %struct.nsproxy* %27, %struct.nsproxy** %9, align 8
  %28 = load %struct.nsproxy*, %struct.nsproxy** %9, align 8
  %29 = icmp ne %struct.nsproxy* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.nsproxy*, %struct.nsproxy** %9, align 8
  %32 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %31, i32 0, i32 0
  %33 = load %struct.mnt_namespace*, %struct.mnt_namespace** %32, align 8
  %34 = icmp ne %struct.mnt_namespace* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30, %22
  %36 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %37 = call i32 @task_unlock(%struct.task_struct* %36)
  %38 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %39 = call i32 @put_task_struct(%struct.task_struct* %38)
  br label %101

40:                                               ; preds = %30
  %41 = load %struct.nsproxy*, %struct.nsproxy** %9, align 8
  %42 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %41, i32 0, i32 0
  %43 = load %struct.mnt_namespace*, %struct.mnt_namespace** %42, align 8
  store %struct.mnt_namespace* %43, %struct.mnt_namespace** %10, align 8
  %44 = load %struct.mnt_namespace*, %struct.mnt_namespace** %10, align 8
  %45 = call i32 @get_mnt_ns(%struct.mnt_namespace* %44)
  %46 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %40
  %51 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %52 = call i32 @task_unlock(%struct.task_struct* %51)
  %53 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %54 = call i32 @put_task_struct(%struct.task_struct* %53)
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  br label %98

57:                                               ; preds = %40
  %58 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @get_fs_root(i32 %60, %struct.path* %11)
  %62 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %63 = call i32 @task_unlock(%struct.task_struct* %62)
  %64 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %65 = call i32 @put_task_struct(%struct.task_struct* %64)
  %66 = load %struct.file*, %struct.file** %6, align 8
  %67 = call i32 @seq_open_private(%struct.file* %66, i32* @mounts_op, i32 32)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %96

71:                                               ; preds = %57
  %72 = load %struct.file*, %struct.file** %6, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 0
  %74 = load %struct.seq_file*, %struct.seq_file** %73, align 8
  store %struct.seq_file* %74, %struct.seq_file** %13, align 8
  %75 = load %struct.mnt_namespace*, %struct.mnt_namespace** %10, align 8
  %76 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.seq_file*, %struct.seq_file** %13, align 8
  %79 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.seq_file*, %struct.seq_file** %13, align 8
  %81 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %80, i32 0, i32 0
  %82 = load %struct.proc_mounts*, %struct.proc_mounts** %81, align 8
  store %struct.proc_mounts* %82, %struct.proc_mounts** %12, align 8
  %83 = load %struct.mnt_namespace*, %struct.mnt_namespace** %10, align 8
  %84 = load %struct.proc_mounts*, %struct.proc_mounts** %12, align 8
  %85 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %84, i32 0, i32 3
  store %struct.mnt_namespace* %83, %struct.mnt_namespace** %85, align 8
  %86 = load %struct.proc_mounts*, %struct.proc_mounts** %12, align 8
  %87 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %86, i32 0, i32 2
  %88 = bitcast %struct.path* %87 to i8*
  %89 = bitcast %struct.path* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 4 %89, i64 4, i1 false)
  %90 = load i32 (%struct.seq_file*, %struct.vfsmount.0*)*, i32 (%struct.seq_file*, %struct.vfsmount.0*)** %7, align 8
  %91 = bitcast i32 (%struct.seq_file*, %struct.vfsmount.0*)* %90 to i32 (%struct.seq_file*, %struct.vfsmount*)*
  %92 = load %struct.proc_mounts*, %struct.proc_mounts** %12, align 8
  %93 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %92, i32 0, i32 0
  store i32 (%struct.seq_file*, %struct.vfsmount*)* %91, i32 (%struct.seq_file*, %struct.vfsmount*)** %93, align 8
  %94 = load %struct.proc_mounts*, %struct.proc_mounts** %12, align 8
  %95 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %94, i32 0, i32 1
  store i64 -1, i64* %95, align 8
  store i32 0, i32* %4, align 4
  br label %103

96:                                               ; preds = %70
  %97 = call i32 @path_put(%struct.path* %11)
  br label %98

98:                                               ; preds = %96, %50
  %99 = load %struct.mnt_namespace*, %struct.mnt_namespace** %10, align 8
  %100 = call i32 @put_mnt_ns(%struct.mnt_namespace* %99)
  br label %101

101:                                              ; preds = %98, %35, %21
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %71
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @get_mnt_ns(%struct.mnt_namespace*) #1

declare dso_local i32 @get_fs_root(i32, %struct.path*) #1

declare dso_local i32 @seq_open_private(%struct.file*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i32 @put_mnt_ns(%struct.mnt_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
