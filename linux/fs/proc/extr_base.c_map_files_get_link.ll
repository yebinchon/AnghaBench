; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_map_files_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_map_files_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.path = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.path }
%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.path*)* @map_files_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_files_get_link(%struct.dentry* %0, %struct.path* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.path*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.path* %1, %struct.path** %4, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = call i32 @d_inode(%struct.dentry* %13)
  %15 = call %struct.task_struct* @get_proc_task(i32 %14)
  store %struct.task_struct* %15, %struct.task_struct** %8, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %17 = icmp ne %struct.task_struct* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %71

19:                                               ; preds = %2
  %20 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %21 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %20)
  store %struct.mm_struct* %21, %struct.mm_struct** %9, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %23 = call i32 @put_task_struct(%struct.task_struct* %22)
  %24 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %25 = icmp ne %struct.mm_struct* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %71

27:                                               ; preds = %19
  %28 = load %struct.dentry*, %struct.dentry** %3, align 8
  %29 = call i32 @dname_to_vma_addr(%struct.dentry* %28, i64* %5, i64* %6)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %68

33:                                               ; preds = %27
  %34 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 0
  %36 = call i32 @down_read_killable(i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %68

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call %struct.vm_area_struct* @find_exact_vma(%struct.mm_struct* %43, i64 %44, i64 %45)
  store %struct.vm_area_struct* %46, %struct.vm_area_struct** %7, align 8
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %48 = icmp ne %struct.vm_area_struct* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %40
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.path*, %struct.path** %4, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = bitcast %struct.path* %55 to i8*
  %61 = bitcast %struct.path* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = load %struct.path*, %struct.path** %4, align 8
  %63 = call i32 @path_get(%struct.path* %62)
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %54, %49, %40
  %65 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %66 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %65, i32 0, i32 0
  %67 = call i32 @up_read(i32* %66)
  br label %68

68:                                               ; preds = %64, %39, %32
  %69 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %70 = call i32 @mmput(%struct.mm_struct* %69)
  br label %71

71:                                               ; preds = %68, %26, %18
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local %struct.task_struct* @get_proc_task(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @dname_to_vma_addr(%struct.dentry*, i64*, i64*) #1

declare dso_local i32 @down_read_killable(i32*) #1

declare dso_local %struct.vm_area_struct* @find_exact_vma(%struct.mm_struct*, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
