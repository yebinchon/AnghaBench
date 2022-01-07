; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_map_files_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_map_files_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@PTRACE_MODE_READ_FSCREDS = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @proc_map_files_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_map_files_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.mm_struct*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.dentry* @ERR_PTR(i32 %14)
  store %struct.dentry* %15, %struct.dentry** %11, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.task_struct* @get_proc_task(%struct.inode* %16)
  store %struct.task_struct* %17, %struct.task_struct** %10, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %19 = icmp ne %struct.task_struct* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %90

21:                                               ; preds = %3
  %22 = load i32, i32* @EACCES, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.dentry* @ERR_PTR(i32 %23)
  store %struct.dentry* %24, %struct.dentry** %11, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %26 = load i32, i32* @PTRACE_MODE_READ_FSCREDS, align 4
  %27 = call i32 @ptrace_may_access(%struct.task_struct* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %87

30:                                               ; preds = %21
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.dentry* @ERR_PTR(i32 %32)
  store %struct.dentry* %33, %struct.dentry** %11, align 8
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = call i64 @dname_to_vma_addr(%struct.dentry* %34, i64* %7, i64* %8)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %87

38:                                               ; preds = %30
  %39 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %40 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %39)
  store %struct.mm_struct* %40, %struct.mm_struct** %12, align 8
  %41 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %42 = icmp ne %struct.mm_struct* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %87

44:                                               ; preds = %38
  %45 = load i32, i32* @EINTR, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.dentry* @ERR_PTR(i32 %46)
  store %struct.dentry* %47, %struct.dentry** %11, align 8
  %48 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %49 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %48, i32 0, i32 0
  %50 = call i64 @down_read_killable(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %84

53:                                               ; preds = %44
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.dentry* @ERR_PTR(i32 %55)
  store %struct.dentry* %56, %struct.dentry** %11, align 8
  %57 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call %struct.vm_area_struct* @find_exact_vma(%struct.mm_struct* %57, i64 %58, i64 %59)
  store %struct.vm_area_struct* %60, %struct.vm_area_struct** %9, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %62 = icmp ne %struct.vm_area_struct* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  br label %80

64:                                               ; preds = %53
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = icmp ne %struct.TYPE_2__* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call %struct.dentry* @proc_map_files_instantiate(%struct.dentry* %70, %struct.task_struct* %71, i8* %77)
  store %struct.dentry* %78, %struct.dentry** %11, align 8
  br label %79

79:                                               ; preds = %69, %64
  br label %80

80:                                               ; preds = %79, %63
  %81 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %82 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %81, i32 0, i32 0
  %83 = call i32 @up_read(i32* %82)
  br label %84

84:                                               ; preds = %80, %52
  %85 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %86 = call i32 @mmput(%struct.mm_struct* %85)
  br label %87

87:                                               ; preds = %84, %43, %37, %29
  %88 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %89 = call i32 @put_task_struct(%struct.task_struct* %88)
  br label %90

90:                                               ; preds = %87, %20
  %91 = load %struct.dentry*, %struct.dentry** %11, align 8
  ret %struct.dentry* %91
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @ptrace_may_access(%struct.task_struct*, i32) #1

declare dso_local i64 @dname_to_vma_addr(%struct.dentry*, i64*, i64*) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i64 @down_read_killable(i32*) #1

declare dso_local %struct.vm_area_struct* @find_exact_vma(%struct.mm_struct*, i64, i64) #1

declare dso_local %struct.dentry* @proc_map_files_instantiate(%struct.dentry*, %struct.task_struct*, i8*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
