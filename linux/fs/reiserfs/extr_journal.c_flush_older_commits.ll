; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_flush_older_commits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_flush_older_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { i32, i32, %struct.list_head, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.reiserfs_journal = type { %struct.list_head }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.reiserfs_journal_list*)* @flush_older_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_older_commits(%struct.super_block* %0, %struct.reiserfs_journal_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.reiserfs_journal_list*, align 8
  %6 = alloca %struct.reiserfs_journal*, align 8
  %7 = alloca %struct.reiserfs_journal_list*, align 8
  %8 = alloca %struct.reiserfs_journal_list*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %12)
  store %struct.reiserfs_journal* %13, %struct.reiserfs_journal** %6, align 8
  %14 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  %15 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %78, %2
  %18 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  store %struct.reiserfs_journal_list* %18, %struct.reiserfs_journal_list** %8, align 8
  %19 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  %20 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.list_head, %struct.list_head* %20, i32 0, i32 1
  %22 = load %struct.list_head*, %struct.list_head** %21, align 8
  store %struct.list_head* %22, %struct.list_head** %9, align 8
  br label %23

23:                                               ; preds = %17, %36
  %24 = load %struct.list_head*, %struct.list_head** %9, align 8
  %25 = call %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(%struct.list_head* %24)
  store %struct.reiserfs_journal_list* %25, %struct.reiserfs_journal_list** %7, align 8
  %26 = load %struct.list_head*, %struct.list_head** %9, align 8
  %27 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %28 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %27, i32 0, i32 0
  %29 = icmp eq %struct.list_head* %26, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %32 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %31, i32 0, i32 3
  %33 = call i64 @atomic_read(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %23
  br label %42

36:                                               ; preds = %30
  %37 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  store %struct.reiserfs_journal_list* %37, %struct.reiserfs_journal_list** %8, align 8
  %38 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %39 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.list_head, %struct.list_head* %39, i32 0, i32 1
  %41 = load %struct.list_head*, %struct.list_head** %40, align 8
  store %struct.list_head* %41, %struct.list_head** %9, align 8
  br label %23

42:                                               ; preds = %35
  %43 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %44 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  %45 = icmp eq %struct.reiserfs_journal_list* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %92

47:                                               ; preds = %42
  %48 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %49 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %48, i32 0, i32 2
  store %struct.list_head* %49, %struct.list_head** %9, align 8
  br label %50

50:                                               ; preds = %47, %91
  %51 = load %struct.list_head*, %struct.list_head** %9, align 8
  %52 = call %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(%struct.list_head* %51)
  store %struct.reiserfs_journal_list* %52, %struct.reiserfs_journal_list** %7, align 8
  %53 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %54 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %50
  %60 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %61 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %60, i32 0, i32 1
  %62 = call i64 @atomic_read(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load %struct.super_block*, %struct.super_block** %4, align 8
  %66 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %67 = call i32 @flush_commit_list(%struct.super_block* %65, %struct.reiserfs_journal_list* %66, i32 0)
  %68 = load %struct.super_block*, %struct.super_block** %4, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @journal_list_still_alive(%struct.super_block* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %92

73:                                               ; preds = %64
  %74 = load %struct.super_block*, %struct.super_block** %4, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @journal_list_still_alive(%struct.super_block* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %17

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %59
  %81 = load %struct.list_head*, %struct.list_head** %9, align 8
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i32 0, i32 0
  %83 = load %struct.list_head*, %struct.list_head** %82, align 8
  store %struct.list_head* %83, %struct.list_head** %9, align 8
  %84 = load %struct.list_head*, %struct.list_head** %9, align 8
  %85 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %86 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %85, i32 0, i32 0
  %87 = icmp eq %struct.list_head* %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %92

89:                                               ; preds = %80
  br label %91

90:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %92

91:                                               ; preds = %89
  br label %50

92:                                               ; preds = %90, %88, %72, %46
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(%struct.list_head*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @flush_commit_list(%struct.super_block*, %struct.reiserfs_journal_list*, i32) #1

declare dso_local i32 @journal_list_still_alive(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
