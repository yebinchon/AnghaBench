; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_get_first_dir_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_get_first_dir_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }

@DIRENT_HTREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (i32*, %struct.inode*, i32*, %struct.ext4_dir_entry_2**, i32*)* @ext4_get_first_dir_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ext4_get_first_dir_block(i32* %0, %struct.inode* %1, i32* %2, %struct.ext4_dir_entry_2** %3, i32* %4) #0 {
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ext4_dir_entry_2**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.ext4_dir_entry_2** %3, %struct.ext4_dir_entry_2*** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.inode*, %struct.inode** %8, align 8
  %14 = call i32 @ext4_has_inline_data(%struct.inode* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %5
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = load i32, i32* @DIRENT_HTREE, align 4
  %19 = call %struct.buffer_head* @ext4_read_dirblock(%struct.inode* %17, i32 0, i32 %18)
  store %struct.buffer_head* %19, %struct.buffer_head** %12, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %21 = call i64 @IS_ERR(%struct.buffer_head* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %25 = call i32 @PTR_ERR(%struct.buffer_head* %24)
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  br label %46

27:                                               ; preds = %16
  %28 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ext4_dir_entry_2*
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %31, i32 %36)
  %38 = load %struct.ext4_dir_entry_2**, %struct.ext4_dir_entry_2*** %10, align 8
  store %struct.ext4_dir_entry_2* %37, %struct.ext4_dir_entry_2** %38, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %39, %struct.buffer_head** %6, align 8
  br label %46

40:                                               ; preds = %5
  %41 = load i32*, i32** %11, align 8
  store i32 1, i32* %41, align 4
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = load %struct.ext4_dir_entry_2**, %struct.ext4_dir_entry_2*** %10, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call %struct.buffer_head* @ext4_get_first_inline_block(%struct.inode* %42, %struct.ext4_dir_entry_2** %43, i32* %44)
  store %struct.buffer_head* %45, %struct.buffer_head** %6, align 8
  br label %46

46:                                               ; preds = %40, %27, %23
  %47 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  ret %struct.buffer_head* %47
}

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local %struct.buffer_head* @ext4_read_dirblock(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2*, i32) #1

declare dso_local %struct.buffer_head* @ext4_get_first_inline_block(%struct.inode*, %struct.ext4_dir_entry_2**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
