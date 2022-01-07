; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_find_inline_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_find_inline_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_filename = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }
%struct.ext4_iloc = type { %struct.buffer_head* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@EXT4_INLINE_DOTDOT_SIZE = common dso_local global i32 0, align 4
@EXT4_MIN_INLINE_DATA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @ext4_find_inline_entry(%struct.inode* %0, %struct.ext4_filename* %1, %struct.ext4_dir_entry_2** %2, i32* %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_filename*, align 8
  %8 = alloca %struct.ext4_dir_entry_2**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_iloc, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ext4_filename* %1, %struct.ext4_filename** %7, align 8
  store %struct.ext4_dir_entry_2** %2, %struct.ext4_dir_entry_2*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call i64 @ext4_get_inode_loc(%struct.inode* %14, %struct.ext4_iloc* %11)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %91

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @down_read(i32* %21)
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call i32 @ext4_has_inline_data(%struct.inode* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i32*, i32** %9, align 8
  store i32 0, i32* %27, align 4
  br label %79

28:                                               ; preds = %18
  %29 = call %struct.TYPE_3__* @ext4_raw_inode(%struct.ext4_iloc* %11)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load i32, i32* @EXT4_INLINE_DOTDOT_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  store i8* %35, i8** %12, align 8
  %36 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %37 = load i32, i32* @EXT4_INLINE_DOTDOT_SIZE, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %11, i32 0, i32 0
  %40 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = load %struct.ext4_filename*, %struct.ext4_filename** %7, align 8
  %45 = load %struct.ext4_dir_entry_2**, %struct.ext4_dir_entry_2*** %8, align 8
  %46 = call i32 @ext4_search_dir(%struct.buffer_head* %40, i8* %41, i32 %42, %struct.inode* %43, %struct.ext4_filename* %44, i32 0, %struct.ext4_dir_entry_2** %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %28
  br label %84

50:                                               ; preds = %28
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %79

54:                                               ; preds = %50
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = call i32 @ext4_get_inline_size(%struct.inode* %55)
  %57 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %79

60:                                               ; preds = %54
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = call i8* @ext4_get_inline_xattr_pos(%struct.inode* %61, %struct.ext4_iloc* %11)
  store i8* %62, i8** %12, align 8
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = call i32 @ext4_get_inline_size(%struct.inode* %63)
  %65 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %13, align 4
  %67 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %11, i32 0, i32 0
  %68 = load %struct.buffer_head*, %struct.buffer_head** %67, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = load %struct.ext4_filename*, %struct.ext4_filename** %7, align 8
  %73 = load %struct.ext4_dir_entry_2**, %struct.ext4_dir_entry_2*** %8, align 8
  %74 = call i32 @ext4_search_dir(%struct.buffer_head* %68, i8* %69, i32 %70, %struct.inode* %71, %struct.ext4_filename* %72, i32 0, %struct.ext4_dir_entry_2** %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %60
  br label %84

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78, %59, %53, %26
  %80 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %11, i32 0, i32 0
  %81 = load %struct.buffer_head*, %struct.buffer_head** %80, align 8
  %82 = call i32 @brelse(%struct.buffer_head* %81)
  %83 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %11, i32 0, i32 0
  store %struct.buffer_head* null, %struct.buffer_head** %83, align 8
  br label %84

84:                                               ; preds = %79, %77, %49
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @up_read(i32* %87)
  %89 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %11, i32 0, i32 0
  %90 = load %struct.buffer_head*, %struct.buffer_head** %89, align 8
  store %struct.buffer_head* %90, %struct.buffer_head** %5, align 8
  br label %91

91:                                               ; preds = %84, %17
  %92 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %92
}

declare dso_local i64 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_4__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local %struct.TYPE_3__* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local i32 @ext4_search_dir(%struct.buffer_head*, i8*, i32, %struct.inode*, %struct.ext4_filename*, i32, %struct.ext4_dir_entry_2**) #1

declare dso_local i32 @ext4_get_inline_size(%struct.inode*) #1

declare dso_local i8* @ext4_get_inline_xattr_pos(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
