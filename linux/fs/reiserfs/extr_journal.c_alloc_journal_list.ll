; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_alloc_journal_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_alloc_journal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_journal_list = type { i32, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reiserfs_journal_list* (%struct.super_block*)* @alloc_journal_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reiserfs_journal_list* @alloc_journal_list(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.reiserfs_journal_list*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load i32, i32* @GFP_NOFS, align 4
  %5 = load i32, i32* @__GFP_NOFAIL, align 4
  %6 = or i32 %4, %5
  %7 = call %struct.reiserfs_journal_list* @kzalloc(i32 20, i32 %6)
  store %struct.reiserfs_journal_list* %7, %struct.reiserfs_journal_list** %3, align 8
  %8 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %3, align 8
  %9 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %8, i32 0, i32 4
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %3, align 8
  %12 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %11, i32 0, i32 3
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %3, align 8
  %15 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %14, i32 0, i32 2
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %3, align 8
  %18 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %3, align 8
  %21 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %20, i32 0, i32 0
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.super_block*, %struct.super_block** %2, align 8
  %24 = call %struct.TYPE_2__* @SB_JOURNAL(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %3, align 8
  %29 = call i32 @get_journal_list(%struct.reiserfs_journal_list* %28)
  %30 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %3, align 8
  ret %struct.reiserfs_journal_list* %30
}

declare dso_local %struct.reiserfs_journal_list* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_2__* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @get_journal_list(%struct.reiserfs_journal_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
