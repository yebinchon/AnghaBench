; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_attach_checkpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_attach_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32, i32 }
%struct.nilfs_root = type { i32, i32, i64 }
%struct.nilfs_checkpoint = type { i32, i32, i32 }
%struct.buffer_head = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NILFS_CPTREE_CURRENT_CNO = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Invalid checkpoint (checkpoint number=%llu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_attach_checkpoint(%struct.super_block* %0, i64 %1, i32 %2, %struct.nilfs_root** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nilfs_root**, align 8
  %10 = alloca %struct.the_nilfs*, align 8
  %11 = alloca %struct.nilfs_root*, align 8
  %12 = alloca %struct.nilfs_checkpoint*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nilfs_root** %3, %struct.nilfs_root*** %9, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %16, align 8
  store %struct.the_nilfs* %17, %struct.the_nilfs** %10, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  %20 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @NILFS_CPTREE_CURRENT_CNO, align 8
  br label %27

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  %29 = call %struct.nilfs_root* @nilfs_find_or_create_root(%struct.the_nilfs* %20, i64 %28)
  store %struct.nilfs_root* %29, %struct.nilfs_root** %11, align 8
  %30 = load %struct.nilfs_root*, %struct.nilfs_root** %11, align 8
  %31 = icmp ne %struct.nilfs_root* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %5, align 4
  br label %122

34:                                               ; preds = %27
  %35 = load %struct.nilfs_root*, %struct.nilfs_root** %11, align 8
  %36 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %108

40:                                               ; preds = %34
  %41 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %42 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %41, i32 0, i32 2
  %43 = call i32 @down_read(i32* %42)
  %44 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %45 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @nilfs_cpfile_get_checkpoint(i32 %46, i64 %47, i32 0, %struct.nilfs_checkpoint** %12, %struct.buffer_head** %13)
  store i32 %48, i32* %14, align 4
  %49 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %50 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %49, i32 0, i32 2
  %51 = call i32 @up_read(i32* %50)
  %52 = load i32, i32* %14, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %40
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %60, %55
  %66 = load %struct.super_block*, %struct.super_block** %6, align 8
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @nilfs_msg(%struct.super_block* %66, i32 %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %65, %60
  br label %118

73:                                               ; preds = %40
  %74 = load %struct.super_block*, %struct.super_block** %6, align 8
  %75 = load %struct.nilfs_root*, %struct.nilfs_root** %11, align 8
  %76 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %77 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %12, align 8
  %80 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %79, i32 0, i32 2
  %81 = load %struct.nilfs_root*, %struct.nilfs_root** %11, align 8
  %82 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %81, i32 0, i32 2
  %83 = call i32 @nilfs_ifile_read(%struct.super_block* %74, %struct.nilfs_root* %75, i32 %78, i32* %80, i64* %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %111

87:                                               ; preds = %73
  %88 = load %struct.nilfs_root*, %struct.nilfs_root** %11, align 8
  %89 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %88, i32 0, i32 1
  %90 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %12, align 8
  %91 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le64_to_cpu(i32 %92)
  %94 = call i32 @atomic64_set(i32* %89, i32 %93)
  %95 = load %struct.nilfs_root*, %struct.nilfs_root** %11, align 8
  %96 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %95, i32 0, i32 0
  %97 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %12, align 8
  %98 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le64_to_cpu(i32 %99)
  %101 = call i32 @atomic64_set(i32* %96, i32 %100)
  %102 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %103 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %107 = call i32 @nilfs_cpfile_put_checkpoint(i32 %104, i64 %105, %struct.buffer_head* %106)
  br label %108

108:                                              ; preds = %87, %39
  %109 = load %struct.nilfs_root*, %struct.nilfs_root** %11, align 8
  %110 = load %struct.nilfs_root**, %struct.nilfs_root*** %9, align 8
  store %struct.nilfs_root* %109, %struct.nilfs_root** %110, align 8
  store i32 0, i32* %5, align 4
  br label %122

111:                                              ; preds = %86
  %112 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %113 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %117 = call i32 @nilfs_cpfile_put_checkpoint(i32 %114, i64 %115, %struct.buffer_head* %116)
  br label %118

118:                                              ; preds = %111, %72
  %119 = load %struct.nilfs_root*, %struct.nilfs_root** %11, align 8
  %120 = call i32 @nilfs_put_root(%struct.nilfs_root* %119)
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %118, %108, %32
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.nilfs_root* @nilfs_find_or_create_root(%struct.the_nilfs*, i64) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @nilfs_cpfile_get_checkpoint(i32, i64, i32, %struct.nilfs_checkpoint**, %struct.buffer_head**) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i64) #1

declare dso_local i32 @nilfs_ifile_read(%struct.super_block*, %struct.nilfs_root*, i32, i32*, i64*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @nilfs_cpfile_put_checkpoint(i32, i64, %struct.buffer_head*) #1

declare dso_local i32 @nilfs_put_root(%struct.nilfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
