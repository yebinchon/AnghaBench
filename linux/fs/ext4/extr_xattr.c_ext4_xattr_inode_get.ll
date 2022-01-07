; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_xattr_entry = type { i32, i32 }
%struct.mb_cache = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"ea_inode file size=%llu entry size=%zu\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@EXT4_STATE_LUSTRE_EA_INODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"EA inode hash validation failed\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_xattr_entry*, i8*, i64)* @ext4_xattr_inode_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_inode_get(%struct.inode* %0, %struct.ext4_xattr_entry* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_xattr_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mb_cache*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_xattr_entry* %1, %struct.ext4_xattr_entry** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.mb_cache* @EA_INODE_CACHE(%struct.inode* %12)
  store %struct.mb_cache* %13, %struct.mb_cache** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %6, align 8
  %16 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %6, align 8
  %20 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = call i32 @ext4_xattr_inode_iget(%struct.inode* %14, i32 %18, i32 %22, %struct.inode** %10)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %78

27:                                               ; preds = %4
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = call i64 @i_size_read(%struct.inode* %28)
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = call i64 @i_size_read(%struct.inode* %34)
  %36 = load i64, i64* %8, align 8
  %37 = call i32 (%struct.inode*, i8*, ...) @ext4_warning_inode(%struct.inode* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %36)
  %38 = load i32, i32* @EFSCORRUPTED, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %78

40:                                               ; preds = %27
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @ext4_xattr_inode_read(%struct.inode* %41, i8* %42, i64 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %78

48:                                               ; preds = %40
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = load i32, i32* @EXT4_STATE_LUSTRE_EA_INODE, align 4
  %51 = call i32 @ext4_test_inode_state(%struct.inode* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %77, label %53

53:                                               ; preds = %48
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @ext4_xattr_inode_verify_hashes(%struct.inode* %54, %struct.ext4_xattr_entry* %55, i8* %56, i64 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.inode*, %struct.inode** %10, align 8
  %63 = call i32 (%struct.inode*, i8*, ...) @ext4_warning_inode(%struct.inode* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %78

64:                                               ; preds = %53
  %65 = load %struct.mb_cache*, %struct.mb_cache** %9, align 8
  %66 = icmp ne %struct.mb_cache* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.mb_cache*, %struct.mb_cache** %9, align 8
  %69 = load i32, i32* @GFP_NOFS, align 4
  %70 = load %struct.inode*, %struct.inode** %10, align 8
  %71 = call i32 @ext4_xattr_inode_get_hash(%struct.inode* %70)
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mb_cache_entry_create(%struct.mb_cache* %68, i32 %69, i32 %71, i32 %74, i32 1)
  br label %76

76:                                               ; preds = %67, %64
  br label %77

77:                                               ; preds = %76, %48
  br label %78

78:                                               ; preds = %77, %61, %47, %32, %26
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = call i32 @iput(%struct.inode* %79)
  %81 = load i32, i32* %11, align 4
  ret i32 %81
}

declare dso_local %struct.mb_cache* @EA_INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ext4_xattr_inode_iget(%struct.inode*, i32, i32, %struct.inode**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ext4_warning_inode(%struct.inode*, i8*, ...) #1

declare dso_local i32 @ext4_xattr_inode_read(%struct.inode*, i8*, i64) #1

declare dso_local i32 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_xattr_inode_verify_hashes(%struct.inode*, %struct.ext4_xattr_entry*, i8*, i64) #1

declare dso_local i32 @mb_cache_entry_create(%struct.mb_cache*, i32, i32, i32, i32) #1

declare dso_local i32 @ext4_xattr_inode_get_hash(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
