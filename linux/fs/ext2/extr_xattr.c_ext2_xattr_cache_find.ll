; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_cache_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_cache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ext2_xattr_header = type { i32 }
%struct.mb_cache_entry = type { i64, i32 }
%struct.mb_cache = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"looking for cached blocks [%x]\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ext2_xattr_cache_find\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"inode %ld: block %ld read error\00", align 1
@EXT2_XATTR_REFCOUNT_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"block %ld refcount %d>%d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"b_count=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, %struct.ext2_xattr_header*)* @ext2_xattr_cache_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ext2_xattr_cache_find(%struct.inode* %0, %struct.ext2_xattr_header* %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext2_xattr_header*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mb_cache_entry*, align 8
  %8 = alloca %struct.mb_cache*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext2_xattr_header* %1, %struct.ext2_xattr_header** %5, align 8
  %10 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %5, align 8
  %11 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @le32_to_cpu(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.mb_cache* @EA_BLOCK_CACHE(%struct.inode* %14)
  store %struct.mb_cache* %15, %struct.mb_cache** %8, align 8
  %16 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %5, align 8
  %17 = getelementptr inbounds %struct.ext2_xattr_header, %struct.ext2_xattr_header* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %121

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = call i32 (%struct.inode*, i8*, i64, ...) @ea_idebug(%struct.inode* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %62, %21
  %28 = load %struct.mb_cache*, %struct.mb_cache** %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call %struct.mb_cache_entry* @mb_cache_entry_find_first(%struct.mb_cache* %28, i64 %29)
  store %struct.mb_cache_entry* %30, %struct.mb_cache_entry** %7, align 8
  br label %31

31:                                               ; preds = %116, %27
  %32 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %33 = icmp ne %struct.mb_cache_entry* %32, null
  br i1 %33, label %34, label %120

34:                                               ; preds = %31
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %39 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call %struct.buffer_head* @sb_bread(i32 %37, i64 %40)
  store %struct.buffer_head* %41, %struct.buffer_head** %9, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %43 = icmp ne %struct.buffer_head* %42, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %34
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %52 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ext2_error(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %50, i64 %53)
  br label %116

55:                                               ; preds = %34
  %56 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %57 = call i32 @lock_buffer(%struct.buffer_head* %56)
  %58 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %59 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %58, i32 0, i32 1
  %60 = call i64 @hlist_bl_unhashed(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.mb_cache*, %struct.mb_cache** %8, align 8
  %64 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %65 = call i32 @mb_cache_entry_put(%struct.mb_cache* %63, %struct.mb_cache_entry* %64)
  %66 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %67 = call i32 @unlock_buffer(%struct.buffer_head* %66)
  %68 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %69 = call i32 @brelse(%struct.buffer_head* %68)
  br label %27

70:                                               ; preds = %55
  %71 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %72 = call %struct.TYPE_3__* @HDR(%struct.buffer_head* %71)
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @le32_to_cpu(i32 %74)
  %76 = load i64, i64* @EXT2_XATTR_REFCOUNT_MAX, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %70
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %81 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %84 = call %struct.TYPE_3__* @HDR(%struct.buffer_head* %83)
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @le32_to_cpu(i32 %86)
  %88 = load i64, i64* @EXT2_XATTR_REFCOUNT_MAX, align 8
  %89 = call i32 (%struct.inode*, i8*, i64, ...) @ea_idebug(%struct.inode* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %82, i64 %87, i64 %88)
  br label %110

90:                                               ; preds = %70
  %91 = load %struct.ext2_xattr_header*, %struct.ext2_xattr_header** %5, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %93 = call %struct.TYPE_3__* @HDR(%struct.buffer_head* %92)
  %94 = call i32 @ext2_xattr_cmp(%struct.ext2_xattr_header* %91, %struct.TYPE_3__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %90
  %97 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %98 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %99 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %98, i32 0, i32 0
  %100 = call i32 @atomic_read(i32* %99)
  %101 = call i32 @ea_bdebug(%struct.buffer_head* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load %struct.mb_cache*, %struct.mb_cache** %8, align 8
  %103 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %104 = call i32 @mb_cache_entry_touch(%struct.mb_cache* %102, %struct.mb_cache_entry* %103)
  %105 = load %struct.mb_cache*, %struct.mb_cache** %8, align 8
  %106 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %107 = call i32 @mb_cache_entry_put(%struct.mb_cache* %105, %struct.mb_cache_entry* %106)
  %108 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %108, %struct.buffer_head** %3, align 8
  br label %121

109:                                              ; preds = %90
  br label %110

110:                                              ; preds = %109, %78
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %113 = call i32 @unlock_buffer(%struct.buffer_head* %112)
  %114 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %115 = call i32 @brelse(%struct.buffer_head* %114)
  br label %116

116:                                              ; preds = %111, %44
  %117 = load %struct.mb_cache*, %struct.mb_cache** %8, align 8
  %118 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %7, align 8
  %119 = call %struct.mb_cache_entry* @mb_cache_entry_find_next(%struct.mb_cache* %117, %struct.mb_cache_entry* %118)
  store %struct.mb_cache_entry* %119, %struct.mb_cache_entry** %7, align 8
  br label %31

120:                                              ; preds = %31
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %121

121:                                              ; preds = %120, %96, %20
  %122 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  ret %struct.buffer_head* %122
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.mb_cache* @EA_BLOCK_CACHE(%struct.inode*) #1

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, i64, ...) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_find_first(%struct.mb_cache*, i64) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i64) #1

declare dso_local i32 @ext2_error(i32, i8*, i8*, i32, i64) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @hlist_bl_unhashed(i32*) #1

declare dso_local i32 @mb_cache_entry_put(%struct.mb_cache*, %struct.mb_cache_entry*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_3__* @HDR(%struct.buffer_head*) #1

declare dso_local i32 @ext2_xattr_cmp(%struct.ext2_xattr_header*, %struct.TYPE_3__*) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mb_cache_entry_touch(%struct.mb_cache*, %struct.mb_cache_entry*) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_find_next(%struct.mb_cache*, %struct.mb_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
