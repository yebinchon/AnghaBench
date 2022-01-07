; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_put_journal_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_put_journal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"journal-2\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"trans id %u, refcount at %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.reiserfs_journal_list*)* @put_journal_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_journal_list(%struct.super_block* %0, %struct.reiserfs_journal_list* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.reiserfs_journal_list*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %4, align 8
  %5 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %6 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %12 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %15 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @reiserfs_panic(%struct.super_block* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %9, %2
  %19 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %20 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %26 = call i32 @kfree(%struct.reiserfs_journal_list* %25)
  br label %27

27:                                               ; preds = %24, %18
  ret void
}

declare dso_local i32 @reiserfs_panic(%struct.super_block*, i8*, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.reiserfs_journal_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
