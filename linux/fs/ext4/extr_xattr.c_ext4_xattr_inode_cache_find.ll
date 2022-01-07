; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_cache_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_cache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.mb_cache_entry = type { i32 }
%struct.mb_cache = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@EXT4_IGET_NORMAL = common dso_local global i32 0, align 4
@EXT4_EA_INODE_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.inode*, i8*, i64, i32)* @ext4_xattr_inode_cache_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @ext4_xattr_inode_cache_find(%struct.inode* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.mb_cache_entry*, align 8
  %12 = alloca %struct.mb_cache*, align 8
  %13 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.mb_cache* @EA_INODE_CACHE(%struct.inode* %14)
  store %struct.mb_cache* %15, %struct.mb_cache** %12, align 8
  %16 = load %struct.mb_cache*, %struct.mb_cache** %12, align 8
  %17 = icmp ne %struct.mb_cache* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.inode* null, %struct.inode** %5, align 8
  br label %111

19:                                               ; preds = %4
  %20 = load %struct.mb_cache*, %struct.mb_cache** %12, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.mb_cache_entry* @mb_cache_entry_find_first(%struct.mb_cache* %20, i32 %21)
  store %struct.mb_cache_entry* %22, %struct.mb_cache_entry** %11, align 8
  %23 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %11, align 8
  %24 = icmp ne %struct.mb_cache_entry* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store %struct.inode* null, %struct.inode** %5, align 8
  br label %111

26:                                               ; preds = %19
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* @GFP_NOFS, align 4
  %29 = call i8* @ext4_kvmalloc(i64 %27, i32 %28)
  store i8* %29, i8** %13, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load %struct.mb_cache*, %struct.mb_cache** %12, align 8
  %34 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %11, align 8
  %35 = call i32 @mb_cache_entry_put(%struct.mb_cache* %33, %struct.mb_cache_entry* %34)
  store %struct.inode* null, %struct.inode** %5, align 8
  br label %111

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %104, %36
  %38 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %11, align 8
  %39 = icmp ne %struct.mb_cache_entry* %38, null
  br i1 %39, label %40, label %108

40:                                               ; preds = %37
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %11, align 8
  %45 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EXT4_IGET_NORMAL, align 4
  %48 = call %struct.inode* @ext4_iget(i32 %43, i32 %46, i32 %47)
  store %struct.inode* %48, %struct.inode** %10, align 8
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = call i32 @IS_ERR(%struct.inode* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %97, label %52

52:                                               ; preds = %40
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = call i32 @is_bad_inode(%struct.inode* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %97, label %56

56:                                               ; preds = %52
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @EXT4_EA_INODE_FL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %56
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = call i64 @i_size_read(%struct.inode* %65)
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %64
  %70 = load %struct.inode*, %struct.inode** %10, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @ext4_xattr_inode_read(%struct.inode* %70, i8* %71, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %69
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @ext4_xattr_inode_verify_hashes(%struct.inode* %76, i32* null, i8* %77, i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %75
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @memcmp(i8* %82, i8* %83, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %81
  %88 = load %struct.mb_cache*, %struct.mb_cache** %12, align 8
  %89 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %11, align 8
  %90 = call i32 @mb_cache_entry_touch(%struct.mb_cache* %88, %struct.mb_cache_entry* %89)
  %91 = load %struct.mb_cache*, %struct.mb_cache** %12, align 8
  %92 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %11, align 8
  %93 = call i32 @mb_cache_entry_put(%struct.mb_cache* %91, %struct.mb_cache_entry* %92)
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @kvfree(i8* %94)
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %96, %struct.inode** %5, align 8
  br label %111

97:                                               ; preds = %81, %75, %69, %64, %56, %52, %40
  %98 = load %struct.inode*, %struct.inode** %10, align 8
  %99 = call i32 @IS_ERR(%struct.inode* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = call i32 @iput(%struct.inode* %102)
  br label %104

104:                                              ; preds = %101, %97
  %105 = load %struct.mb_cache*, %struct.mb_cache** %12, align 8
  %106 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %11, align 8
  %107 = call %struct.mb_cache_entry* @mb_cache_entry_find_next(%struct.mb_cache* %105, %struct.mb_cache_entry* %106)
  store %struct.mb_cache_entry* %107, %struct.mb_cache_entry** %11, align 8
  br label %37

108:                                              ; preds = %37
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 @kvfree(i8* %109)
  store %struct.inode* null, %struct.inode** %5, align 8
  br label %111

111:                                              ; preds = %108, %87, %32, %25, %18
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %112
}

declare dso_local %struct.mb_cache* @EA_INODE_CACHE(%struct.inode*) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_find_first(%struct.mb_cache*, i32) #1

declare dso_local i8* @ext4_kvmalloc(i64, i32) #1

declare dso_local i32 @mb_cache_entry_put(%struct.mb_cache*, %struct.mb_cache_entry*) #1

declare dso_local %struct.inode* @ext4_iget(i32, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @is_bad_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ext4_xattr_inode_read(%struct.inode*, i8*, i64) #1

declare dso_local i32 @ext4_xattr_inode_verify_hashes(%struct.inode*, i32*, i8*, i64) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @mb_cache_entry_touch(%struct.mb_cache*, %struct.mb_cache_entry*) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_find_next(%struct.mb_cache*, %struct.mb_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
