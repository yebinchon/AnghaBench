; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_update_inline_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_update_inline_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EXT4_MIN_INLINE_DATA_SIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_iloc*)* @ext4_update_inline_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_update_inline_dir(i32* %0, %struct.inode* %1, %struct.ext4_iloc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_iloc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ext4_iloc* %2, %struct.ext4_iloc** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %19 = call i32 @get_max_inline_xattr_value_size(%struct.inode* %17, %struct.ext4_iloc* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sub nsw i32 %20, %21
  %23 = call i32 @EXT4_DIR_REC_LEN(i32 1)
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOSPC, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %60

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @ext4_update_inline_data(i32* %29, %struct.inode* %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %60

39:                                               ; preds = %28
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %42 = call i32 @ext4_get_inline_xattr_pos(%struct.inode* %40, %struct.ext4_iloc* %41)
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i32 @ext4_update_final_de(i32 %42, i32 %43, i32 %49)
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %39, %37, %25
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @get_max_inline_xattr_value_size(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @EXT4_DIR_REC_LEN(i32) #1

declare dso_local i32 @ext4_update_inline_data(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_update_final_de(i32, i32, i32) #1

declare dso_local i32 @ext4_get_inline_xattr_pos(%struct.inode*, %struct.ext4_iloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
