; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_lookup_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_lookup_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }
%struct.ext4_filename = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, %struct.dentry*, %struct.ext4_dir_entry_2**)* @ext4_lookup_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ext4_lookup_entry(%struct.inode* %0, %struct.dentry* %1, %struct.ext4_dir_entry_2** %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.ext4_dir_entry_2**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_filename, align 4
  %10 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.ext4_dir_entry_2** %2, %struct.ext4_dir_entry_2*** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = call i32 @ext4_fname_prepare_lookup(%struct.inode* %11, %struct.dentry* %12, %struct.ext4_filename* %9)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %31

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.buffer_head* @ERR_PTR(i32 %23)
  store %struct.buffer_head* %24, %struct.buffer_head** %4, align 8
  br label %31

25:                                               ; preds = %19
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = load %struct.ext4_dir_entry_2**, %struct.ext4_dir_entry_2*** %7, align 8
  %28 = call %struct.buffer_head* @__ext4_find_entry(%struct.inode* %26, %struct.ext4_filename* %9, %struct.ext4_dir_entry_2** %27, i32* null)
  store %struct.buffer_head* %28, %struct.buffer_head** %10, align 8
  %29 = call i32 @ext4_fname_free_filename(%struct.ext4_filename* %9)
  %30 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %30, %struct.buffer_head** %4, align 8
  br label %31

31:                                               ; preds = %25, %22, %18
  %32 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %32
}

declare dso_local i32 @ext4_fname_prepare_lookup(%struct.inode*, %struct.dentry*, %struct.ext4_filename*) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

declare dso_local %struct.buffer_head* @__ext4_find_entry(%struct.inode*, %struct.ext4_filename*, %struct.ext4_dir_entry_2**, i32*) #1

declare dso_local i32 @ext4_fname_free_filename(%struct.ext4_filename*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
