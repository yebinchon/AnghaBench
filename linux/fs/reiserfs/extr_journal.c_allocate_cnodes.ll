; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_allocate_cnodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_allocate_cnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_journal_cnode = type { %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reiserfs_journal_cnode* (i32)* @allocate_cnodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reiserfs_journal_cnode* @allocate_cnodes(i32 %0) #0 {
  %2 = alloca %struct.reiserfs_journal_cnode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.reiserfs_journal_cnode*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.reiserfs_journal_cnode* null, %struct.reiserfs_journal_cnode** %2, align 8
  br label %61

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @array_size(i32 %10, i32 16)
  %12 = call %struct.reiserfs_journal_cnode* @vzalloc(i32 %11)
  store %struct.reiserfs_journal_cnode* %12, %struct.reiserfs_journal_cnode** %4, align 8
  %13 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %14 = icmp ne %struct.reiserfs_journal_cnode* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store %struct.reiserfs_journal_cnode* null, %struct.reiserfs_journal_cnode** %2, align 8
  br label %61

16:                                               ; preds = %9
  %17 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %18 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %17, i64 0
  %19 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %18, i32 0, i32 1
  store %struct.reiserfs_journal_cnode* null, %struct.reiserfs_journal_cnode** %19, align 8
  %20 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %21 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %20, i64 1
  %22 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %23 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %22, i64 0
  %24 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %23, i32 0, i32 0
  store %struct.reiserfs_journal_cnode* %21, %struct.reiserfs_journal_cnode** %24, align 8
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %50, %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %30, i64 %33
  %35 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %35, i64 %37
  %39 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %38, i32 0, i32 1
  store %struct.reiserfs_journal_cnode* %34, %struct.reiserfs_journal_cnode** %39, align 8
  %40 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %40, i64 %43
  %45 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %45, i64 %47
  %49 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %48, i32 0, i32 0
  store %struct.reiserfs_journal_cnode* %44, %struct.reiserfs_journal_cnode** %49, align 8
  br label %50

50:                                               ; preds = %29
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %25

53:                                               ; preds = %25
  %54 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %54, i64 %57
  %59 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %58, i32 0, i32 0
  store %struct.reiserfs_journal_cnode* null, %struct.reiserfs_journal_cnode** %59, align 8
  %60 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  store %struct.reiserfs_journal_cnode* %60, %struct.reiserfs_journal_cnode** %2, align 8
  br label %61

61:                                               ; preds = %53, %15, %8
  %62 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %2, align 8
  ret %struct.reiserfs_journal_cnode* %62
}

declare dso_local %struct.reiserfs_journal_cnode* @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
