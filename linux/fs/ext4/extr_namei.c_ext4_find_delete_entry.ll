; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_find_delete_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_find_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.qstr*)* @ext4_find_delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_find_delete_entry(i32* %0, %struct.inode* %1, %struct.qstr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ext4_dir_entry_2*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = load %struct.qstr*, %struct.qstr** %7, align 8
  %15 = call %struct.buffer_head* @ext4_find_entry(%struct.inode* %13, %struct.qstr* %14, %struct.ext4_dir_entry_2** %10, i32* null)
  store %struct.buffer_head* %15, %struct.buffer_head** %9, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %17 = call i64 @IS_ERR(%struct.buffer_head* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %21 = call i32 @PTR_ERR(%struct.buffer_head* %20)
  store i32 %21, i32* %4, align 4
  br label %35

22:                                               ; preds = %3
  %23 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %24 = icmp ne %struct.buffer_head* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %30 = call i32 @ext4_delete_entry(i32* %26, %struct.inode* %27, %struct.ext4_dir_entry_2* %28, %struct.buffer_head* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %32 = call i32 @brelse(%struct.buffer_head* %31)
  br label %33

33:                                               ; preds = %25, %22
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %19
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.buffer_head* @ext4_find_entry(%struct.inode*, %struct.qstr*, %struct.ext4_dir_entry_2**, i32*) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @ext4_delete_entry(i32*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
