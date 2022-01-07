; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_procfs.c_show_on_disk_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_procfs.c_show_on_disk_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.reiserfs_sb_info = type { %struct.reiserfs_super_block* }
%struct.reiserfs_super_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@s_hash_function_code = common dso_local global i32 0, align 4
@s_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [242 x i8] c"block_count: \09%i\0Afree_blocks: \09%i\0Aroot_block: \09%i\0Ablocksize: \09%i\0Aoid_maxsize: \09%i\0Aoid_cursize: \09%i\0Aumount_state: \09%i\0Amagic: \09%10.10s\0Afs_state: \09%i\0Ahash: \09%s\0Atree_height: \09%i\0Abmap_nr: \09%i\0Aversion: \09%i\0Aflags: \09%x[%s]\0Areserved_for_journal: \09%i\0A\00", align 1
@s_block_count = common dso_local global i32 0, align 4
@s_free_blocks = common dso_local global i32 0, align 4
@s_root_block = common dso_local global i32 0, align 4
@s_blocksize = common dso_local global i32 0, align 4
@s_oid_maxsize = common dso_local global i32 0, align 4
@s_oid_cursize = common dso_local global i32 0, align 4
@s_umount_state = common dso_local global i32 0, align 4
@s_fs_state = common dso_local global i32 0, align 4
@TEA_HASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"tea\00", align 1
@YURA_HASH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"rupasov\00", align 1
@R5_HASH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"r5\00", align 1
@UNSET_HASH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@s_tree_height = common dso_local global i32 0, align 4
@s_bmap_nr = common dso_local global i32 0, align 4
@s_version = common dso_local global i32 0, align 4
@reiserfs_attrs_cleared = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"attrs_cleared\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@s_reserved_for_journal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_on_disk_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_on_disk_super(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.reiserfs_sb_info*, align 8
  %7 = alloca %struct.reiserfs_super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %5, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block* %13)
  store %struct.reiserfs_sb_info* %14, %struct.reiserfs_sb_info** %6, align 8
  %15 = load %struct.reiserfs_sb_info*, %struct.reiserfs_sb_info** %6, align 8
  %16 = getelementptr inbounds %struct.reiserfs_sb_info, %struct.reiserfs_sb_info* %15, i32 0, i32 0
  %17 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %16, align 8
  store %struct.reiserfs_super_block* %17, %struct.reiserfs_super_block** %7, align 8
  %18 = load i32, i32* @s_hash_function_code, align 4
  %19 = call i32 @DFL(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @s_flags, align 4
  %21 = call i32 @DJF(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load i32, i32* @s_block_count, align 4
  %24 = call i32 @DFL(i32 %23)
  %25 = load i32, i32* @s_free_blocks, align 4
  %26 = call i32 @DFL(i32 %25)
  %27 = load i32, i32* @s_root_block, align 4
  %28 = call i32 @DFL(i32 %27)
  %29 = load i32, i32* @s_blocksize, align 4
  %30 = call i32 @DF(i32 %29)
  %31 = load i32, i32* @s_oid_maxsize, align 4
  %32 = call i32 @DF(i32 %31)
  %33 = load i32, i32* @s_oid_cursize, align 4
  %34 = call i32 @DF(i32 %33)
  %35 = load i32, i32* @s_umount_state, align 4
  %36 = call i32 @DF(i32 %35)
  %37 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %7, align 8
  %38 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @s_fs_state, align 4
  %42 = call i32 @DF(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @TEA_HASH, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  br label %67

47:                                               ; preds = %2
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @YURA_HASH, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %65

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @R5_HASH, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %63

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @UNSET_HASH, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  br label %63

63:                                               ; preds = %57, %56
  %64 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %56 ], [ %62, %57 ]
  br label %65

65:                                               ; preds = %63, %51
  %66 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %51 ], [ %64, %63 ]
  br label %67

67:                                               ; preds = %65, %46
  %68 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %46 ], [ %66, %65 ]
  %69 = load i32, i32* @s_tree_height, align 4
  %70 = call i32 @DF(i32 %69)
  %71 = load i32, i32* @s_bmap_nr, align 4
  %72 = call i32 @DF(i32 %71)
  %73 = load i32, i32* @s_version, align 4
  %74 = call i32 @DF(i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @reiserfs_attrs_cleared, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %82 = load i32, i32* @s_reserved_for_journal, align 4
  %83 = call i32 @DF(i32 %82)
  %84 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([242 x i8], [242 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26, i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %40, i32 %42, i8* %68, i32 %70, i32 %72, i32 %74, i32 %75, i8* %81, i32 %83)
  ret i32 0
}

declare dso_local %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @DFL(i32) #1

declare dso_local i32 @DJF(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @DF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
