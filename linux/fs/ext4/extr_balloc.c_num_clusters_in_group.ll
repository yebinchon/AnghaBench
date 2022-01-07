; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_num_clusters_in_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_num_clusters_in_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @num_clusters_in_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_clusters_in_group(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call i32 @ext4_get_groups_count(%struct.super_block* %7)
  %9 = sub nsw i32 %8, 1
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call %struct.TYPE_3__* @EXT4_SB(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ext4_blocks_count(i32 %15)
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ext4_group_first_block_no(%struct.super_block* %17, i32 %18)
  %20 = sub i32 %16, %19
  store i32 %20, i32* %5, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %11
  %25 = load %struct.super_block*, %struct.super_block** %3, align 8
  %26 = call %struct.TYPE_3__* @EXT4_SB(%struct.super_block* %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @EXT4_NUM_B2C(%struct.TYPE_3__* %26, i32 %27)
  ret i32 %28
}

declare dso_local i32 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local i32 @ext4_blocks_count(i32) #1

declare dso_local %struct.TYPE_3__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @EXT4_NUM_B2C(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
