; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_read_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_read_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_read_inline_data(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call i32 @F2FS_I_SB(%struct.inode* %7)
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.page* @f2fs_get_node_page(i32 %8, i32 %11)
  store %struct.page* %12, %struct.page** %6, align 8
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = call i64 @IS_ERR(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i32 @unlock_page(%struct.page* %17)
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.page* %19)
  store i32 %20, i32* %3, align 4
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @f2fs_has_inline_data(%struct.inode* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = call i32 @f2fs_put_page(%struct.page* %26, i32 1)
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %55

30:                                               ; preds = %21
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = getelementptr inbounds %struct.page, %struct.page* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.page*, %struct.page** %5, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @zero_user_segment(%struct.page* %36, i32 0, i32 %37)
  br label %43

39:                                               ; preds = %30
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = load %struct.page*, %struct.page** %6, align 8
  %42 = call i32 @f2fs_do_read_inline_data(%struct.page* %40, %struct.page* %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.page*, %struct.page** %5, align 8
  %45 = call i32 @PageUptodate(%struct.page* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load %struct.page*, %struct.page** %5, align 8
  %49 = call i32 @SetPageUptodate(%struct.page* %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load %struct.page*, %struct.page** %6, align 8
  %52 = call i32 @f2fs_put_page(%struct.page* %51, i32 1)
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = call i32 @unlock_page(%struct.page* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %25, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.page* @f2fs_get_node_page(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_has_inline_data(%struct.inode*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @f2fs_do_read_inline_data(%struct.page*, %struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
