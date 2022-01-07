; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_resize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_sufile_header = type { i32 }
%struct.nilfs_sufile_info = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_sufile_resize(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.nilfs_sufile_header*, align 8
  %8 = alloca %struct.nilfs_sufile_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %16, align 8
  store %struct.the_nilfs* %17, %struct.the_nilfs** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call %struct.nilfs_sufile_info* @NILFS_SUI(%struct.inode* %18)
  store %struct.nilfs_sufile_info* %19, %struct.nilfs_sufile_info** %8, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call %struct.TYPE_4__* @NILFS_MDT(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @down_write(i32* %22)
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call i64 @nilfs_sufile_get_nsegments(%struct.inode* %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %114

30:                                               ; preds = %2
  %31 = load i32, i32* @ENOSPC, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %12, align 4
  %33 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @nilfs_nrsvsegs(%struct.the_nilfs* %33, i64 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %30
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %4, align 8
  %42 = sub i64 %40, %41
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %42, %43
  %45 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %8, align 8
  %46 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %114

50:                                               ; preds = %39, %30
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = call i32 @nilfs_sufile_get_header_block(%struct.inode* %51, %struct.buffer_head** %6)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %114

56:                                               ; preds = %50
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %10, align 8
  %63 = sub i64 %61, %62
  %64 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %8, align 8
  %65 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, %63
  store i64 %67, i64* %65, align 8
  br label %85

68:                                               ; preds = %56
  %69 = load %struct.inode*, %struct.inode** %3, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* %10, align 8
  %72 = sub i64 %71, 1
  %73 = call i32 @nilfs_sufile_truncate_range(%struct.inode* %69, i64 %70, i64 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %111

77:                                               ; preds = %68
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %4, align 8
  %80 = sub i64 %78, %79
  %81 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %8, align 8
  %82 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %83, %80
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %77, %60
  %86 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %87 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @kmap_atomic(i32 %88)
  store i8* %89, i8** %9, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %92 = call i32 @bh_offset(%struct.buffer_head* %91)
  %93 = sext i32 %92 to i64
  %94 = getelementptr i8, i8* %90, i64 %93
  %95 = bitcast i8* %94 to %struct.nilfs_sufile_header*
  store %struct.nilfs_sufile_header* %95, %struct.nilfs_sufile_header** %7, align 8
  %96 = load %struct.nilfs_sufile_info*, %struct.nilfs_sufile_info** %8, align 8
  %97 = getelementptr inbounds %struct.nilfs_sufile_info, %struct.nilfs_sufile_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @cpu_to_le64(i64 %98)
  %100 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %7, align 8
  %101 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @kunmap_atomic(i8* %102)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %105 = call i32 @mark_buffer_dirty(%struct.buffer_head* %104)
  %106 = load %struct.inode*, %struct.inode** %3, align 8
  %107 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %106)
  %108 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %109 = load i64, i64* %4, align 8
  %110 = call i32 @nilfs_set_nsegments(%struct.the_nilfs* %108, i64 %109)
  br label %111

111:                                              ; preds = %85, %76
  %112 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %113 = call i32 @brelse(%struct.buffer_head* %112)
  br label %114

114:                                              ; preds = %111, %55, %49, %29
  %115 = load %struct.inode*, %struct.inode** %3, align 8
  %116 = call %struct.TYPE_4__* @NILFS_MDT(%struct.inode* %115)
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = call i32 @up_write(i32* %117)
  %119 = load i32, i32* %12, align 4
  ret i32 %119
}

declare dso_local %struct.nilfs_sufile_info* @NILFS_SUI(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_4__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i64 @nilfs_sufile_get_nsegments(%struct.inode*) #1

declare dso_local i64 @nilfs_nrsvsegs(%struct.the_nilfs*, i64) #1

declare dso_local i32 @nilfs_sufile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_sufile_truncate_range(%struct.inode*, i64, i64) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

declare dso_local i32 @nilfs_set_nsegments(%struct.the_nilfs*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
