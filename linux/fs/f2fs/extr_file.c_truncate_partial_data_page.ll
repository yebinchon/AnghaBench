; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_truncate_partial_data_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_truncate_partial_data_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @truncate_partial_data_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truncate_partial_data_page(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %12, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.address_space*, %struct.address_space** %20, align 8
  store %struct.address_space* %21, %struct.address_space** %10, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %95

28:                                               ; preds = %24, %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.address_space*, %struct.address_space** %10, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.page* @find_lock_page(%struct.address_space* %32, i32 %33)
  store %struct.page* %34, %struct.page** %11, align 8
  %35 = load %struct.page*, %struct.page** %11, align 8
  %36 = icmp ne %struct.page* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.page*, %struct.page** %11, align 8
  %39 = call i64 @PageUptodate(%struct.page* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %65

42:                                               ; preds = %37, %31
  %43 = load %struct.page*, %struct.page** %11, align 8
  %44 = call i32 @f2fs_put_page(%struct.page* %43, i32 1)
  store i32 0, i32* %4, align 4
  br label %95

45:                                               ; preds = %28
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call %struct.page* @f2fs_get_lock_data_page(%struct.inode* %46, i32 %47, i32 1)
  store %struct.page* %48, %struct.page** %11, align 8
  %49 = load %struct.page*, %struct.page** %11, align 8
  %50 = call i64 @IS_ERR(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load %struct.page*, %struct.page** %11, align 8
  %54 = call i32 @PTR_ERR(%struct.page* %53)
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %62

59:                                               ; preds = %52
  %60 = load %struct.page*, %struct.page** %11, align 8
  %61 = call i32 @PTR_ERR(%struct.page* %60)
  br label %62

62:                                               ; preds = %59, %58
  %63 = phi i32 [ 0, %58 ], [ %61, %59 ]
  store i32 %63, i32* %4, align 4
  br label %95

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %64, %41
  %66 = load %struct.page*, %struct.page** %11, align 8
  %67 = load i32, i32* @DATA, align 4
  %68 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %66, i32 %67, i32 1, i32 1)
  %69 = load %struct.page*, %struct.page** %11, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 @zero_user(%struct.page* %69, i32 %70, i32 %73)
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = call i32 @F2FS_I_SB(%struct.inode* %75)
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = call i64 @IS_ENCRYPTED(%struct.inode* %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %79, %65
  %84 = phi i1 [ false, %65 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @f2fs_bug_on(i32 %76, i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load %struct.page*, %struct.page** %11, align 8
  %91 = call i32 @set_page_dirty(%struct.page* %90)
  br label %92

92:                                               ; preds = %89, %83
  %93 = load %struct.page*, %struct.page** %11, align 8
  %94 = call i32 @f2fs_put_page(%struct.page* %93, i32 1)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %62, %42, %27
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.page* @find_lock_page(%struct.address_space*, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local %struct.page* @f2fs_get_lock_data_page(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @f2fs_bug_on(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
