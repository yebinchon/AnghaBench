; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_fat.h_max_fat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_fat.h_max_fat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.msdos_sb_info = type { i32 }

@MAX_FAT32 = common dso_local global i32 0, align 4
@MAX_FAT16 = common dso_local global i32 0, align 4
@MAX_FAT12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @max_fat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_fat(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.msdos_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %4)
  store %struct.msdos_sb_info* %5, %struct.msdos_sb_info** %3, align 8
  %6 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %7 = call i64 @is_fat32(%struct.msdos_sb_info* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @MAX_FAT32, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %13 = call i64 @is_fat16(%struct.msdos_sb_info* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @MAX_FAT16, align 4
  br label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @MAX_FAT12, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  br label %21

21:                                               ; preds = %19, %9
  %22 = phi i32 [ %10, %9 ], [ %20, %19 ]
  ret i32 %22
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i64 @is_fat32(%struct.msdos_sb_info*) #1

declare dso_local i64 @is_fat16(%struct.msdos_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
