; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }
%struct.ext4_filename = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, %struct.qstr*, %struct.ext4_dir_entry_2**, i32*)* @ext4_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ext4_find_entry(%struct.inode* %0, %struct.qstr* %1, %struct.ext4_dir_entry_2** %2, i32* %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.ext4_dir_entry_2**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_filename, align 4
  %12 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store %struct.ext4_dir_entry_2** %2, %struct.ext4_dir_entry_2*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = load %struct.qstr*, %struct.qstr** %7, align 8
  %15 = call i32 @ext4_fname_setup_filename(%struct.inode* %13, %struct.qstr* %14, i32 1, %struct.ext4_filename* %11)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %34

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.buffer_head* @ERR_PTR(i32 %25)
  store %struct.buffer_head* %26, %struct.buffer_head** %5, align 8
  br label %34

27:                                               ; preds = %21
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load %struct.ext4_dir_entry_2**, %struct.ext4_dir_entry_2*** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call %struct.buffer_head* @__ext4_find_entry(%struct.inode* %28, %struct.ext4_filename* %11, %struct.ext4_dir_entry_2** %29, i32* %30)
  store %struct.buffer_head* %31, %struct.buffer_head** %12, align 8
  %32 = call i32 @ext4_fname_free_filename(%struct.ext4_filename* %11)
  %33 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %33, %struct.buffer_head** %5, align 8
  br label %34

34:                                               ; preds = %27, %24, %20
  %35 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %35
}

declare dso_local i32 @ext4_fname_setup_filename(%struct.inode*, %struct.qstr*, i32, %struct.ext4_filename*) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

declare dso_local %struct.buffer_head* @__ext4_find_entry(%struct.inode*, %struct.ext4_filename*, %struct.ext4_dir_entry_2**, i32*) #1

declare dso_local i32 @ext4_fname_free_filename(%struct.ext4_filename*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
