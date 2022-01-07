; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_read_inline_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_read_inline_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i64 }
%struct.fscrypt_str = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_dentry_ptr = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_read_inline_dir(%struct.file* %0, %struct.dir_context* %1, %struct.fscrypt_str* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dir_context*, align 8
  %7 = alloca %struct.fscrypt_str*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.f2fs_dentry_ptr, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dir_context* %1, %struct.dir_context** %6, align 8
  store %struct.fscrypt_str* %2, %struct.fscrypt_str** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.inode* @file_inode(%struct.file* %13)
  store %struct.inode* %14, %struct.inode** %8, align 8
  store %struct.page* null, %struct.page** %9, align 8
  store i8* null, i8** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = call i32 @make_dentry_ptr_inline(%struct.inode* %15, %struct.f2fs_dentry_ptr* %10, i8* %16)
  %18 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %19 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %10, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call i32 @F2FS_I_SB(%struct.inode* %26)
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.page* @f2fs_get_node_page(i32 %27, i32 %30)
  store %struct.page* %31, %struct.page** %9, align 8
  %32 = load %struct.page*, %struct.page** %9, align 8
  %33 = call i64 @IS_ERR(%struct.page* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load %struct.page*, %struct.page** %9, align 8
  %37 = call i32 @PTR_ERR(%struct.page* %36)
  store i32 %37, i32* %4, align 4
  br label %67

38:                                               ; preds = %25
  %39 = load %struct.page*, %struct.page** %9, align 8
  %40 = call i32 @unlock_page(%struct.page* %39)
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = load %struct.page*, %struct.page** %9, align 8
  %43 = call i8* @inline_data_addr(%struct.inode* %41, %struct.page* %42)
  store i8* %43, i8** %11, align 8
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @make_dentry_ptr_inline(%struct.inode* %44, %struct.f2fs_dentry_ptr* %10, i8* %45)
  %47 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %48 = load %struct.fscrypt_str*, %struct.fscrypt_str** %7, align 8
  %49 = call i32 @f2fs_fill_dentries(%struct.dir_context* %47, %struct.f2fs_dentry_ptr* %10, i32 0, %struct.fscrypt_str* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %38
  %53 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %10, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %56 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %52, %38
  %58 = load %struct.page*, %struct.page** %9, align 8
  %59 = call i32 @f2fs_put_page(%struct.page* %58, i32 0)
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %12, align 4
  br label %65

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %35, %24
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @make_dentry_ptr_inline(%struct.inode*, %struct.f2fs_dentry_ptr*, i8*) #1

declare dso_local %struct.page* @f2fs_get_node_page(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i8* @inline_data_addr(%struct.inode*, %struct.page*) #1

declare dso_local i32 @f2fs_fill_dentries(%struct.dir_context*, %struct.f2fs_dentry_ptr*, i32, %struct.fscrypt_str*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
