; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_delete_inline_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_delete_inline_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_iloc = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EXT4_MIN_INLINE_DATA_SIZE = common dso_local global i32 0, align 4
@EXT4_INLINE_DOTDOT_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_delete_inline_entry(i32* %0, %struct.inode* %1, %struct.ext4_dir_entry_2* %2, %struct.buffer_head* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_dir_entry_2*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext4_iloc, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.ext4_dir_entry_2* %2, %struct.ext4_dir_entry_2** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call i32 @ext4_get_inode_loc(%struct.inode* %17, %struct.ext4_iloc* %15)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %6, align 4
  br label %118

23:                                               ; preds = %5
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = call i32 @ext4_write_lock_xattr(%struct.inode* %24, i32* %14)
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call i32 @ext4_has_inline_data(%struct.inode* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32*, i32** %11, align 8
  store i32 0, i32* %30, align 4
  br label %90

31:                                               ; preds = %23
  %32 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %33 = bitcast %struct.ext4_dir_entry_2* %32 to i8*
  %34 = call %struct.TYPE_2__* @ext4_raw_inode(%struct.ext4_iloc* %15)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = ptrtoint i8* %33 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %31
  %45 = call %struct.TYPE_2__* @ext4_raw_inode(%struct.ext4_iloc* %15)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load i64, i64* @EXT4_INLINE_DOTDOT_SIZE, align 8
  %50 = getelementptr i8, i8* %48, i64 %49
  store i8* %50, i8** %16, align 8
  %51 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @EXT4_INLINE_DOTDOT_SIZE, align 8
  %54 = sub nsw i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %13, align 4
  br label %63

56:                                               ; preds = %31
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i8* @ext4_get_inline_xattr_pos(%struct.inode* %57, %struct.ext4_iloc* %15)
  store i8* %58, i8** %16, align 8
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = call i32 @ext4_get_inline_size(%struct.inode* %59)
  %61 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %56, %44
  %64 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %65 = call i32 @BUFFER_TRACE(%struct.buffer_head* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %68 = call i32 @ext4_journal_get_write_access(i32* %66, %struct.buffer_head* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %90

72:                                               ; preds = %63
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @ext4_generic_delete_entry(i32* %73, %struct.inode* %74, %struct.ext4_dir_entry_2* %75, %struct.buffer_head* %76, i8* %77, i32 %78, i32 0)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %90

83:                                               ; preds = %72
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %15, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %16, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @ext4_show_inline_dir(%struct.inode* %84, i32 %86, i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %82, %71, %29
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = call i32 @ext4_write_unlock_xattr(%struct.inode* %91, i32* %14)
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i64 @likely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = call i32 @ext4_mark_inode_dirty(i32* %99, %struct.inode* %100)
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %98, %90
  %103 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %15, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @brelse(i32 %104)
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @ENOENT, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load %struct.inode*, %struct.inode** %8, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @ext4_std_error(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %102
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %116, %21
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_write_lock_xattr(%struct.inode*, i32*) #1

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local i8* @ext4_get_inline_xattr_pos(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_get_inline_size(%struct.inode*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_generic_delete_entry(i32*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*, i8*, i32, i32) #1

declare dso_local i32 @ext4_show_inline_dir(%struct.inode*, i32, i8*, i32) #1

declare dso_local i32 @ext4_write_unlock_xattr(%struct.inode*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
