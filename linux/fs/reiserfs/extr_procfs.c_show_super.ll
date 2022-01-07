; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_procfs.c_show_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_procfs.c_show_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.reiserfs_sb_info = type { i32 }

@.str = private unnamed_addr constant [621 x i8] c"state: \09%s\0Amount options: \09%s%s%s%s%s%s%s%s%s%s%s\0Agen. counter: \09%i\0As_disk_reads: \09%i\0As_disk_writes: \09%i\0As_fix_nodes: \09%i\0As_do_balance: \09%i\0As_unneeded_left_neighbor: \09%i\0As_good_search_by_key_reada: \09%i\0As_bmaps: \09%i\0As_bmaps_without_search: \09%i\0As_direct2indirect: \09%i\0As_indirect2direct: \09%i\0A\0Amax_hash_collisions: \09%i\0Abreads: \09%lu\0Abread_misses: \09%lu\0Asearch_by_key: \09%lu\0Asearch_by_key_fs_changed: \09%lu\0Asearch_by_key_restarted: \09%lu\0Ainsert_item_restarted: \09%lu\0Apaste_into_item_restarted: \09%lu\0Acut_from_item_restarted: \09%lu\0Adelete_solid_item_restarted: \09%lu\0Adelete_item_restarted: \09%lu\0Aleaked_oid: \09%lu\0Aleaves_removable: \09%lu\0A\00", align 1
@s_mount_state = common dso_local global i32 0, align 4
@REISERFS_VALID_FS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"REISERFS_VALID_FS\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"REISERFS_ERROR_FS\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"FORCE_R5 \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"FORCE_RUPASOV \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"FORCE_TEA \00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"DETECT_HASH \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"NO_BORDER \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"BORDER \00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"NO_UNHASHED_RELOCATION \00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"UNHASHED_RELOCATION \00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"TEST4 \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"TAILS \00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"SMALL_TAILS \00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"NO_TAILS \00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"REPLAY_ONLY \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"CONV \00", align 1
@s_disk_reads = common dso_local global i32 0, align 4
@s_disk_writes = common dso_local global i32 0, align 4
@s_fix_nodes = common dso_local global i32 0, align 4
@s_do_balance = common dso_local global i32 0, align 4
@s_unneeded_left_neighbor = common dso_local global i32 0, align 4
@s_good_search_by_key_reada = common dso_local global i32 0, align 4
@s_bmaps = common dso_local global i32 0, align 4
@s_bmaps_without_search = common dso_local global i32 0, align 4
@s_direct2indirect = common dso_local global i32 0, align 4
@s_indirect2direct = common dso_local global i32 0, align 4
@max_hash_collisions = common dso_local global i32 0, align 4
@breads = common dso_local global i32 0, align 4
@bread_miss = common dso_local global i32 0, align 4
@search_by_key = common dso_local global i32 0, align 4
@search_by_key_fs_changed = common dso_local global i32 0, align 4
@search_by_key_restarted = common dso_local global i32 0, align 4
@insert_item_restarted = common dso_local global i32 0, align 4
@paste_into_item_restarted = common dso_local global i32 0, align 4
@cut_from_item_restarted = common dso_local global i32 0, align 4
@delete_solid_item_restarted = common dso_local global i32 0, align 4
@delete_item_restarted = common dso_local global i32 0, align 4
@leaked_oid = common dso_local global i32 0, align 4
@leaves_removable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_super(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.reiserfs_sb_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block* %10)
  store %struct.reiserfs_sb_info* %11, %struct.reiserfs_sb_info** %6, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = load i32, i32* @s_mount_state, align 4
  %14 = call i64 @SF(i32 %13)
  %15 = load i64, i64* @REISERFS_VALID_FS, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = call i64 @reiserfs_r5_hash(%struct.super_block* %19)
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = call i64 @reiserfs_rupasov_hash(%struct.super_block* %24)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = call i64 @reiserfs_tea_hash(%struct.super_block* %29)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = call i64 @reiserfs_hash_detect(%struct.super_block* %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %39 = load %struct.super_block*, %struct.super_block** %5, align 8
  %40 = call i64 @reiserfs_no_border(%struct.super_block* %39)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = call i64 @reiserfs_no_unhashed_relocation(%struct.super_block* %44)
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = call i64 @reiserfs_hashed_relocation(%struct.super_block* %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  %55 = call i64 @reiserfs_test4(%struct.super_block* %54)
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %59 = load %struct.super_block*, %struct.super_block** %5, align 8
  %60 = call i64 @have_large_tails(%struct.super_block* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %2
  br label %69

63:                                               ; preds = %2
  %64 = load %struct.super_block*, %struct.super_block** %5, align 8
  %65 = call i64 @have_small_tails(%struct.super_block* %64)
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)
  br label %69

69:                                               ; preds = %63, %62
  %70 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %62 ], [ %68, %63 ]
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = call i64 @replay_only(%struct.super_block* %71)
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %76 = load %struct.super_block*, %struct.super_block** %5, align 8
  %77 = call i64 @convert_reiserfs(%struct.super_block* %76)
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %81 = load %struct.reiserfs_sb_info*, %struct.reiserfs_sb_info** %6, align 8
  %82 = getelementptr inbounds %struct.reiserfs_sb_info, %struct.reiserfs_sb_info* %81, i32 0, i32 0
  %83 = call i32 @atomic_read(i32* %82)
  %84 = load i32, i32* @s_disk_reads, align 4
  %85 = call i64 @SF(i32 %84)
  %86 = load i32, i32* @s_disk_writes, align 4
  %87 = call i64 @SF(i32 %86)
  %88 = load i32, i32* @s_fix_nodes, align 4
  %89 = call i64 @SF(i32 %88)
  %90 = load i32, i32* @s_do_balance, align 4
  %91 = call i64 @SF(i32 %90)
  %92 = load i32, i32* @s_unneeded_left_neighbor, align 4
  %93 = call i64 @SF(i32 %92)
  %94 = load i32, i32* @s_good_search_by_key_reada, align 4
  %95 = call i64 @SF(i32 %94)
  %96 = load i32, i32* @s_bmaps, align 4
  %97 = call i64 @SF(i32 %96)
  %98 = load i32, i32* @s_bmaps_without_search, align 4
  %99 = call i64 @SF(i32 %98)
  %100 = load i32, i32* @s_direct2indirect, align 4
  %101 = call i64 @SF(i32 %100)
  %102 = load i32, i32* @s_indirect2direct, align 4
  %103 = call i64 @SF(i32 %102)
  %104 = load i32, i32* @max_hash_collisions, align 4
  %105 = call i32 @SFP(i32 %104)
  %106 = load i32, i32* @breads, align 4
  %107 = call i32 @SFP(i32 %106)
  %108 = load i32, i32* @bread_miss, align 4
  %109 = call i32 @SFP(i32 %108)
  %110 = load i32, i32* @search_by_key, align 4
  %111 = call i32 @SFP(i32 %110)
  %112 = load i32, i32* @search_by_key_fs_changed, align 4
  %113 = call i32 @SFP(i32 %112)
  %114 = load i32, i32* @search_by_key_restarted, align 4
  %115 = call i32 @SFP(i32 %114)
  %116 = load i32, i32* @insert_item_restarted, align 4
  %117 = call i32 @SFP(i32 %116)
  %118 = load i32, i32* @paste_into_item_restarted, align 4
  %119 = call i32 @SFP(i32 %118)
  %120 = load i32, i32* @cut_from_item_restarted, align 4
  %121 = call i32 @SFP(i32 %120)
  %122 = load i32, i32* @delete_solid_item_restarted, align 4
  %123 = call i32 @SFP(i32 %122)
  %124 = load i32, i32* @delete_item_restarted, align 4
  %125 = call i32 @SFP(i32 %124)
  %126 = load i32, i32* @leaked_oid, align 4
  %127 = call i32 @SFP(i32 %126)
  %128 = load i32, i32* @leaves_removable, align 4
  %129 = call i32 @SFP(i32 %128)
  %130 = call i32 @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([621 x i8], [621 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %23, i8* %28, i8* %33, i8* %38, i8* %43, i8* %48, i8* %53, i8* %58, i8* %70, i8* %75, i8* %80, i32 %83, i64 %85, i64 %87, i64 %89, i64 %91, i64 %93, i64 %95, i64 %97, i64 %99, i64 %101, i64 %103, i32 %105, i32 %107, i32 %109, i32 %111, i32 %113, i32 %115, i32 %117, i32 %119, i32 %121, i32 %123, i32 %125, i32 %127, i32 %129)
  ret i32 0
}

declare dso_local %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @SF(i32) #1

declare dso_local i64 @reiserfs_r5_hash(%struct.super_block*) #1

declare dso_local i64 @reiserfs_rupasov_hash(%struct.super_block*) #1

declare dso_local i64 @reiserfs_tea_hash(%struct.super_block*) #1

declare dso_local i64 @reiserfs_hash_detect(%struct.super_block*) #1

declare dso_local i64 @reiserfs_no_border(%struct.super_block*) #1

declare dso_local i64 @reiserfs_no_unhashed_relocation(%struct.super_block*) #1

declare dso_local i64 @reiserfs_hashed_relocation(%struct.super_block*) #1

declare dso_local i64 @reiserfs_test4(%struct.super_block*) #1

declare dso_local i64 @have_large_tails(%struct.super_block*) #1

declare dso_local i64 @have_small_tails(%struct.super_block*) #1

declare dso_local i64 @replay_only(%struct.super_block*) #1

declare dso_local i64 @convert_reiserfs(%struct.super_block*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @SFP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
