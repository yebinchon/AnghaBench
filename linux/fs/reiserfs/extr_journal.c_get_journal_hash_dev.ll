; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_get_journal_hash_dev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_get_journal_hash_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_journal_cnode = type { i64, %struct.reiserfs_journal_cnode*, %struct.super_block* }
%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reiserfs_journal_cnode* (%struct.super_block*, %struct.reiserfs_journal_cnode**, i64)* @get_journal_hash_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reiserfs_journal_cnode* @get_journal_hash_dev(%struct.super_block* %0, %struct.reiserfs_journal_cnode** %1, i64 %2) #0 {
  %4 = alloca %struct.reiserfs_journal_cnode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.reiserfs_journal_cnode**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.reiserfs_journal_cnode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.reiserfs_journal_cnode** %1, %struct.reiserfs_journal_cnode*** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.reiserfs_journal_cnode**, %struct.reiserfs_journal_cnode*** %6, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call %struct.reiserfs_journal_cnode* @journal_hash(%struct.reiserfs_journal_cnode** %9, %struct.super_block* %10, i64 %11)
  store %struct.reiserfs_journal_cnode* %12, %struct.reiserfs_journal_cnode** %8, align 8
  br label %13

13:                                               ; preds = %30, %3
  %14 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %15 = icmp ne %struct.reiserfs_journal_cnode* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %18 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %24 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %23, i32 0, i32 2
  %25 = load %struct.super_block*, %struct.super_block** %24, align 8
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = icmp eq %struct.super_block* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  store %struct.reiserfs_journal_cnode* %29, %struct.reiserfs_journal_cnode** %4, align 8
  br label %35

30:                                               ; preds = %22, %16
  %31 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %32 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %31, i32 0, i32 1
  %33 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %32, align 8
  store %struct.reiserfs_journal_cnode* %33, %struct.reiserfs_journal_cnode** %8, align 8
  br label %13

34:                                               ; preds = %13
  store %struct.reiserfs_journal_cnode* null, %struct.reiserfs_journal_cnode** %4, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  ret %struct.reiserfs_journal_cnode* %36
}

declare dso_local %struct.reiserfs_journal_cnode* @journal_hash(%struct.reiserfs_journal_cnode**, %struct.super_block*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
