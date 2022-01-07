; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_find_data_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_find_data_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @f2fs_find_data_page(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.address_space*, %struct.address_space** %9, align 8
  store %struct.address_space* %10, %struct.address_space** %6, align 8
  %11 = load %struct.address_space*, %struct.address_space** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.page* @find_get_page(%struct.address_space* %11, i32 %12)
  store %struct.page* %13, %struct.page** %7, align 8
  %14 = load %struct.page*, %struct.page** %7, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.page*, %struct.page** %7, align 8
  %18 = call i64 @PageUptodate(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %21, %struct.page** %3, align 8
  br label %57

22:                                               ; preds = %16, %2
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = call i32 @f2fs_put_page(%struct.page* %23, i32 0)
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.page* @f2fs_get_read_data_page(%struct.inode* %25, i32 %26, i32 0, i32 0)
  store %struct.page* %27, %struct.page** %7, align 8
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = call i64 @IS_ERR(%struct.page* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %32, %struct.page** %3, align 8
  br label %57

33:                                               ; preds = %22
  %34 = load %struct.page*, %struct.page** %7, align 8
  %35 = call i64 @PageUptodate(%struct.page* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %38, %struct.page** %3, align 8
  br label %57

39:                                               ; preds = %33
  %40 = load %struct.page*, %struct.page** %7, align 8
  %41 = call i32 @wait_on_page_locked(%struct.page* %40)
  %42 = load %struct.page*, %struct.page** %7, align 8
  %43 = call i64 @PageUptodate(%struct.page* %42)
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.page*, %struct.page** %7, align 8
  %51 = call i32 @f2fs_put_page(%struct.page* %50, i32 0)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.page* @ERR_PTR(i32 %53)
  store %struct.page* %54, %struct.page** %3, align 8
  br label %57

55:                                               ; preds = %39
  %56 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %56, %struct.page** %3, align 8
  br label %57

57:                                               ; preds = %55, %49, %37, %31, %20
  %58 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %58
}

declare dso_local %struct.page* @find_get_page(%struct.address_space*, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local %struct.page* @f2fs_get_read_data_page(%struct.inode*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @wait_on_page_locked(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
