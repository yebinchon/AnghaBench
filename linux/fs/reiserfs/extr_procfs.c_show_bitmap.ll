; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_procfs.c_show_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_procfs.c_show_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.reiserfs_sb_info = type { i32 }

@.str = private unnamed_addr constant [159 x i8] c"free_block: %lu\0A  scan_bitmap:          wait          bmap         retry        stolen  journal_hintjournal_nohint\0A %14lu %14lu %14lu %14lu %14lu %14lu %14lu\0A\00", align 1
@free_block = common dso_local global i32 0, align 4
@call = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@bmap = common dso_local global i32 0, align 4
@retry = common dso_local global i32 0, align 4
@stolen = common dso_local global i32 0, align 4
@in_journal_hint = common dso_local global i32 0, align 4
@in_journal_nohint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_bitmap(%struct.seq_file* %0, i8* %1) #0 {
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
  %13 = load i32, i32* @free_block, align 4
  %14 = call i32 @SFP(i32 %13)
  %15 = load i32, i32* @call, align 4
  %16 = call i32 @SFPF(i32 %15)
  %17 = load i32, i32* @wait, align 4
  %18 = call i32 @SFPF(i32 %17)
  %19 = load i32, i32* @bmap, align 4
  %20 = call i32 @SFPF(i32 %19)
  %21 = load i32, i32* @retry, align 4
  %22 = call i32 @SFPF(i32 %21)
  %23 = load i32, i32* @stolen, align 4
  %24 = call i32 @SFPF(i32 %23)
  %25 = load i32, i32* @in_journal_hint, align 4
  %26 = call i32 @SFPF(i32 %25)
  %27 = load i32, i32* @in_journal_nohint, align 4
  %28 = call i32 @SFPF(i32 %27)
  %29 = call i32 @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i32 %18, i32 %20, i32 %22, i32 %24, i32 %26, i32 %28)
  ret i32 0
}

declare dso_local %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SFP(i32) #1

declare dso_local i32 @SFPF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
