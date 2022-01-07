; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_get_dirent_tail.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_get_dirent_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_dir_entry_tail = type { i64, i64, i64, i64 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@EXT4_FT_DIR_CSUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext4_dir_entry_tail* (%struct.inode*, %struct.buffer_head*)* @get_dirent_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext4_dir_entry_tail* @get_dirent_tail(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.ext4_dir_entry_tail*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.ext4_dir_entry_tail*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %8 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @EXT4_BLOCK_SIZE(i32 %12)
  %14 = call %struct.ext4_dir_entry_tail* @EXT4_DIRENT_TAIL(i32 %9, i32 %13)
  store %struct.ext4_dir_entry_tail* %14, %struct.ext4_dir_entry_tail** %6, align 8
  %15 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %6, align 8
  %16 = getelementptr inbounds %struct.ext4_dir_entry_tail, %struct.ext4_dir_entry_tail* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %2
  %20 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %6, align 8
  %21 = getelementptr inbounds %struct.ext4_dir_entry_tail, %struct.ext4_dir_entry_tail* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @le16_to_cpu(i64 %22)
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 32
  br i1 %25, label %37, label %26

26:                                               ; preds = %19
  %27 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %6, align 8
  %28 = getelementptr inbounds %struct.ext4_dir_entry_tail, %struct.ext4_dir_entry_tail* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %6, align 8
  %33 = getelementptr inbounds %struct.ext4_dir_entry_tail, %struct.ext4_dir_entry_tail* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EXT4_FT_DIR_CSUM, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %26, %19, %2
  store %struct.ext4_dir_entry_tail* null, %struct.ext4_dir_entry_tail** %3, align 8
  br label %40

38:                                               ; preds = %31
  %39 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %6, align 8
  store %struct.ext4_dir_entry_tail* %39, %struct.ext4_dir_entry_tail** %3, align 8
  br label %40

40:                                               ; preds = %38, %37
  %41 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %3, align 8
  ret %struct.ext4_dir_entry_tail* %41
}

declare dso_local %struct.ext4_dir_entry_tail* @EXT4_DIRENT_TAIL(i32, i32) #1

declare dso_local i32 @EXT4_BLOCK_SIZE(i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
