; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_init_new_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_init_new_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext4_dir_entry_2 = type { i32 }

@EXT4_STATE_MAY_INLINE_DATA = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.inode*)* @ext4_init_new_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_init_new_dir(i32* %0, %struct.inode* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.ext4_dir_entry_2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i64 @ext4_has_metadata_csum(%struct.TYPE_2__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 4, i32* %12, align 4
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = load i32, i32* @EXT4_STATE_MAY_INLINE_DATA, align 4
  %28 = call i64 @ext4_test_inode_state(%struct.inode* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = call i32 @ext4_try_create_inline_dir(i32* %31, %struct.inode* %32, %struct.inode* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %94

43:                                               ; preds = %37, %30
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %94

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = call %struct.buffer_head* @ext4_append(i32* %51, %struct.inode* %52, i32* %10)
  store %struct.buffer_head* %53, %struct.buffer_head** %8, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %55 = call i64 @IS_ERR(%struct.buffer_head* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %59 = call i32 @PTR_ERR(%struct.buffer_head* %58)
  store i32 %59, i32* %4, align 4
  br label %98

60:                                               ; preds = %48
  %61 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %64, %struct.ext4_dir_entry_2** %9, align 8
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ext4_init_dot_dotdot(%struct.inode* %65, %struct.ext4_dir_entry_2* %66, i32 %67, i32 %68, i32 %71, i32 0)
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = call i32 @set_nlink(%struct.inode* %73, i32 2)
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %60
  %78 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @ext4_initialize_dirent_tail(%struct.buffer_head* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %60
  %82 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %83 = call i32 @BUFFER_TRACE(%struct.buffer_head* %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %87 = call i32 @ext4_handle_dirty_dirblock(i32* %84, %struct.inode* %85, %struct.buffer_head* %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %94

91:                                               ; preds = %81
  %92 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %93 = call i32 @set_buffer_verified(%struct.buffer_head* %92)
  br label %94

94:                                               ; preds = %91, %90, %46, %42
  %95 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %96 = call i32 @brelse(%struct.buffer_head* %95)
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %57
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @ext4_has_metadata_csum(%struct.TYPE_2__*) #1

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_try_create_inline_dir(i32*, %struct.inode*, %struct.inode*) #1

declare dso_local %struct.buffer_head* @ext4_append(i32*, %struct.inode*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @ext4_init_dot_dotdot(%struct.inode*, %struct.ext4_dir_entry_2*, i32, i32, i32, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @ext4_initialize_dirent_tail(%struct.buffer_head*, i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_handle_dirty_dirblock(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @set_buffer_verified(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
