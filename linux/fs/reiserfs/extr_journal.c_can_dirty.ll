; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_can_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_can_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_journal_cnode = type { i64, %struct.reiserfs_journal_cnode*, %struct.super_block*, i64, %struct.TYPE_2__*, %struct.reiserfs_journal_cnode* }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reiserfs_journal_cnode*)* @can_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_dirty(%struct.reiserfs_journal_cnode* %0) #0 {
  %2 = alloca %struct.reiserfs_journal_cnode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.reiserfs_journal_cnode*, align 8
  %6 = alloca i32, align 4
  store %struct.reiserfs_journal_cnode* %0, %struct.reiserfs_journal_cnode** %2, align 8
  %7 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %2, align 8
  %8 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %7, i32 0, i32 2
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %3, align 8
  %10 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %2, align 8
  %11 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %2, align 8
  %14 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %13, i32 0, i32 5
  %15 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %14, align 8
  store %struct.reiserfs_journal_cnode* %15, %struct.reiserfs_journal_cnode** %5, align 8
  store i32 1, i32* %6, align 4
  br label %16

16:                                               ; preds = %52, %1
  %17 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %18 = icmp ne %struct.reiserfs_journal_cnode* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %56

24:                                               ; preds = %22
  %25 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %26 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %31 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %36 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %41 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %40, i32 0, i32 2
  %42 = load %struct.super_block*, %struct.super_block** %41, align 8
  %43 = load %struct.super_block*, %struct.super_block** %3, align 8
  %44 = icmp eq %struct.super_block* %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %47 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %45, %39, %34, %29, %24
  %53 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %54 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %53, i32 0, i32 5
  %55 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %54, align 8
  store %struct.reiserfs_journal_cnode* %55, %struct.reiserfs_journal_cnode** %5, align 8
  br label %16

56:                                               ; preds = %22
  %57 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %2, align 8
  %58 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %57, i32 0, i32 1
  %59 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %58, align 8
  store %struct.reiserfs_journal_cnode* %59, %struct.reiserfs_journal_cnode** %5, align 8
  br label %60

60:                                               ; preds = %110, %56
  %61 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %62 = icmp ne %struct.reiserfs_journal_cnode* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i1 [ false, %60 ], [ %65, %63 ]
  br i1 %67, label %68, label %114

68:                                               ; preds = %66
  %69 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %70 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %69, i32 0, i32 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = icmp ne %struct.TYPE_2__* %71, null
  br i1 %72, label %73, label %110

73:                                               ; preds = %68
  %74 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %75 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %73
  %81 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %82 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %81, i32 0, i32 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = call i64 @atomic_read(i32* %84)
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %80
  %88 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %89 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %87
  %93 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %94 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %99 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %98, i32 0, i32 2
  %100 = load %struct.super_block*, %struct.super_block** %99, align 8
  %101 = load %struct.super_block*, %struct.super_block** %3, align 8
  %102 = icmp eq %struct.super_block* %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %105 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %4, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %103, %97, %92, %87, %80, %73, %68
  %111 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %112 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %111, i32 0, i32 1
  %113 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %112, align 8
  store %struct.reiserfs_journal_cnode* %113, %struct.reiserfs_journal_cnode** %5, align 8
  br label %60

114:                                              ; preds = %66
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
