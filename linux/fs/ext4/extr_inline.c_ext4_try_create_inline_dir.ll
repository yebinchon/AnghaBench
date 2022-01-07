; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_try_create_inline_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_try_create_inline_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ext4_iloc = type { i32 }
%struct.ext4_dir_entry_2 = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@EXT4_MIN_INLINE_DATA_SIZE = common dso_local global i32 0, align 4
@EXT4_INLINE_DOTDOT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_try_create_inline_dir(i32* %0, %struct.inode* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_iloc, align 4
  %11 = alloca %struct.ext4_dir_entry_2*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %12 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = call i32 @ext4_get_inode_loc(%struct.inode* %13, %struct.ext4_iloc* %10)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %66

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ext4_prepare_inline_data(i32* %20, %struct.inode* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %61

27:                                               ; preds = %19
  %28 = call %struct.TYPE_3__* @ext4_raw_inode(%struct.ext4_iloc* %10)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %31, %struct.ext4_dir_entry_2** %11, align 8
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @cpu_to_le32(i32 %34)
  %36 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %37 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %39 = bitcast %struct.ext4_dir_entry_2* %38 to i8*
  %40 = load i32, i32* @EXT4_INLINE_DOTDOT_SIZE, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %39, i64 %41
  %43 = bitcast i8* %42 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %43, %struct.ext4_dir_entry_2** %11, align 8
  %44 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %45 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @EXT4_INLINE_DOTDOT_SIZE, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ext4_rec_len_to_disk(i32 %48, i32 %49)
  %51 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %52 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = call i32 @set_nlink(%struct.inode* %53, i32 2)
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  store i32 %55, i32* %60, align 4
  br label %61

61:                                               ; preds = %27, %26
  %62 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %10, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @brelse(i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %17
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_prepare_inline_data(i32*, %struct.inode*, i32) #1

declare dso_local %struct.TYPE_3__* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_rec_len_to_disk(i32, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_4__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
