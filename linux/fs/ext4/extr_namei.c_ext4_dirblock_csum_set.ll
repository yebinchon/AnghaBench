; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_dirblock_csum_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_dirblock_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_dir_entry_tail = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.buffer_head*)* @ext4_dirblock_csum_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_dirblock_csum_set(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.ext4_dir_entry_tail*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ext4_has_metadata_csum(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %15 = call %struct.ext4_dir_entry_tail* @get_dirent_tail(%struct.inode* %13, %struct.buffer_head* %14)
  store %struct.ext4_dir_entry_tail* %15, %struct.ext4_dir_entry_tail** %5, align 8
  %16 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %5, align 8
  %17 = icmp ne %struct.ext4_dir_entry_tail* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call i32 @warn_no_space_for_csum(%struct.inode* %19)
  br label %37

21:                                               ; preds = %12
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %5, align 8
  %27 = bitcast %struct.ext4_dir_entry_tail* %26 to i8*
  %28 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds i8, i8* %27, i64 %32
  %34 = call i32 @ext4_dirblock_csum(%struct.inode* %22, i32 %25, i8* %33)
  %35 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %5, align 8
  %36 = getelementptr inbounds %struct.ext4_dir_entry_tail, %struct.ext4_dir_entry_tail* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %21, %18, %11
  ret void
}

declare dso_local i32 @ext4_has_metadata_csum(i32) #1

declare dso_local %struct.ext4_dir_entry_tail* @get_dirent_tail(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @warn_no_space_for_csum(%struct.inode*) #1

declare dso_local i32 @ext4_dirblock_csum(%struct.inode*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
