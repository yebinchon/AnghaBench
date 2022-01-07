; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_free_journal_ram.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_free_journal_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { i64, i32, %struct.reiserfs_journal*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @free_journal_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_journal_ram(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.reiserfs_journal*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %4)
  store %struct.reiserfs_journal* %5, %struct.reiserfs_journal** %3, align 8
  %6 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %3, align 8
  %7 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @kfree(i32 %8)
  %10 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %3, align 8
  %11 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %3, align 8
  %15 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %14, i32 0, i32 2
  %16 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %15, align 8
  %17 = call i32 @vfree(%struct.reiserfs_journal* %16)
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %3, align 8
  %20 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @free_list_bitmaps(%struct.super_block* %18, i32 %21)
  %23 = load %struct.super_block*, %struct.super_block** %2, align 8
  %24 = call i32 @free_bitmap_nodes(%struct.super_block* %23)
  %25 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %3, align 8
  %26 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %3, align 8
  %31 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @brelse(i64 %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.super_block*, %struct.super_block** %2, align 8
  %36 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %3, align 8
  %37 = call i32 @release_journal_dev(%struct.super_block* %35, %struct.reiserfs_journal* %36)
  %38 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %3, align 8
  %39 = call i32 @vfree(%struct.reiserfs_journal* %38)
  ret void
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @vfree(%struct.reiserfs_journal*) #1

declare dso_local i32 @free_list_bitmaps(%struct.super_block*, i32) #1

declare dso_local i32 @free_bitmap_nodes(%struct.super_block*) #1

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @release_journal_dev(%struct.super_block*, %struct.reiserfs_journal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
