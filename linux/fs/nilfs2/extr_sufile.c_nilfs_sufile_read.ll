; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.nilfs_inode = type { i32 }
%struct.inode = type { i32 }
%struct.nilfs_sufile_info = type { i64, i64, i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_sufile_header = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"too large segment usage size: %zu bytes\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NILFS_MIN_SEGMENT_USAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"too small segment usage size: %zu bytes\00", align 1
@NILFS_SUFILE_INO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@NILFS_MDT_GFP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_sufile_read(%struct.super_block* %0, i64 %1, %struct.nilfs_inode* %2, %struct.inode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nilfs_inode*, align 8
  %9 = alloca %struct.inode**, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.nilfs_sufile_info*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.nilfs_sufile_header*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.nilfs_inode* %2, %struct.nilfs_inode** %8, align 8
  store %struct.inode** %3, %struct.inode*** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.super_block*, %struct.super_block** %6, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.super_block*, %struct.super_block** %6, align 8
  %23 = load i32, i32* @KERN_ERR, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @nilfs_msg(%struct.super_block* %22, i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %123

28:                                               ; preds = %4
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @NILFS_MIN_SEGMENT_USAGE_SIZE, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.super_block*, %struct.super_block** %6, align 8
  %34 = load i32, i32* @KERN_ERR, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @nilfs_msg(%struct.super_block* %33, i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %123

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.super_block*, %struct.super_block** %6, align 8
  %42 = load i32, i32* @NILFS_SUFILE_INO, align 4
  %43 = call %struct.inode* @nilfs_iget_locked(%struct.super_block* %41, i32* null, i32 %42)
  store %struct.inode* %43, %struct.inode** %10, align 8
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = icmp ne %struct.inode* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %123

53:                                               ; preds = %40
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @I_NEW, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  br label %116

61:                                               ; preds = %53
  %62 = load %struct.inode*, %struct.inode** %10, align 8
  %63 = load i32, i32* @NILFS_MDT_GFP, align 4
  %64 = call i32 @nilfs_mdt_init(%struct.inode* %62, i32 %63, i32 24)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %119

68:                                               ; preds = %61
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @nilfs_mdt_set_entry_size(%struct.inode* %69, i64 %70, i32 4)
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = load %struct.nilfs_inode*, %struct.nilfs_inode** %8, align 8
  %74 = call i32 @nilfs_read_inode_common(%struct.inode* %72, %struct.nilfs_inode* %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %119

78:                                               ; preds = %68
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = call i32 @nilfs_sufile_get_header_block(%struct.inode* %79, %struct.buffer_head** %12)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %119

84:                                               ; preds = %78
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = call %struct.nilfs_sufile_info* @NILFS_SUI(%struct.inode* %85)
  store %struct.nilfs_sufile_info* %86, %struct.nilfs_sufile_info** %11, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %88 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @kmap_atomic(i32 %89)
  store i8* %90, i8** %14, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %93 = call i32 @bh_offset(%struct.buffer_head* %92)
  %94 = sext i32 %93 to i64
  %95 = getelementptr i8, i8* %91, i64 %94
  %96 = bitcast i8* %95 to %struct.nilfs_sufile_header*
  store %struct.nilfs_sufile_header* %96, %struct.nilfs_sufile_header** %13, align 8
  %97 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %13, align 8
  %98 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le64_to_cpu(i32 %99)
  %101 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %11, align 8
  %102 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 @kunmap_atomic(i8* %103)
  %105 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %106 = call i32 @brelse(%struct.buffer_head* %105)
  %107 = load %struct.inode*, %struct.inode** %10, align 8
  %108 = call i64 @nilfs_sufile_get_nsegments(%struct.inode* %107)
  %109 = sub nsw i64 %108, 1
  %110 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %11, align 8
  %111 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %11, align 8
  %113 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  %114 = load %struct.inode*, %struct.inode** %10, align 8
  %115 = call i32 @unlock_new_inode(%struct.inode* %114)
  br label %116

116:                                              ; preds = %84, %60
  %117 = load %struct.inode*, %struct.inode** %10, align 8
  %118 = load %struct.inode**, %struct.inode*** %9, align 8
  store %struct.inode* %117, %struct.inode** %118, align 8
  store i32 0, i32* %5, align 4
  br label %123

119:                                              ; preds = %83, %77, %67
  %120 = load %struct.inode*, %struct.inode** %10, align 8
  %121 = call i32 @iget_failed(%struct.inode* %120)
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %119, %116, %50, %32, %21
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i64) #1

declare dso_local %struct.inode* @nilfs_iget_locked(%struct.super_block*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_mdt_init(%struct.inode*, i32, i32) #1

declare dso_local i32 @nilfs_mdt_set_entry_size(%struct.inode*, i64, i32) #1

declare dso_local i32 @nilfs_read_inode_common(%struct.inode*, %struct.nilfs_inode*) #1

declare dso_local i32 @nilfs_sufile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local %struct.nilfs_sufile_info* @NILFS_SUI(%struct.inode*) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @nilfs_sufile_get_nsegments(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
