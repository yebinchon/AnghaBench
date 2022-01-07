; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_allocate_bitmap_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_allocate_bitmap_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { i32, i32 }
%struct.reiserfs_bitmap_node = type { i32 }

@REISERFS_MIN_BITMAP_NODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @allocate_bitmap_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_bitmap_nodes(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.reiserfs_journal*, align 8
  %5 = alloca %struct.reiserfs_bitmap_node*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %6)
  store %struct.reiserfs_journal* %7, %struct.reiserfs_journal** %4, align 8
  store %struct.reiserfs_bitmap_node* null, %struct.reiserfs_bitmap_node** %5, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @REISERFS_MIN_BITMAP_NODES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load %struct.super_block*, %struct.super_block** %2, align 8
  %14 = call %struct.reiserfs_bitmap_node* @allocate_bitmap_node(%struct.super_block* %13)
  store %struct.reiserfs_bitmap_node* %14, %struct.reiserfs_bitmap_node** %5, align 8
  %15 = load %struct.reiserfs_bitmap_node*, %struct.reiserfs_bitmap_node** %5, align 8
  %16 = icmp ne %struct.reiserfs_bitmap_node* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.reiserfs_bitmap_node*, %struct.reiserfs_bitmap_node** %5, align 8
  %19 = getelementptr inbounds %struct.reiserfs_bitmap_node, %struct.reiserfs_bitmap_node* %18, i32 0, i32 0
  %20 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %21 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %20, i32 0, i32 1
  %22 = call i32 @list_add(i32* %19, i32* %21)
  %23 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %24 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %28

27:                                               ; preds = %12
  br label %32

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %8

32:                                               ; preds = %27, %8
  ret void
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local %struct.reiserfs_bitmap_node* @allocate_bitmap_node(%struct.super_block*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
