; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c___f2fs_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c___f2fs_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_dir_entry = type { i32 }
%struct.inode = type { i32 }
%struct.fscrypt_name = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MAX_DIR_HASH_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Corrupted max_depth of %lu: %u\00", align 1
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.f2fs_dir_entry* @__f2fs_find_entry(%struct.inode* %0, %struct.fscrypt_name* %1, %struct.page** %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fscrypt_name*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.f2fs_dir_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.fscrypt_name* %1, %struct.fscrypt_name** %5, align 8
  store %struct.page** %2, %struct.page*** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i64 @dir_blocks(%struct.inode* %11)
  store i64 %12, i64* %7, align 8
  store %struct.f2fs_dir_entry* null, %struct.f2fs_dir_entry** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call i64 @f2fs_has_inline_dentry(%struct.inode* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.page**, %struct.page*** %6, align 8
  store %struct.page* null, %struct.page** %17, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = load %struct.fscrypt_name*, %struct.fscrypt_name** %5, align 8
  %20 = load %struct.page**, %struct.page*** %6, align 8
  %21 = call %struct.f2fs_dir_entry* @f2fs_find_in_inline_dir(%struct.inode* %18, %struct.fscrypt_name* %19, %struct.page** %20)
  store %struct.f2fs_dir_entry* %21, %struct.f2fs_dir_entry** %8, align 8
  br label %75

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load %struct.page**, %struct.page*** %6, align 8
  store %struct.page* null, %struct.page** %26, align 8
  br label %75

27:                                               ; preds = %22
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @MAX_DIR_HASH_DEPTH, align 4
  %34 = icmp ugt i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %27
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call i32 @F2FS_I_SB(%struct.inode* %39)
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @f2fs_warn(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* @MAX_DIR_HASH_DEPTH, align 4
  store i32 %46, i32* %9, align 4
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @f2fs_i_depth_write(%struct.inode* %47, i32 %48)
  br label %50

50:                                               ; preds = %38, %27
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %71, %50
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load %struct.page**, %struct.page*** %6, align 8
  store %struct.page* null, %struct.page** %56, align 8
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.fscrypt_name*, %struct.fscrypt_name** %5, align 8
  %60 = load %struct.page**, %struct.page*** %6, align 8
  %61 = call %struct.f2fs_dir_entry* @find_in_level(%struct.inode* %57, i32 %58, %struct.fscrypt_name* %59, %struct.page** %60)
  store %struct.f2fs_dir_entry* %61, %struct.f2fs_dir_entry** %8, align 8
  %62 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %8, align 8
  %63 = icmp ne %struct.f2fs_dir_entry* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %55
  %65 = load %struct.page**, %struct.page*** %6, align 8
  %66 = load %struct.page*, %struct.page** %65, align 8
  %67 = call i64 @IS_ERR(%struct.page* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %55
  br label %74

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %51

74:                                               ; preds = %69, %51
  br label %75

75:                                               ; preds = %74, %25, %16
  %76 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %8, align 8
  %77 = icmp ne %struct.f2fs_dir_entry* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @current, align 4
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %80)
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %75
  %84 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %8, align 8
  ret %struct.f2fs_dir_entry* %84
}

declare dso_local i64 @dir_blocks(%struct.inode*) #1

declare dso_local i64 @f2fs_has_inline_dentry(%struct.inode*) #1

declare dso_local %struct.f2fs_dir_entry* @f2fs_find_in_inline_dir(%struct.inode*, %struct.fscrypt_name*, %struct.page**) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @f2fs_i_depth_write(%struct.inode*, i32) #1

declare dso_local %struct.f2fs_dir_entry* @find_in_level(%struct.inode*, i32, %struct.fscrypt_name*, %struct.page**) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
