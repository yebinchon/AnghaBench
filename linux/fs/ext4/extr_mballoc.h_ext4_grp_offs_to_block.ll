; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.h_ext4_grp_offs_to_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.h_ext4_grp_offs_to_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_free_extent = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.super_block*, %struct.ext4_free_extent*)* @ext4_grp_offs_to_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_grp_offs_to_block(%struct.super_block* %0, %struct.ext4_free_extent* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext4_free_extent*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ext4_free_extent* %1, %struct.ext4_free_extent** %4, align 8
  %5 = load %struct.super_block*, %struct.super_block** %3, align 8
  %6 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %4, align 8
  %7 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @ext4_group_first_block_no(%struct.super_block* %5, i32 %8)
  %10 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %4, align 8
  %11 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %12, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %9, %18
  ret i64 %19
}

declare dso_local i64 @ext4_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
