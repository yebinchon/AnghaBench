; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_find_in_inline_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_find_in_inline_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_dir_entry = type { i32 }
%struct.inode = type { i32, i32 }
%struct.fscrypt_name = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.qstr = type { i32 }
%struct.f2fs_dentry_ptr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.f2fs_dir_entry* @f2fs_find_in_inline_dir(%struct.inode* %0, %struct.fscrypt_name* %1, %struct.page** %2) #0 {
  %4 = alloca %struct.f2fs_dir_entry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.fscrypt_name*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca %struct.qstr, align 4
  %10 = alloca %struct.f2fs_dir_entry*, align 8
  %11 = alloca %struct.f2fs_dentry_ptr, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.fscrypt_name* %1, %struct.fscrypt_name** %6, align 8
  store %struct.page** %2, %struct.page*** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.f2fs_sb_info* @F2FS_SB(i32 %17)
  store %struct.f2fs_sb_info* %18, %struct.f2fs_sb_info** %8, align 8
  %19 = load %struct.fscrypt_name*, %struct.fscrypt_name** %6, align 8
  %20 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %19, i32 0, i32 0
  %21 = call i32 @FSTR_TO_QSTR(i32* %20)
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %23, i32 %26)
  store %struct.page* %27, %struct.page** %12, align 8
  %28 = load %struct.page*, %struct.page** %12, align 8
  %29 = call i64 @IS_ERR(%struct.page* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.page*, %struct.page** %12, align 8
  %33 = load %struct.page**, %struct.page*** %7, align 8
  store %struct.page* %32, %struct.page** %33, align 8
  store %struct.f2fs_dir_entry* null, %struct.f2fs_dir_entry** %4, align 8
  br label %59

34:                                               ; preds = %3
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = load %struct.fscrypt_name*, %struct.fscrypt_name** %6, align 8
  %37 = call i32 @f2fs_dentry_hash(%struct.inode* %35, %struct.qstr* %9, %struct.fscrypt_name* %36)
  store i32 %37, i32* %14, align 4
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = load %struct.page*, %struct.page** %12, align 8
  %40 = call i8* @inline_data_addr(%struct.inode* %38, %struct.page* %39)
  store i8* %40, i8** %13, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @make_dentry_ptr_inline(%struct.inode* %41, %struct.f2fs_dentry_ptr* %11, i8* %42)
  %44 = load %struct.fscrypt_name*, %struct.fscrypt_name** %6, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call %struct.f2fs_dir_entry* @f2fs_find_target_dentry(%struct.fscrypt_name* %44, i32 %45, i32* null, %struct.f2fs_dentry_ptr* %11)
  store %struct.f2fs_dir_entry* %46, %struct.f2fs_dir_entry** %10, align 8
  %47 = load %struct.page*, %struct.page** %12, align 8
  %48 = call i32 @unlock_page(%struct.page* %47)
  %49 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %10, align 8
  %50 = icmp ne %struct.f2fs_dir_entry* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %34
  %52 = load %struct.page*, %struct.page** %12, align 8
  %53 = load %struct.page**, %struct.page*** %7, align 8
  store %struct.page* %52, %struct.page** %53, align 8
  br label %57

54:                                               ; preds = %34
  %55 = load %struct.page*, %struct.page** %12, align 8
  %56 = call i32 @f2fs_put_page(%struct.page* %55, i32 0)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %10, align 8
  store %struct.f2fs_dir_entry* %58, %struct.f2fs_dir_entry** %4, align 8
  br label %59

59:                                               ; preds = %57, %31
  %60 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %4, align 8
  ret %struct.f2fs_dir_entry* %60
}

declare dso_local %struct.f2fs_sb_info* @F2FS_SB(i32) #1

declare dso_local i32 @FSTR_TO_QSTR(i32*) #1

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_dentry_hash(%struct.inode*, %struct.qstr*, %struct.fscrypt_name*) #1

declare dso_local i8* @inline_data_addr(%struct.inode*, %struct.page*) #1

declare dso_local i32 @make_dentry_ptr_inline(%struct.inode*, %struct.f2fs_dentry_ptr*, i8*) #1

declare dso_local %struct.f2fs_dir_entry* @f2fs_find_target_dentry(%struct.fscrypt_name*, i32, i32*, %struct.f2fs_dentry_ptr*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
