; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_write_inline_data_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_write_inline_data_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.ext4_iloc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_write_inline_data_end(%struct.inode* %0, i32 %1, i32 %2, i32 %3, %struct.page* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ext4_iloc, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.page* %4, %struct.page** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ult i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load %struct.page*, %struct.page** %10, align 8
  %23 = call i32 @PageUptodate(%struct.page* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %67

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %5
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i32 @ext4_get_inode_loc(%struct.inode* %28, %struct.ext4_iloc* %14)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @ext4_std_error(i32 %35, i32 %36)
  store i32 0, i32* %9, align 4
  br label %67

38:                                               ; preds = %27
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i32 @ext4_write_lock_xattr(%struct.inode* %39, i32* %12)
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call i32 @ext4_has_inline_data(%struct.inode* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.page*, %struct.page** %10, align 8
  %48 = call i8* @kmap_atomic(%struct.page* %47)
  store i8* %48, i8** %13, align 8
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ext4_write_inline_data(%struct.inode* %49, %struct.ext4_iloc* %14, i8* %50, i32 %51, i32 %52)
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @kunmap_atomic(i8* %54)
  %56 = load %struct.page*, %struct.page** %10, align 8
  %57 = call i32 @SetPageUptodate(%struct.page* %56)
  %58 = load %struct.page*, %struct.page** %10, align 8
  %59 = call i32 @ClearPageDirty(%struct.page* %58)
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = call i32 @ext4_write_unlock_xattr(%struct.inode* %60, i32* %12)
  %62 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %14, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @brelse(i32 %63)
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = call i32 @mark_inode_dirty(%struct.inode* %65)
  br label %67

67:                                               ; preds = %38, %32, %25
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

declare dso_local i32 @ext4_write_lock_xattr(%struct.inode*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @ext4_write_inline_data(%struct.inode*, %struct.ext4_iloc*, i8*, i32, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageDirty(%struct.page*) #1

declare dso_local i32 @ext4_write_unlock_xattr(%struct.inode*, i32*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
