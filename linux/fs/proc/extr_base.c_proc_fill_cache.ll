; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_fill_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_fill_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.dir_context = type { i32 }
%struct.task_struct = type { i32 }
%struct.qstr = type { i32 }
%struct.inode = type { i32, i32 }

@DT_UNKNOWN = common dso_local global i32 0, align 4
@wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_fill_cache(%struct.file* %0, %struct.dir_context* %1, i8* %2, i32 %3, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* %4, %struct.task_struct* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.dir_context*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)*, align 8
  %13 = alloca %struct.task_struct*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca %struct.qstr, align 4
  %18 = alloca %struct.inode*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.dentry*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.dir_context* %1, %struct.dir_context** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* %4, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)** %12, align 8
  store %struct.task_struct* %5, %struct.task_struct** %13, align 8
  store i8* %6, i8** %14, align 8
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.dentry*, %struct.dentry** %24, align 8
  store %struct.dentry* %25, %struct.dentry** %16, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @QSTR_INIT(i8* %26, i32 %27)
  %29 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @DT_UNKNOWN, align 4
  store i32 %30, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %31 = load %struct.dentry*, %struct.dentry** %16, align 8
  %32 = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* %31, %struct.qstr* %17)
  store %struct.dentry* %32, %struct.dentry** %15, align 8
  %33 = load %struct.dentry*, %struct.dentry** %15, align 8
  %34 = icmp ne %struct.dentry* %33, null
  br i1 %34, label %70, label %35

35:                                               ; preds = %7
  %36 = load i32, i32* @wq, align 4
  %37 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %36)
  %38 = load %struct.dentry*, %struct.dentry** %16, align 8
  %39 = call %struct.dentry* @d_alloc_parallel(%struct.dentry* %38, %struct.qstr* %17, i32* @wq)
  store %struct.dentry* %39, %struct.dentry** %15, align 8
  %40 = load %struct.dentry*, %struct.dentry** %15, align 8
  %41 = call i64 @IS_ERR(%struct.dentry* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %82

44:                                               ; preds = %35
  %45 = load %struct.dentry*, %struct.dentry** %15, align 8
  %46 = call i64 @d_in_lookup(%struct.dentry* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)*, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)** %12, align 8
  %50 = load %struct.dentry*, %struct.dentry** %15, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = call %struct.dentry* %49(%struct.dentry* %50, %struct.task_struct* %51, i8* %52)
  store %struct.dentry* %53, %struct.dentry** %21, align 8
  %54 = load %struct.dentry*, %struct.dentry** %15, align 8
  %55 = call i32 @d_lookup_done(%struct.dentry* %54)
  %56 = load %struct.dentry*, %struct.dentry** %21, align 8
  %57 = call i64 @unlikely(%struct.dentry* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %48
  %60 = load %struct.dentry*, %struct.dentry** %15, align 8
  %61 = call i32 @dput(%struct.dentry* %60)
  %62 = load %struct.dentry*, %struct.dentry** %21, align 8
  store %struct.dentry* %62, %struct.dentry** %15, align 8
  %63 = load %struct.dentry*, %struct.dentry** %15, align 8
  %64 = call i64 @IS_ERR(%struct.dentry* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %82

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %48
  br label %69

69:                                               ; preds = %68, %44
  br label %70

70:                                               ; preds = %69, %7
  %71 = load %struct.dentry*, %struct.dentry** %15, align 8
  %72 = call %struct.inode* @d_inode(%struct.dentry* %71)
  store %struct.inode* %72, %struct.inode** %18, align 8
  %73 = load %struct.inode*, %struct.inode** %18, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %20, align 4
  %76 = load %struct.inode*, %struct.inode** %18, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 12
  store i32 %79, i32* %19, align 4
  %80 = load %struct.dentry*, %struct.dentry** %15, align 8
  %81 = call i32 @dput(%struct.dentry* %80)
  br label %82

82:                                               ; preds = %70, %66, %43
  %83 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @dir_emit(%struct.dir_context* %83, i8* %84, i32 %85, i32 %86, i32 %87)
  ret i32 %88
}

declare dso_local i32 @QSTR_INIT(i8*, i32) #1

declare dso_local %struct.dentry* @d_hash_and_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local %struct.dentry* @d_alloc_parallel(%struct.dentry*, %struct.qstr*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @d_in_lookup(%struct.dentry*) #1

declare dso_local i32 @d_lookup_done(%struct.dentry*) #1

declare dso_local i64 @unlikely(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
