; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_procfs.c_show_per_level.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_procfs.c_show_per_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.reiserfs_sb_info = type { i32 }

@.str = private unnamed_addr constant [203 x i8] c"level\09     balances [sbk:  reads   fs_changed   restarted]   free space        items   can_remove         lnum         rnum       lbytes       rbytes     get_neig get_neig_res  need_l_neig  need_r_neig\0A\00", align 1
@MAX_HEIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [95 x i8] c"%i\09 %12lu %12lu %12lu %12lu %12lu %12lu %12lu %12li %12li %12li %12li %12lu %12lu %12lu %12lu\0A\00", align 1
@balance_at = common dso_local global i32 0, align 4
@sbk_read_at = common dso_local global i32 0, align 4
@sbk_fs_changed = common dso_local global i32 0, align 4
@sbk_restarted = common dso_local global i32 0, align 4
@free_at = common dso_local global i32 0, align 4
@items_at = common dso_local global i32 0, align 4
@can_node_be_removed = common dso_local global i32 0, align 4
@lnum = common dso_local global i32 0, align 4
@rnum = common dso_local global i32 0, align 4
@lbytes = common dso_local global i32 0, align 4
@rbytes = common dso_local global i32 0, align 4
@get_neighbors = common dso_local global i32 0, align 4
@get_neighbors_restart = common dso_local global i32 0, align 4
@need_l_neighbor = common dso_local global i32 0, align 4
@need_r_neighbor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_per_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_per_level(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.reiserfs_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block* %11)
  store %struct.reiserfs_sb_info* %12, %struct.reiserfs_sb_info** %6, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %53, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MAX_HEIGHT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @balance_at, align 4
  %23 = call i32 @SFPL(i32 %22)
  %24 = load i32, i32* @sbk_read_at, align 4
  %25 = call i32 @SFPL(i32 %24)
  %26 = load i32, i32* @sbk_fs_changed, align 4
  %27 = call i32 @SFPL(i32 %26)
  %28 = load i32, i32* @sbk_restarted, align 4
  %29 = call i32 @SFPL(i32 %28)
  %30 = load i32, i32* @free_at, align 4
  %31 = call i32 @SFPL(i32 %30)
  %32 = load i32, i32* @items_at, align 4
  %33 = call i32 @SFPL(i32 %32)
  %34 = load i32, i32* @can_node_be_removed, align 4
  %35 = call i32 @SFPL(i32 %34)
  %36 = load i32, i32* @lnum, align 4
  %37 = call i32 @SFPL(i32 %36)
  %38 = load i32, i32* @rnum, align 4
  %39 = call i32 @SFPL(i32 %38)
  %40 = load i32, i32* @lbytes, align 4
  %41 = call i32 @SFPL(i32 %40)
  %42 = load i32, i32* @rbytes, align 4
  %43 = call i32 @SFPL(i32 %42)
  %44 = load i32, i32* @get_neighbors, align 4
  %45 = call i32 @SFPL(i32 %44)
  %46 = load i32, i32* @get_neighbors_restart, align 4
  %47 = call i32 @SFPL(i32 %46)
  %48 = load i32, i32* @need_l_neighbor, align 4
  %49 = call i32 @SFPL(i32 %48)
  %50 = load i32, i32* @need_r_neighbor, align 4
  %51 = call i32 @SFPL(i32 %50)
  %52 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %23, i32 %25, i32 %27, i32 %29, i32 %31, i32 %33, i32 %35, i32 %37, i32 %39, i32 %41, i32 %43, i32 %45, i32 %47, i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %19
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %15

56:                                               ; preds = %15
  ret i32 0
}

declare dso_local %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @SFPL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
