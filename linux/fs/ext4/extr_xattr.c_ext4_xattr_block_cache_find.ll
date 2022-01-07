; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_block_cache_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_block_cache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_xattr_header = type { i32 }
%struct.mb_cache_entry = type { i64 }
%struct.mb_cache = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"looking for cached blocks [%x]\00", align 1
@REQ_PRIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"block %lu read error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, %struct.ext4_xattr_header*, %struct.mb_cache_entry**)* @ext4_xattr_block_cache_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ext4_xattr_block_cache_find(%struct.inode* %0, %struct.ext4_xattr_header* %1, %struct.mb_cache_entry** %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_xattr_header*, align 8
  %7 = alloca %struct.mb_cache_entry**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mb_cache_entry*, align 8
  %10 = alloca %struct.mb_cache*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_xattr_header* %1, %struct.ext4_xattr_header** %6, align 8
  store %struct.mb_cache_entry** %2, %struct.mb_cache_entry*** %7, align 8
  %12 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %6, align 8
  %13 = getelementptr inbounds %struct.ext4_xattr_header, %struct.ext4_xattr_header* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le32_to_cpu(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.mb_cache* @EA_BLOCK_CACHE(%struct.inode* %16)
  store %struct.mb_cache* %17, %struct.mb_cache** %10, align 8
  %18 = load %struct.mb_cache*, %struct.mb_cache** %10, align 8
  %19 = icmp ne %struct.mb_cache* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %81

21:                                               ; preds = %3
  %22 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %6, align 8
  %23 = getelementptr inbounds %struct.ext4_xattr_header, %struct.ext4_xattr_header* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %81

27:                                               ; preds = %21
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @ea_idebug(%struct.inode* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.mb_cache*, %struct.mb_cache** %10, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call %struct.mb_cache_entry* @mb_cache_entry_find_first(%struct.mb_cache* %32, i64 %33)
  store %struct.mb_cache_entry* %34, %struct.mb_cache_entry** %9, align 8
  br label %35

35:                                               ; preds = %74, %27
  %36 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %9, align 8
  %37 = icmp ne %struct.mb_cache_entry* %36, null
  br i1 %37, label %38, label %80

38:                                               ; preds = %35
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %9, align 8
  %43 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @REQ_PRIO, align 4
  %46 = call %struct.buffer_head* @ext4_sb_bread(i32 %41, i64 %44, i32 %45)
  store %struct.buffer_head* %46, %struct.buffer_head** %11, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %48 = call i64 @IS_ERR(%struct.buffer_head* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %38
  %51 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %52 = call i32 @PTR_ERR(%struct.buffer_head* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %81

57:                                               ; preds = %50
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %9, align 8
  %60 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @EXT4_ERROR_INODE(%struct.inode* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  br label %74

63:                                               ; preds = %38
  %64 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %6, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %66 = call i32 @BHDR(%struct.buffer_head* %65)
  %67 = call i64 @ext4_xattr_cmp(%struct.ext4_xattr_header* %64, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %9, align 8
  %71 = load %struct.mb_cache_entry**, %struct.mb_cache_entry*** %7, align 8
  store %struct.mb_cache_entry* %70, %struct.mb_cache_entry** %71, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %72, %struct.buffer_head** %4, align 8
  br label %81

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %57
  %75 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %76 = call i32 @brelse(%struct.buffer_head* %75)
  %77 = load %struct.mb_cache*, %struct.mb_cache** %10, align 8
  %78 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %9, align 8
  %79 = call %struct.mb_cache_entry* @mb_cache_entry_find_next(%struct.mb_cache* %77, %struct.mb_cache_entry* %78)
  store %struct.mb_cache_entry* %79, %struct.mb_cache_entry** %9, align 8
  br label %35

80:                                               ; preds = %35
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %81

81:                                               ; preds = %80, %69, %56, %26, %20
  %82 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %82
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.mb_cache* @EA_BLOCK_CACHE(%struct.inode*) #1

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, i32) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_find_first(%struct.mb_cache*, i64) #1

declare dso_local %struct.buffer_head* @ext4_sb_bread(i32, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i64) #1

declare dso_local i64 @ext4_xattr_cmp(%struct.ext4_xattr_header*, i32) #1

declare dso_local i32 @BHDR(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_find_next(%struct.mb_cache*, %struct.mb_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
