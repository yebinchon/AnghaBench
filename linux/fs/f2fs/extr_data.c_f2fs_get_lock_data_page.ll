; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_get_lock_data_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_get_lock_data_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.inode = type { %struct.address_space* }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @f2fs_get_lock_data_page(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.address_space*, %struct.address_space** %11, align 8
  store %struct.address_space* %12, %struct.address_space** %8, align 8
  br label %13

13:                                               ; preds = %34, %3
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.page* @f2fs_get_read_data_page(%struct.inode* %14, i32 %15, i32 0, i32 %16)
  store %struct.page* %17, %struct.page** %9, align 8
  %18 = load %struct.page*, %struct.page** %9, align 8
  %19 = call i64 @IS_ERR(%struct.page* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %22, %struct.page** %4, align 8
  br label %53

23:                                               ; preds = %13
  %24 = load %struct.page*, %struct.page** %9, align 8
  %25 = call i32 @lock_page(%struct.page* %24)
  %26 = load %struct.page*, %struct.page** %9, align 8
  %27 = getelementptr inbounds %struct.page, %struct.page* %26, i32 0, i32 0
  %28 = load %struct.address_space*, %struct.address_space** %27, align 8
  %29 = load %struct.address_space*, %struct.address_space** %8, align 8
  %30 = icmp ne %struct.address_space* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.page*, %struct.page** %9, align 8
  %36 = call i32 @f2fs_put_page(%struct.page* %35, i32 1)
  br label %13

37:                                               ; preds = %23
  %38 = load %struct.page*, %struct.page** %9, align 8
  %39 = call i32 @PageUptodate(%struct.page* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.page*, %struct.page** %9, align 8
  %47 = call i32 @f2fs_put_page(%struct.page* %46, i32 1)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.page* @ERR_PTR(i32 %49)
  store %struct.page* %50, %struct.page** %4, align 8
  br label %53

51:                                               ; preds = %37
  %52 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %52, %struct.page** %4, align 8
  br label %53

53:                                               ; preds = %51, %45, %21
  %54 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %54
}

declare dso_local %struct.page* @f2fs_get_read_data_page(%struct.inode*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
