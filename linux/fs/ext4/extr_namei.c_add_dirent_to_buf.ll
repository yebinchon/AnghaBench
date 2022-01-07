; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_add_dirent_to_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_add_dirent_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_filename = type { i32 }
%struct.inode = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ext4_filename*, %struct.inode*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*)* @add_dirent_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_dirent_to_buf(i32* %0, %struct.ext4_filename* %1, %struct.inode* %2, %struct.inode* %3, %struct.ext4_dir_entry_2* %4, %struct.buffer_head* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ext4_filename*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.ext4_dir_entry_2*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.ext4_filename* %1, %struct.ext4_filename** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store %struct.inode* %3, %struct.inode** %11, align 8
  store %struct.ext4_dir_entry_2* %4, %struct.ext4_dir_entry_2** %12, align 8
  store %struct.buffer_head* %5, %struct.buffer_head** %13, align 8
  %17 = load %struct.inode*, %struct.inode** %10, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.inode*, %struct.inode** %11, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i64 @ext4_has_metadata_csum(%struct.TYPE_3__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 4, i32* %15, align 4
  br label %28

28:                                               ; preds = %27, %6
  %29 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %12, align 8
  %30 = icmp ne %struct.ext4_dir_entry_2* %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %28
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = load %struct.inode*, %struct.inode** %11, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = sub i32 %38, %39
  %41 = load %struct.ext4_filename*, %struct.ext4_filename** %9, align 8
  %42 = call i32 @ext4_find_dest_de(%struct.inode* %32, %struct.inode* %33, %struct.buffer_head* %34, i32 %37, i32 %40, %struct.ext4_filename* %41, %struct.ext4_dir_entry_2** %12)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %7, align 4
  br label %97

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %28
  %49 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %50 = call i32 @BUFFER_TRACE(%struct.buffer_head* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %53 = call i32 @ext4_journal_get_write_access(i32* %51, %struct.buffer_head* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @ext4_std_error(%struct.TYPE_3__* %59, i32 %60)
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %7, align 4
  br label %97

63:                                               ; preds = %48
  %64 = load %struct.inode*, %struct.inode** %11, align 8
  %65 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %12, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.ext4_filename*, %struct.ext4_filename** %9, align 8
  %68 = call i32 @ext4_insert_dentry(%struct.inode* %64, %struct.ext4_dir_entry_2* %65, i32 %66, %struct.ext4_filename* %67)
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = call i32 @current_time(%struct.inode* %69)
  %71 = load %struct.inode*, %struct.inode** %10, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 2
  store i32 %70, i32* %74, align 4
  %75 = load %struct.inode*, %struct.inode** %10, align 8
  %76 = call i32 @ext4_update_dx_flag(%struct.inode* %75)
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = call i32 @inode_inc_iversion(%struct.inode* %77)
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.inode*, %struct.inode** %10, align 8
  %81 = call i32 @ext4_mark_inode_dirty(i32* %79, %struct.inode* %80)
  %82 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %83 = call i32 @BUFFER_TRACE(%struct.buffer_head* %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %87 = call i32 @ext4_handle_dirty_dirblock(i32* %84, %struct.inode* %85, %struct.buffer_head* %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %63
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @ext4_std_error(%struct.TYPE_3__* %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %63
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %56, %45
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i64 @ext4_has_metadata_csum(%struct.TYPE_3__*) #1

declare dso_local i32 @ext4_find_dest_de(%struct.inode*, %struct.inode*, %struct.buffer_head*, i32, i32, %struct.ext4_filename*, %struct.ext4_dir_entry_2**) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_std_error(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ext4_insert_dentry(%struct.inode*, %struct.ext4_dir_entry_2*, i32, %struct.ext4_filename*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ext4_update_dx_flag(%struct.inode*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_handle_dirty_dirblock(i32*, %struct.inode*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
