; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_try_add_inline_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_try_add_inline_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_filename = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@EXT4_INLINE_DOTDOT_SIZE = common dso_local global i32 0, align 4
@EXT4_MIN_INLINE_DATA_SIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_try_add_inline_entry(i32* %0, %struct.ext4_filename* %1, %struct.inode* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ext4_filename*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ext4_iloc, align 4
  store i32* %0, i32** %6, align 8
  store %struct.ext4_filename* %1, %struct.ext4_filename** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = call i32 @ext4_get_inode_loc(%struct.inode* %15, %struct.ext4_iloc* %14)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %112

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call i32 @ext4_write_lock_xattr(%struct.inode* %22, i32* %12)
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = call i32 @ext4_has_inline_data(%struct.inode* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %102

28:                                               ; preds = %21
  %29 = call %struct.TYPE_3__* @ext4_raw_inode(%struct.ext4_iloc* %14)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load i32, i32* @EXT4_INLINE_DOTDOT_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  store i8* %35, i8** %13, align 8
  %36 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %37 = load i32, i32* @EXT4_INLINE_DOTDOT_SIZE, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.ext4_filename*, %struct.ext4_filename** %7, align 8
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @ext4_add_dirent_to_inline(i32* %39, %struct.ext4_filename* %40, %struct.inode* %41, %struct.inode* %42, %struct.ext4_iloc* %14, i8* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %28
  br label %102

51:                                               ; preds = %28
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %51
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = call i32 @ext4_update_inline_dir(i32* %61, %struct.inode* %62, %struct.ext4_iloc* %14)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @ENOSPC, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %102

72:                                               ; preds = %66, %60
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %72, %51
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = call i8* @ext4_get_inline_xattr_pos(%struct.inode* %83, %struct.ext4_iloc* %14)
  store i8* %84, i8** %13, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load %struct.ext4_filename*, %struct.ext4_filename** %7, align 8
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @ext4_add_dirent_to_inline(i32* %85, %struct.ext4_filename* %86, %struct.inode* %87, %struct.inode* %88, %struct.ext4_iloc* %14, i8* %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @ENOSPC, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  br label %102

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97, %79
  %99 = load i32*, i32** %6, align 8
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = call i32 @ext4_convert_inline_data_nolock(i32* %99, %struct.inode* %100, %struct.ext4_iloc* %14)
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %98, %96, %71, %50, %27
  %103 = load %struct.inode*, %struct.inode** %8, align 8
  %104 = call i32 @ext4_write_unlock_xattr(%struct.inode* %103, i32* %12)
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.inode*, %struct.inode** %8, align 8
  %107 = call i32 @ext4_mark_inode_dirty(i32* %105, %struct.inode* %106)
  %108 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %14, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @brelse(i32 %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %102, %19
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_write_lock_xattr(%struct.inode*, i32*) #1

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local %struct.TYPE_3__* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local i32 @ext4_add_dirent_to_inline(i32*, %struct.ext4_filename*, %struct.inode*, %struct.inode*, %struct.ext4_iloc*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_update_inline_dir(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i8* @ext4_get_inline_xattr_pos(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_convert_inline_data_nolock(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_write_unlock_xattr(%struct.inode*, i32*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
