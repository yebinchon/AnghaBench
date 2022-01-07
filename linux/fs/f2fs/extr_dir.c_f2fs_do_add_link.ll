; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_do_add_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_do_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.inode = type { i32 }
%struct.fscrypt_name = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_dir_entry = type { i32 }
%struct.TYPE_2__ = type { i32* }

@current = common dso_local global i32* null, align 8
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_do_add_link(%struct.inode* %0, %struct.qstr* %1, %struct.inode* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fscrypt_name, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.f2fs_dir_entry*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.qstr* %1, %struct.qstr** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.page* null, %struct.page** %13, align 8
  store %struct.f2fs_dir_entry* null, %struct.f2fs_dir_entry** %14, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = load %struct.qstr*, %struct.qstr** %8, align 8
  %18 = call i32 @fscrypt_setup_filename(%struct.inode* %16, %struct.qstr* %17, i32 0, %struct.fscrypt_name* %12)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %15, align 4
  store i32 %22, i32* %6, align 4
  br label %61

23:                                               ; preds = %5
  %24 = load i32*, i32** @current, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %24, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = call %struct.f2fs_dir_entry* @__f2fs_find_entry(%struct.inode* %31, %struct.fscrypt_name* %12, %struct.page** %13)
  store %struct.f2fs_dir_entry* %32, %struct.f2fs_dir_entry** %14, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %30, %23
  %37 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %14, align 8
  %38 = icmp ne %struct.f2fs_dir_entry* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.page*, %struct.page** %13, align 8
  %41 = call i32 @f2fs_put_page(%struct.page* %40, i32 0)
  %42 = load i32, i32* @EEXIST, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %15, align 4
  br label %58

44:                                               ; preds = %36
  %45 = load %struct.page*, %struct.page** %13, align 8
  %46 = call i64 @IS_ERR(%struct.page* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.page*, %struct.page** %13, align 8
  %50 = call i32 @PTR_ERR(%struct.page* %49)
  store i32 %50, i32* %15, align 4
  br label %57

51:                                               ; preds = %44
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @f2fs_add_dentry(%struct.inode* %52, %struct.fscrypt_name* %12, %struct.inode* %53, i32 %54, i32 %55)
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %51, %48
  br label %58

58:                                               ; preds = %57, %39
  %59 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %12)
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %21
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @fscrypt_setup_filename(%struct.inode*, %struct.qstr*, i32, %struct.fscrypt_name*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local %struct.f2fs_dir_entry* @__f2fs_find_entry(%struct.inode*, %struct.fscrypt_name*, %struct.page**) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_add_dentry(%struct.inode*, %struct.fscrypt_name*, %struct.inode*, i32, i32) #1

declare dso_local i32 @fscrypt_free_filename(%struct.fscrypt_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
