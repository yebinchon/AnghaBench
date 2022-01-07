; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_print_super_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_print_super_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, i64 }
%struct.reiserfs_super_block = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"3.5\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"3.6\00", align 1
@REISERFS_VERSION_2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"%pg's super block is in block %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Reiserfs version %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Block count %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Blocksize %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Free blocks %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [104 x i8] c"Busy blocks (skipped %d, bitmaps - %d, journal (or reserved) blocks - %d\0A1 super block, %d data blocks\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Root block %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Journal block (first) %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Journal dev %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Journal orig size %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"FS state %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Hash function \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Tree height %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*)* @print_super_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_super_block(%struct.buffer_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.reiserfs_super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.reiserfs_super_block*
  store %struct.reiserfs_super_block* %11, %struct.reiserfs_super_block** %4, align 8
  %12 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %13 = call i64 @is_reiserfs_3_5(%struct.reiserfs_super_block* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %18 = call i64 @is_reiserfs_3_6(%struct.reiserfs_super_block* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %34

21:                                               ; preds = %16
  %22 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %23 = call i64 @is_reiserfs_jr(%struct.reiserfs_super_block* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %27 = call i64 @sb_version(%struct.reiserfs_super_block* %26)
  %28 = load i64, i64* @REISERFS_VERSION_2, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)
  store i8* %31, i8** %7, align 8
  br label %33

32:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %121

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %20
  br label %35

35:                                               ; preds = %34, %15
  %36 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %38, i64 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %47 = call i32 @sb_block_count(%struct.reiserfs_super_block* %46)
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %50 = call i32 @sb_blocksize(%struct.reiserfs_super_block* %49)
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %53 = call i32 @sb_free_blocks(%struct.reiserfs_super_block* %52)
  %54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  %55 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %5, align 4
  %58 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %59 = call i32 @sb_block_count(%struct.reiserfs_super_block* %58)
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  %63 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %64 = call i32 @sb_bmap_nr(%struct.reiserfs_super_block* %63)
  %65 = sub nsw i32 %62, %64
  %66 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %67 = call i64 @is_reiserfs_jr(%struct.reiserfs_super_block* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %35
  %70 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %71 = call i32 @sb_jp_journal_size(%struct.reiserfs_super_block* %70)
  %72 = add nsw i32 %71, 1
  br label %76

73:                                               ; preds = %35
  %74 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %75 = call i32 @sb_reserved_for_journal(%struct.reiserfs_super_block* %74)
  br label %76

76:                                               ; preds = %73, %69
  %77 = phi i32 [ %72, %69 ], [ %75, %73 ]
  %78 = sub nsw i32 %65, %77
  %79 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %80 = call i32 @sb_free_blocks(%struct.reiserfs_super_block* %79)
  %81 = sub nsw i32 %78, %80
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %84 = call i32 @sb_bmap_nr(%struct.reiserfs_super_block* %83)
  %85 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %86 = call i64 @is_reiserfs_jr(%struct.reiserfs_super_block* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %76
  %89 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %90 = call i32 @sb_jp_journal_size(%struct.reiserfs_super_block* %89)
  %91 = add nsw i32 %90, 1
  br label %95

92:                                               ; preds = %76
  %93 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %94 = call i32 @sb_reserved_for_journal(%struct.reiserfs_super_block* %93)
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ %91, %88 ], [ %94, %92 ]
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.7, i64 0, i64 0), i32 %82, i32 %84, i32 %96, i32 %97)
  %99 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %100 = call i32 @sb_root_block(%struct.reiserfs_super_block* %99)
  %101 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %100)
  %102 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %103 = call i32 @sb_jp_journal_1st_block(%struct.reiserfs_super_block* %102)
  %104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %103)
  %105 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %106 = call i32 @sb_jp_journal_dev(%struct.reiserfs_super_block* %105)
  %107 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %106)
  %108 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %109 = call i32 @sb_jp_journal_size(%struct.reiserfs_super_block* %108)
  %110 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %109)
  %111 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %112 = call i32 @sb_fs_state(%struct.reiserfs_super_block* %111)
  %113 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %112)
  %114 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %115 = call i32 @sb_hash_function_code(%struct.reiserfs_super_block* %114)
  %116 = call i32 @reiserfs_hashname(i32 %115)
  %117 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %116)
  %118 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %4, align 8
  %119 = call i32 @sb_tree_height(%struct.reiserfs_super_block* %118)
  %120 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %119)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %95, %32
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @is_reiserfs_3_5(%struct.reiserfs_super_block*) #1

declare dso_local i64 @is_reiserfs_3_6(%struct.reiserfs_super_block*) #1

declare dso_local i64 @is_reiserfs_jr(%struct.reiserfs_super_block*) #1

declare dso_local i64 @sb_version(%struct.reiserfs_super_block*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @sb_block_count(%struct.reiserfs_super_block*) #1

declare dso_local i32 @sb_blocksize(%struct.reiserfs_super_block*) #1

declare dso_local i32 @sb_free_blocks(%struct.reiserfs_super_block*) #1

declare dso_local i32 @sb_bmap_nr(%struct.reiserfs_super_block*) #1

declare dso_local i32 @sb_jp_journal_size(%struct.reiserfs_super_block*) #1

declare dso_local i32 @sb_reserved_for_journal(%struct.reiserfs_super_block*) #1

declare dso_local i32 @sb_root_block(%struct.reiserfs_super_block*) #1

declare dso_local i32 @sb_jp_journal_1st_block(%struct.reiserfs_super_block*) #1

declare dso_local i32 @sb_jp_journal_dev(%struct.reiserfs_super_block*) #1

declare dso_local i32 @sb_fs_state(%struct.reiserfs_super_block*) #1

declare dso_local i32 @reiserfs_hashname(i32) #1

declare dso_local i32 @sb_hash_function_code(%struct.reiserfs_super_block*) #1

declare dso_local i32 @sb_tree_height(%struct.reiserfs_super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
