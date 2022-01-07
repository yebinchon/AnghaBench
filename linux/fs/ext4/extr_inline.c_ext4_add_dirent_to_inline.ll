; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_add_dirent_to_inline.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_add_dirent_to_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_filename = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ext4_iloc = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ext4_filename*, %struct.inode*, %struct.inode*, %struct.ext4_iloc*, i8*, i32)* @ext4_add_dirent_to_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_add_dirent_to_inline(i32* %0, %struct.ext4_filename* %1, %struct.inode* %2, %struct.inode* %3, %struct.ext4_iloc* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ext4_filename*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.ext4_iloc*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ext4_dir_entry_2*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.ext4_filename* %1, %struct.ext4_filename** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store %struct.inode* %3, %struct.inode** %12, align 8
  store %struct.ext4_iloc* %4, %struct.ext4_iloc** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.inode*, %struct.inode** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %12, align 8
  %20 = load %struct.ext4_iloc*, %struct.ext4_iloc** %13, align 8
  %21 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %14, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load %struct.ext4_filename*, %struct.ext4_filename** %10, align 8
  %26 = call i32 @ext4_find_dest_de(%struct.inode* %18, %struct.inode* %19, i32 %22, i8* %23, i32 %24, %struct.ext4_filename* %25, %struct.ext4_dir_entry_2** %17)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %8, align 4
  br label %68

31:                                               ; preds = %7
  %32 = load %struct.ext4_iloc*, %struct.ext4_iloc** %13, align 8
  %33 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @BUFFER_TRACE(i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.ext4_iloc*, %struct.ext4_iloc** %13, align 8
  %38 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ext4_journal_get_write_access(i32* %36, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %8, align 4
  br label %68

45:                                               ; preds = %31
  %46 = load %struct.inode*, %struct.inode** %12, align 8
  %47 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %17, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.ext4_filename*, %struct.ext4_filename** %10, align 8
  %50 = call i32 @ext4_insert_dentry(%struct.inode* %46, %struct.ext4_dir_entry_2* %47, i32 %48, %struct.ext4_filename* %49)
  %51 = load %struct.inode*, %struct.inode** %11, align 8
  %52 = load %struct.ext4_iloc*, %struct.ext4_iloc** %13, align 8
  %53 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %14, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @ext4_show_inline_dir(%struct.inode* %51, i32 %54, i8* %55, i32 %56)
  %58 = load %struct.inode*, %struct.inode** %11, align 8
  %59 = call i32 @current_time(%struct.inode* %58)
  %60 = load %struct.inode*, %struct.inode** %11, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.inode*, %struct.inode** %11, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  %64 = load %struct.inode*, %struct.inode** %11, align 8
  %65 = call i32 @ext4_update_dx_flag(%struct.inode* %64)
  %66 = load %struct.inode*, %struct.inode** %11, align 8
  %67 = call i32 @inode_inc_iversion(%struct.inode* %66)
  store i32 1, i32* %8, align 4
  br label %68

68:                                               ; preds = %45, %43, %29
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @ext4_find_dest_de(%struct.inode*, %struct.inode*, i32, i8*, i32, %struct.ext4_filename*, %struct.ext4_dir_entry_2**) #1

declare dso_local i32 @BUFFER_TRACE(i32, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, i32) #1

declare dso_local i32 @ext4_insert_dentry(%struct.inode*, %struct.ext4_dir_entry_2*, i32, %struct.ext4_filename*) #1

declare dso_local i32 @ext4_show_inline_dir(%struct.inode*, i32, i8*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ext4_update_dx_flag(%struct.inode*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
