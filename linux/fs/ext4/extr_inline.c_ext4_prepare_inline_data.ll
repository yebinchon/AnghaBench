; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_prepare_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_prepare_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_inode_info = type { i64 }

@EXT4_STATE_MAY_INLINE_DATA = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32)* @ext4_prepare_inline_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_prepare_inline_data(i32* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_inode_info*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %12)
  store %struct.ext4_inode_info* %13, %struct.ext4_inode_info** %11, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = load i32, i32* @EXT4_STATE_MAY_INLINE_DATA, align 4
  %16 = call i32 @ext4_test_inode_state(%struct.inode* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOSPC, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %51

21:                                               ; preds = %3
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call i32 @ext4_get_max_inline_size(%struct.inode* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOSPC, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %51

30:                                               ; preds = %21
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call i32 @ext4_write_lock_xattr(%struct.inode* %31, i32* %10)
  %33 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %11, align 8
  %34 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ext4_update_inline_data(i32* %38, %struct.inode* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %47

42:                                               ; preds = %30
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ext4_create_inline_data(i32* %43, %struct.inode* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i32 @ext4_write_unlock_xattr(%struct.inode* %48, i32* %10)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %27, %18
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_get_max_inline_size(%struct.inode*) #1

declare dso_local i32 @ext4_write_lock_xattr(%struct.inode*, i32*) #1

declare dso_local i32 @ext4_update_inline_data(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_create_inline_data(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_write_unlock_xattr(%struct.inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
