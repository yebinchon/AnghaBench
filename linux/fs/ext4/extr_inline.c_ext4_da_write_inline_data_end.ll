; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_da_write_inline_data_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_da_write_inline_data_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_da_write_inline_data_end(%struct.inode* %0, i64 %1, i32 %2, i32 %3, %struct.page* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.page* %4, %struct.page** %11, align 8
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.page*, %struct.page** %11, align 8
  %18 = call i32 @ext4_write_inline_data_end(%struct.inode* %13, i64 %14, i32 %15, i32 %16, %struct.page* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load %struct.page*, %struct.page** %11, align 8
  %23 = call i32 @unlock_page(%struct.page* %22)
  %24 = load %struct.page*, %struct.page** %11, align 8
  %25 = call i32 @put_page(%struct.page* %24)
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %52

27:                                               ; preds = %5
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = call i32 @i_size_write(%struct.inode* %38, i64 %42)
  br label %44

44:                                               ; preds = %37, %27
  %45 = load %struct.page*, %struct.page** %11, align 8
  %46 = call i32 @unlock_page(%struct.page* %45)
  %47 = load %struct.page*, %struct.page** %11, align 8
  %48 = call i32 @put_page(%struct.page* %47)
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call i32 @mark_inode_dirty(%struct.inode* %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %44, %21
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @ext4_write_inline_data_end(%struct.inode*, i64, i32, i32, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
