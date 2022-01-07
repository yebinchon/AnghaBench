; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_write_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_write_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.dnode_of_data = type { i32 }

@LOOKUP_NODE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@FI_APPEND_WRITE = common dso_local global i32 0, align 4
@FI_DATA_EXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_write_inline_data(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dnode_of_data, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @set_new_dnode(%struct.dnode_of_data* %8, %struct.inode* %10, i32* null, i32* null, i32 0)
  %12 = load i32, i32* @LOOKUP_NODE, align 4
  %13 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %8, i32 0, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %65

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i32 @f2fs_has_inline_data(%struct.inode* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %8)
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %65

26:                                               ; preds = %18
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i32 @F2FS_I_SB(%struct.inode* %27)
  %29 = load %struct.page*, %struct.page** %5, align 8
  %30 = getelementptr inbounds %struct.page, %struct.page* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @f2fs_bug_on(i32 %28, i32 %31)
  %33 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NODE, align 4
  %36 = call i32 @f2fs_wait_on_page_writeback(i32 %34, i32 %35, i32 1, i32 1)
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = call i8* @kmap_atomic(%struct.page* %37)
  store i8* %38, i8** %6, align 8
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @inline_data_addr(%struct.inode* %39, i32 %41)
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = call i32 @MAX_INLINE_DATA(%struct.inode* %45)
  %47 = call i32 @memcpy(i8* %43, i8* %44, i32 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @kunmap_atomic(i8* %48)
  %50 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @set_page_dirty(i32 %51)
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = call i32 @f2fs_clear_page_cache_dirty_tag(%struct.page* %53)
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = load i32, i32* @FI_APPEND_WRITE, align 4
  %57 = call i32 @set_inode_flag(%struct.inode* %55, i32 %56)
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = load i32, i32* @FI_DATA_EXIST, align 4
  %60 = call i32 @set_inode_flag(%struct.inode* %58, i32 %59)
  %61 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clear_inline_node(i32 %62)
  %64 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %8)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %26, %22, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #1

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i32, i32) #1

declare dso_local i32 @f2fs_has_inline_data(%struct.inode*) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

declare dso_local i32 @f2fs_bug_on(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(i32, i32, i32, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i8* @inline_data_addr(%struct.inode*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @MAX_INLINE_DATA(%struct.inode*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @set_page_dirty(i32) #1

declare dso_local i32 @f2fs_clear_page_cache_dirty_tag(%struct.page*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @clear_inline_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
