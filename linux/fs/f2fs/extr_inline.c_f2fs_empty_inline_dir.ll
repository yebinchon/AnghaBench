; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_empty_inline_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_empty_inline_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_dentry_ptr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_empty_inline_dir(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.f2fs_dentry_ptr, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %9)
  store %struct.f2fs_sb_info* %10, %struct.f2fs_sb_info** %4, align 8
  store i32 2, i32* %6, align 4
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %11, i32 %14)
  store %struct.page* %15, %struct.page** %5, align 8
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = call i64 @IS_ERR(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = call i8* @inline_data_addr(%struct.inode* %21, %struct.page* %22)
  store i8* %23, i8** %7, align 8
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @make_dentry_ptr_inline(%struct.inode* %24, %struct.f2fs_dentry_ptr* %8, i8* %25)
  %27 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %8, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @find_next_bit_le(i32 %28, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = call i32 @f2fs_put_page(%struct.page* %33, i32 1)
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds %struct.f2fs_dentry_ptr, %struct.f2fs_dentry_ptr* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %41

40:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %39, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i8* @inline_data_addr(%struct.inode*, %struct.page*) #1

declare dso_local i32 @make_dentry_ptr_inline(%struct.inode*, %struct.f2fs_dentry_ptr*, i8*) #1

declare dso_local i32 @find_next_bit_le(i32, i32, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
