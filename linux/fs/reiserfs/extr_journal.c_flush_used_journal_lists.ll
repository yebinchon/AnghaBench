; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_flush_used_journal_lists.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_flush_used_journal_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { i64, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.reiserfs_journal = type { i32 }

@LIST_TOUCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.reiserfs_journal_list*)* @flush_used_journal_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_used_journal_lists(%struct.super_block* %0, %struct.reiserfs_journal_list* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.reiserfs_journal_list*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.reiserfs_journal_list*, align 8
  %10 = alloca %struct.reiserfs_journal_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.reiserfs_journal*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 256, i32* %8, align 4
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %13)
  store %struct.reiserfs_journal* %14, %struct.reiserfs_journal** %12, align 8
  %15 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  store %struct.reiserfs_journal_list* %15, %struct.reiserfs_journal_list** %9, align 8
  store %struct.reiserfs_journal_list* %15, %struct.reiserfs_journal_list** %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = call i64 @reiserfs_data_log(%struct.super_block* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1024, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %77, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ %28, %24 ]
  br i1 %30, label %31, label %80

31:                                               ; preds = %29
  %32 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %9, align 8
  %33 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %32, i32 0, i32 4
  %34 = call i64 @atomic_read(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %9, align 8
  %38 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %41 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %31
  br label %80

45:                                               ; preds = %36
  %46 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %9, align 8
  %47 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %46, i32 0, i32 3
  %48 = call i64 @atomic_read(i32* %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ugt i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* @LIST_TOUCHED, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %9, align 8
  %55 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %51, %45
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %5, align 8
  %62 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %9, align 8
  store %struct.reiserfs_journal_list* %62, %struct.reiserfs_journal_list** %10, align 8
  %63 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %9, align 8
  %64 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %12, align 8
  %68 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %67, i32 0, i32 0
  %69 = icmp eq i32* %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %80

71:                                               ; preds = %58
  %72 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %9, align 8
  %73 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(i32* %75)
  store %struct.reiserfs_journal_list* %76, %struct.reiserfs_journal_list** %9, align 8
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %21

80:                                               ; preds = %70, %44, %29
  %81 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %82 = call i32 @get_journal_list(%struct.reiserfs_journal_list* %81)
  %83 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %10, align 8
  %84 = call i32 @get_journal_list(%struct.reiserfs_journal_list* %83)
  %85 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %10, align 8
  %86 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %87 = icmp ne %struct.reiserfs_journal_list* %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load %struct.super_block*, %struct.super_block** %3, align 8
  %90 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @kupdate_transactions(%struct.super_block* %89, %struct.reiserfs_journal_list* %90, %struct.reiserfs_journal_list** %9, i32* %11, i64 %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %80
  %95 = load %struct.super_block*, %struct.super_block** %3, align 8
  %96 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %10, align 8
  %97 = call i32 @flush_journal_list(%struct.super_block* %95, %struct.reiserfs_journal_list* %96, i32 1)
  %98 = load %struct.super_block*, %struct.super_block** %3, align 8
  %99 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %10, align 8
  %100 = call i32 @put_journal_list(%struct.super_block* %98, %struct.reiserfs_journal_list* %99)
  %101 = load %struct.super_block*, %struct.super_block** %3, align 8
  %102 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %103 = call i32 @put_journal_list(%struct.super_block* %101, %struct.reiserfs_journal_list* %102)
  ret i32 0
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i64 @reiserfs_data_log(%struct.super_block*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(i32*) #1

declare dso_local i32 @get_journal_list(%struct.reiserfs_journal_list*) #1

declare dso_local i32 @kupdate_transactions(%struct.super_block*, %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list**, i32*, i64, i32) #1

declare dso_local i32 @flush_journal_list(%struct.super_block*, %struct.reiserfs_journal_list*, i32) #1

declare dso_local i32 @put_journal_list(%struct.super_block*, %struct.reiserfs_journal_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
