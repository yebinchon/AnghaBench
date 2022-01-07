; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_dirblock_csum_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_dirblock_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_dir_entry_tail = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_dirblock_csum_verify(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.ext4_dir_entry_tail*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ext4_has_metadata_csum(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %16 = call %struct.ext4_dir_entry_tail* @get_dirent_tail(%struct.inode* %14, %struct.buffer_head* %15)
  store %struct.ext4_dir_entry_tail* %16, %struct.ext4_dir_entry_tail** %6, align 8
  %17 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %6, align 8
  %18 = icmp ne %struct.ext4_dir_entry_tail* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i32 @warn_no_space_for_csum(%struct.inode* %20)
  store i32 0, i32* %3, align 4
  br label %42

22:                                               ; preds = %13
  %23 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %6, align 8
  %24 = getelementptr inbounds %struct.ext4_dir_entry_tail, %struct.ext4_dir_entry_tail* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %6, align 8
  %31 = bitcast %struct.ext4_dir_entry_tail* %30 to i8*
  %32 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 0, %35
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  %38 = call i64 @ext4_dirblock_csum(%struct.inode* %26, i32 %29, i8* %37)
  %39 = icmp ne i64 %25, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %42

41:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %19, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ext4_has_metadata_csum(i32) #1

declare dso_local %struct.ext4_dir_entry_tail* @get_dirent_tail(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @warn_no_space_for_csum(%struct.inode*) #1

declare dso_local i64 @ext4_dirblock_csum(%struct.inode*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
