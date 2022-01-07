; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_when_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_when_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32*, i32*, i64*, i32 }
%struct.buffer_head = type { i32 }
%struct.buffer_info = type { i32 }

@DISK_LEAF_NODE_LEVEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"vs- 12000: level: wrong FR %z\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"PAP-12005: tb->blknum == %d, can not be > 1\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"PAP-12010: tree can not be empty\00", align 1
@M_DELETE = common dso_local global i32 0, align 4
@M_CUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"PAP-12065: bad rnum parameter must be 0 (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, i32)* @balance_leaf_when_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @balance_leaf_when_delete(%struct.tree_balance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_info, align 4
  %8 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %10 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %11)
  store %struct.buffer_head* %12, %struct.buffer_head** %6, align 8
  %13 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %14 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %21 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @B_LEVEL(i32 %24)
  %26 = load i64, i64* @DISK_LEAF_NODE_LEVEL, align 8
  %27 = add nsw i64 %26, 1
  %28 = icmp ne i64 %25, %27
  br label %29

29:                                               ; preds = %19, %2
  %30 = phi i1 [ false, %2 ], [ %28, %19 ]
  %31 = zext i1 %30 to i32
  %32 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %33 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @RFALSE(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %39 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %46 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @RFALSE(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %52 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %29
  %58 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %59 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PATH_H_PPARENT(i32 %60, i32 0)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %57, %29
  %65 = phi i1 [ false, %29 ], [ %63, %57 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @RFALSE(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %69 = call i32 @buffer_info_init_tbS0(%struct.tree_balance* %68, %struct.buffer_info* %7)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @M_DELETE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @M_CUT, align 4
  %76 = icmp ne i32 %74, %75
  br label %77

77:                                               ; preds = %73, %64
  %78 = phi i1 [ false, %64 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @M_DELETE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %86 = call i32 @balance_leaf_when_delete_del(%struct.tree_balance* %85)
  br label %90

87:                                               ; preds = %77
  %88 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %89 = call i32 @balance_leaf_when_delete_cut(%struct.tree_balance* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %92 = call i32 @B_NR_ITEMS(%struct.buffer_head* %91)
  store i32 %92, i32* %8, align 4
  %93 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %94 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %93, i32 0, i32 3
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %101 = call i32 @balance_leaf_when_delete_left(%struct.tree_balance* %100)
  store i32 %101, i32* %3, align 4
  br label %128

102:                                              ; preds = %90
  %103 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %104 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %116

109:                                              ; preds = %102
  %110 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @leaf_shift_right(%struct.tree_balance* %110, i32 %111, i32 -1)
  %113 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %114 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %115 = call i32 @reiserfs_invalidate_buffer(%struct.tree_balance* %113, %struct.buffer_head* %114)
  store i32 0, i32* %3, align 4
  br label %128

116:                                              ; preds = %102
  %117 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %118 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %123 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i8*, ...) @RFALSE(i32 %121, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %116, %109, %99
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i64 @B_LEVEL(i32) #1

declare dso_local i32 @PATH_H_PPARENT(i32, i32) #1

declare dso_local i32 @buffer_info_init_tbS0(%struct.tree_balance*, %struct.buffer_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @balance_leaf_when_delete_del(%struct.tree_balance*) #1

declare dso_local i32 @balance_leaf_when_delete_cut(%struct.tree_balance*) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @balance_leaf_when_delete_left(%struct.tree_balance*) #1

declare dso_local i32 @leaf_shift_right(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @reiserfs_invalidate_buffer(%struct.tree_balance*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
