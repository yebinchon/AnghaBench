; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_map_files_d_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_map_files_d_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.mm_struct = type { i32 }
%struct.task_struct = type { i32 }
%struct.inode = type { i32, i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@PTRACE_MODE_READ_FSCREDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @map_files_d_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_files_d_revalidate(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store %struct.mm_struct* null, %struct.mm_struct** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @LOOKUP_RCU, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ECHILD, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %80

20:                                               ; preds = %2
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = call %struct.inode* @d_inode(%struct.dentry* %21)
  store %struct.inode* %22, %struct.inode** %11, align 8
  %23 = load %struct.inode*, %struct.inode** %11, align 8
  %24 = call %struct.task_struct* @get_proc_task(%struct.inode* %23)
  store %struct.task_struct* %24, %struct.task_struct** %10, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %26 = icmp ne %struct.task_struct* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %78

28:                                               ; preds = %20
  %29 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %30 = load i32, i32* @PTRACE_MODE_READ_FSCREDS, align 4
  %31 = call %struct.mm_struct* @mm_access(%struct.task_struct* %29, i32 %30)
  store %struct.mm_struct* %31, %struct.mm_struct** %9, align 8
  %32 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %33 = call i64 @IS_ERR_OR_NULL(%struct.mm_struct* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %75

36:                                               ; preds = %28
  %37 = load %struct.dentry*, %struct.dentry** %4, align 8
  %38 = call i32 @dname_to_vma_addr(%struct.dentry* %37, i64* %6, i64* %7)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %36
  %41 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %42 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %41, i32 0, i32 0
  %43 = call i32 @down_read_killable(i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  %47 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @find_exact_vma(%struct.mm_struct* %47, i64 %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %56 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %55, i32 0, i32 0
  %57 = call i32 @up_read(i32* %56)
  br label %58

58:                                               ; preds = %46, %40
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %61 = call i32 @mmput(%struct.mm_struct* %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %66 = load %struct.inode*, %struct.inode** %11, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 1
  %68 = load %struct.inode*, %struct.inode** %11, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = call i32 @task_dump_owner(%struct.task_struct* %65, i32 0, i32* %67, i32* %69)
  %71 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %72 = load %struct.inode*, %struct.inode** %11, align 8
  %73 = call i32 @security_task_to_inode(%struct.task_struct* %71, %struct.inode* %72)
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %64, %59
  br label %75

75:                                               ; preds = %74, %35
  %76 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %77 = call i32 @put_task_struct(%struct.task_struct* %76)
  br label %78

78:                                               ; preds = %75, %27
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %17
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local %struct.mm_struct* @mm_access(%struct.task_struct*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.mm_struct*) #1

declare dso_local i32 @dname_to_vma_addr(%struct.dentry*, i64*, i64*) #1

declare dso_local i32 @down_read_killable(i32*) #1

declare dso_local i32 @find_exact_vma(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @task_dump_owner(%struct.task_struct*, i32, i32*, i32*) #1

declare dso_local i32 @security_task_to_inode(%struct.task_struct*, %struct.inode*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
