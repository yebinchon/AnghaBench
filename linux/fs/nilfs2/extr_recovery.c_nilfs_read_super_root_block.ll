; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_read_super_root_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_read_super_root_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.nilfs_super_root = type { i32, i32 }

@NILFS_SEG_FAIL_IO = common dso_local global i32 0, align 4
@NILFS_SEG_FAIL_CHECKSUM_SUPER_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_read_super_root_block(%struct.the_nilfs* %0, i32 %1, %struct.buffer_head** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.nilfs_super_root*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %17 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %21 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.buffer_head* @__bread(i32 %18, i32 %19, i32 %22)
  store %struct.buffer_head* %23, %struct.buffer_head** %10, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %25 = icmp ne %struct.buffer_head* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @NILFS_SEG_FAIL_IO, align 4
  store i32 %31, i32* %13, align 4
  br label %79

32:                                               ; preds = %4
  %33 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.nilfs_super_root*
  store %struct.nilfs_super_root* %36, %struct.nilfs_super_root** %11, align 8
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %32
  %40 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %11, align 8
  %41 = getelementptr inbounds %struct.nilfs_super_root, %struct.nilfs_super_root* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %49 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ugt i32 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %39
  %53 = load i32, i32* @NILFS_SEG_FAIL_CHECKSUM_SUPER_ROOT, align 4
  store i32 %53, i32* %13, align 4
  br label %76

54:                                               ; preds = %46
  %55 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @nilfs_compute_checksum(%struct.the_nilfs* %55, %struct.buffer_head* %56, i64* %12, i32 4, i32 %57, i32 %58, i32 1)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @NILFS_SEG_FAIL_IO, align 4
  store i32 %62, i32* %13, align 4
  br label %76

63:                                               ; preds = %54
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %11, align 8
  %66 = getelementptr inbounds %struct.nilfs_super_root, %struct.nilfs_super_root* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @le32_to_cpu(i32 %67)
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @NILFS_SEG_FAIL_CHECKSUM_SUPER_ROOT, align 4
  store i32 %71, i32* %13, align 4
  br label %76

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %32
  %74 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %75 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %74, %struct.buffer_head** %75, align 8
  store i32 0, i32* %5, align 4
  br label %85

76:                                               ; preds = %70, %61, %52
  %77 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %78 = call i32 @brelse(%struct.buffer_head* %77)
  br label %79

79:                                               ; preds = %76, %30
  %80 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %81 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @nilfs_warn_segment_error(i32 %82, i32 %83)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %79, %73
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.buffer_head* @__bread(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @nilfs_compute_checksum(%struct.the_nilfs*, %struct.buffer_head*, i64*, i32, i32, i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_warn_segment_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
