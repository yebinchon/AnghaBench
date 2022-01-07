; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_get_new_data_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_get_new_data_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }
%struct.dnode_of_data = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@NEW_ADDR = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @f2fs_get_new_data_page(%struct.inode* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.dnode_of_data, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.address_space*, %struct.address_space** %15, align 8
  store %struct.address_space* %16, %struct.address_space** %10, align 8
  %17 = load %struct.address_space*, %struct.address_space** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.page* @f2fs_grab_cache_page(%struct.address_space* %17, i32 %18, i32 1)
  store %struct.page* %19, %struct.page** %11, align 8
  %20 = load %struct.page*, %struct.page** %11, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = call i32 @f2fs_put_page(%struct.page* %23, i32 1)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.page* @ERR_PTR(i32 %26)
  store %struct.page* %27, %struct.page** %5, align 8
  br label %104

28:                                               ; preds = %4
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = call i32 @set_new_dnode(%struct.dnode_of_data* %12, %struct.inode* %29, %struct.page* %30, i32* null, i32 0)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @f2fs_reserve_block(%struct.dnode_of_data* %12, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.page*, %struct.page** %11, align 8
  %38 = call i32 @f2fs_put_page(%struct.page* %37, i32 1)
  %39 = load i32, i32* %13, align 4
  %40 = call %struct.page* @ERR_PTR(i32 %39)
  store %struct.page* %40, %struct.page** %5, align 8
  br label %104

41:                                               ; preds = %28
  %42 = load %struct.page*, %struct.page** %7, align 8
  %43 = icmp ne %struct.page* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %12)
  br label %46

46:                                               ; preds = %44, %41
  %47 = load %struct.page*, %struct.page** %11, align 8
  %48 = call i64 @PageUptodate(%struct.page* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %84

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %12, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NEW_ADDR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.page*, %struct.page** %11, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = call i32 @zero_user_segment(%struct.page* %57, i32 0, i32 %58)
  %60 = load %struct.page*, %struct.page** %11, align 8
  %61 = call i64 @PageUptodate(%struct.page* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load %struct.page*, %struct.page** %11, align 8
  %65 = call i32 @SetPageUptodate(%struct.page* %64)
  br label %66

66:                                               ; preds = %63, %56
  br label %83

67:                                               ; preds = %51
  %68 = load %struct.page*, %struct.page** %11, align 8
  %69 = call i32 @f2fs_put_page(%struct.page* %68, i32 1)
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = call i32 @F2FS_I_SB(%struct.inode* %70)
  %72 = load %struct.page*, %struct.page** %7, align 8
  %73 = call i32 @f2fs_bug_on(i32 %71, %struct.page* %72)
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call %struct.page* @f2fs_get_lock_data_page(%struct.inode* %74, i32 %75, i32 1)
  store %struct.page* %76, %struct.page** %11, align 8
  %77 = load %struct.page*, %struct.page** %11, align 8
  %78 = call i64 @IS_ERR(%struct.page* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %81, %struct.page** %5, align 8
  br label %104

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %66
  br label %84

84:                                               ; preds = %83, %50
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = call i32 @i_size_read(%struct.inode* %88)
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* @PAGE_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  %99 = load i32, i32* @PAGE_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = call i32 @f2fs_i_size_write(%struct.inode* %96, i32 %100)
  br label %102

102:                                              ; preds = %95, %87, %84
  %103 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %103, %struct.page** %5, align 8
  br label %104

104:                                              ; preds = %102, %80, %36, %22
  %105 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %105
}

declare dso_local %struct.page* @f2fs_grab_cache_page(%struct.address_space*, i32, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, %struct.page*, i32*, i32) #1

declare dso_local i32 @f2fs_reserve_block(%struct.dnode_of_data*, i32) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @f2fs_bug_on(i32, %struct.page*) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.page* @f2fs_get_lock_data_page(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @f2fs_i_size_write(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
