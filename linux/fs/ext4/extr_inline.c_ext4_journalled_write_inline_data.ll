; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_journalled_write_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_journalled_write_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.ext4_iloc = type { %struct.buffer_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @ext4_journalled_write_inline_data(%struct.inode* %0, i32 %1, %struct.page* %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ext4_iloc, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.page* %2, %struct.page** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call i32 @ext4_get_inode_loc(%struct.inode* %12, %struct.ext4_iloc* %11)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ext4_std_error(i32 %19, i32 %20)
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %37

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call i32 @ext4_write_lock_xattr(%struct.inode* %23, i32* %9)
  %25 = load %struct.page*, %struct.page** %7, align 8
  %26 = call i8* @kmap_atomic(%struct.page* %25)
  store i8* %26, i8** %10, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ext4_write_inline_data(%struct.inode* %27, %struct.ext4_iloc* %11, i8* %28, i32 0, i32 %29)
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @kunmap_atomic(i8* %31)
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call i32 @ext4_write_unlock_xattr(%struct.inode* %33, i32* %9)
  %35 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %11, i32 0, i32 0
  %36 = load %struct.buffer_head*, %struct.buffer_head** %35, align 8
  store %struct.buffer_head* %36, %struct.buffer_head** %4, align 8
  br label %37

37:                                               ; preds = %22, %16
  %38 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %38
}

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

declare dso_local i32 @ext4_write_lock_xattr(%struct.inode*, i32*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @ext4_write_inline_data(%struct.inode*, %struct.ext4_iloc*, i8*, i32, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @ext4_write_unlock_xattr(%struct.inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
