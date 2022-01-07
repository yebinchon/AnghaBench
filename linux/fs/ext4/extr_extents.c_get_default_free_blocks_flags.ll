; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_get_default_free_blocks_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_get_default_free_blocks_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@EXT4_INODE_EA_INODE = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_FORGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @get_default_free_blocks_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_default_free_blocks_flags(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %4 = load %struct.inode*, %struct.inode** %3, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @S_ISDIR(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @S_ISLNK(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load i32, i32* @EXT4_INODE_EA_INODE, align 4
  %18 = call i64 @ext4_test_inode_flag(%struct.inode* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %9, %1
  %21 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %22 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %15
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = call i64 @ext4_should_journal_data(%struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %28, %20
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
