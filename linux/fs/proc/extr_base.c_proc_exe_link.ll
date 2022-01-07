; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_exe_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_exe_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.path = type { i32 }
%struct.task_struct = type { i32 }
%struct.file = type { %struct.path }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.path*)* @proc_exe_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_exe_link(%struct.dentry* %0, %struct.path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.file*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = call i32 @d_inode(%struct.dentry* %8)
  %10 = call %struct.task_struct* @get_proc_task(i32 %9)
  store %struct.task_struct* %10, %struct.task_struct** %6, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %12 = icmp ne %struct.task_struct* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %18 = call %struct.file* @get_task_exe_file(%struct.task_struct* %17)
  store %struct.file* %18, %struct.file** %7, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %20 = call i32 @put_task_struct(%struct.task_struct* %19)
  %21 = load %struct.file*, %struct.file** %7, align 8
  %22 = icmp ne %struct.file* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.path*, %struct.path** %5, align 8
  %25 = load %struct.file*, %struct.file** %7, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = bitcast %struct.path* %24 to i8*
  %28 = bitcast %struct.path* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load %struct.file*, %struct.file** %7, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = call i32 @path_get(%struct.path* %30)
  %32 = load %struct.file*, %struct.file** %7, align 8
  %33 = call i32 @fput(%struct.file* %32)
  store i32 0, i32* %3, align 4
  br label %37

34:                                               ; preds = %16
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %23, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.task_struct* @get_proc_task(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.file* @get_task_exe_file(%struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
