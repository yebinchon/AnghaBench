; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_print_free_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_print_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i32, i32 }
%struct.ext4_inode_info = type { i64 }

@KERN_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Total free blocks count %lld\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Free/Dirty block details\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"free_blocks=%lld\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"dirty_blocks=%lld\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Block reservation details\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"i_reserved_data_blocks=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ext4_print_free_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_print_free_blocks(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ext4_sb_info*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ext4_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load %struct.super_block*, %struct.super_block** %7, align 8
  %9 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %8)
  store %struct.ext4_sb_info* %9, %struct.ext4_sb_info** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %4, align 8
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %13)
  store %struct.ext4_inode_info* %14, %struct.ext4_inode_info** %5, align 8
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = load i32, i32* @KERN_CRIT, align 4
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  %20 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %19)
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = call i32 @ext4_count_free_clusters(%struct.super_block* %21)
  %23 = call i64 @EXT4_C2B(%struct.ext4_sb_info* %20, i32 %22)
  %24 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %15, i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = load i32, i32* @KERN_CRIT, align 4
  %27 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %25, i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = load i32, i32* @KERN_CRIT, align 4
  %30 = load %struct.super_block*, %struct.super_block** %4, align 8
  %31 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %30)
  %32 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %33 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %32, i32 0, i32 1
  %34 = call i32 @percpu_counter_sum(i32* %33)
  %35 = call i64 @EXT4_C2B(%struct.ext4_sb_info* %31, i32 %34)
  %36 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %28, i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  %37 = load %struct.super_block*, %struct.super_block** %4, align 8
  %38 = load i32, i32* @KERN_CRIT, align 4
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %39)
  %41 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %3, align 8
  %42 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %41, i32 0, i32 0
  %43 = call i32 @percpu_counter_sum(i32* %42)
  %44 = call i64 @EXT4_C2B(%struct.ext4_sb_info* %40, i32 %43)
  %45 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %37, i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  %46 = load %struct.super_block*, %struct.super_block** %4, align 8
  %47 = load i32, i32* @KERN_CRIT, align 4
  %48 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %46, i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  %50 = load i32, i32* @KERN_CRIT, align 4
  %51 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %5, align 8
  %52 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %49, i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %53)
  ret void
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i64 @EXT4_C2B(%struct.ext4_sb_info*, i32) #1

declare dso_local i32 @ext4_count_free_clusters(%struct.super_block*) #1

declare dso_local i32 @percpu_counter_sum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
