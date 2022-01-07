; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_new_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_new_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, %struct.buffer_head**, %struct.buffer_head** }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }

@M_INSERT = common dso_local global i32 0, align 4
@M_PASTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"PAP-12200: snum[%d] == %d. Must be > 0\00", align 1
@DISK_LEAF_NODE_LEVEL = common dso_local global i32 0, align 4
@KEY_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"PAP-12247: S_new[%d] : (%b)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*, %struct.item_head*, %struct.buffer_head**, i32)* @balance_leaf_new_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_new_nodes(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2, %struct.item_head* %3, %struct.buffer_head** %4, i32 %5) #0 {
  %7 = alloca %struct.tree_balance*, align 8
  %8 = alloca %struct.item_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.item_head*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %7, align 8
  store %struct.item_head* %1, %struct.item_head** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.item_head* %3, %struct.item_head** %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %15 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 2
  store i32 %19, i32* %13, align 4
  br label %20

20:                                               ; preds = %158, %6
  %21 = load i32, i32* %13, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %161

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @M_INSERT, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @M_PASTE, align 4
  %30 = icmp ne i32 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %36 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %35, i32 0, i32 2
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %37, i64 %39
  %41 = load %struct.buffer_head*, %struct.buffer_head** %40, align 8
  %42 = icmp ne %struct.buffer_head* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %47 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %46, i32 0, i32 2
  %48 = load %struct.buffer_head**, %struct.buffer_head*** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %48, i64 %50
  %52 = load %struct.buffer_head*, %struct.buffer_head** %51, align 8
  %53 = call i32 @RFALSE(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %45, %struct.buffer_head* %52)
  %54 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %55 = call %struct.buffer_head* @get_FEB(%struct.tree_balance* %54)
  %56 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %57 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %56, i32 0, i32 1
  %58 = load %struct.buffer_head**, %struct.buffer_head*** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %58, i64 %60
  store %struct.buffer_head* %55, %struct.buffer_head** %61, align 8
  %62 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %63 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %62, i32 0, i32 1
  %64 = load %struct.buffer_head**, %struct.buffer_head*** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %64, i64 %66
  %68 = load %struct.buffer_head*, %struct.buffer_head** %67, align 8
  %69 = call i32 @B_BLK_HEAD(%struct.buffer_head* %68)
  %70 = load i32, i32* @DISK_LEAF_NODE_LEVEL, align 4
  %71 = call i32 @set_blkh_level(i32 %69, i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @M_INSERT, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %31
  %76 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %77 = load %struct.item_head*, %struct.item_head** %8, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load %struct.item_head*, %struct.item_head** %10, align 8
  %80 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @balance_leaf_new_nodes_insert(%struct.tree_balance* %76, %struct.item_head* %77, i8* %78, %struct.item_head* %79, %struct.buffer_head** %80, i32 %81)
  br label %91

83:                                               ; preds = %31
  %84 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %85 = load %struct.item_head*, %struct.item_head** %8, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.item_head*, %struct.item_head** %10, align 8
  %88 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @balance_leaf_new_nodes_paste(%struct.tree_balance* %84, %struct.item_head* %85, i8* %86, %struct.item_head* %87, %struct.buffer_head** %88, i32 %89)
  br label %91

91:                                               ; preds = %83, %75
  %92 = load %struct.item_head*, %struct.item_head** %10, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.item_head, %struct.item_head* %92, i64 %94
  %96 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %97 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %96, i32 0, i32 1
  %98 = load %struct.buffer_head**, %struct.buffer_head*** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %98, i64 %100
  %102 = load %struct.buffer_head*, %struct.buffer_head** %101, align 8
  %103 = call i32 @leaf_key(%struct.buffer_head* %102, i32 0)
  %104 = load i32, i32* @KEY_SIZE, align 4
  %105 = call i32 @memcpy(%struct.item_head* %95, i32 %103, i32 %104)
  %106 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %107 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %106, i32 0, i32 1
  %108 = load %struct.buffer_head**, %struct.buffer_head*** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %108, i64 %110
  %112 = load %struct.buffer_head*, %struct.buffer_head** %111, align 8
  %113 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %113, i64 %115
  store %struct.buffer_head* %112, %struct.buffer_head** %116, align 8
  %117 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %118 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %117, i32 0, i32 1
  %119 = load %struct.buffer_head**, %struct.buffer_head*** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %119, i64 %121
  %123 = load %struct.buffer_head*, %struct.buffer_head** %122, align 8
  %124 = call i32 @buffer_journaled(%struct.buffer_head* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %91
  %127 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %128 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %127, i32 0, i32 1
  %129 = load %struct.buffer_head**, %struct.buffer_head*** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %129, i64 %131
  %133 = load %struct.buffer_head*, %struct.buffer_head** %132, align 8
  %134 = call i64 @buffer_journal_dirty(%struct.buffer_head* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %126
  %137 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %138 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %137, i32 0, i32 1
  %139 = load %struct.buffer_head**, %struct.buffer_head*** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %139, i64 %141
  %143 = load %struct.buffer_head*, %struct.buffer_head** %142, align 8
  %144 = call i64 @buffer_dirty(%struct.buffer_head* %143)
  %145 = icmp ne i64 %144, 0
  br label %146

146:                                              ; preds = %136, %126, %91
  %147 = phi i1 [ true, %126 ], [ true, %91 ], [ %145, %136 ]
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %151 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %150, i32 0, i32 1
  %152 = load %struct.buffer_head**, %struct.buffer_head*** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %152, i64 %154
  %156 = load %struct.buffer_head*, %struct.buffer_head** %155, align 8
  %157 = call i32 @RFALSE(i32 %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %149, %struct.buffer_head* %156)
  br label %158

158:                                              ; preds = %146
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %13, align 4
  br label %20

161:                                              ; preds = %20
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RFALSE(i32, i8*, i32, %struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @get_FEB(%struct.tree_balance*) #1

declare dso_local i32 @set_blkh_level(i32, i32) #1

declare dso_local i32 @B_BLK_HEAD(%struct.buffer_head*) #1

declare dso_local i32 @balance_leaf_new_nodes_insert(%struct.tree_balance*, %struct.item_head*, i8*, %struct.item_head*, %struct.buffer_head**, i32) #1

declare dso_local i32 @balance_leaf_new_nodes_paste(%struct.tree_balance*, %struct.item_head*, i8*, %struct.item_head*, %struct.buffer_head**, i32) #1

declare dso_local i32 @memcpy(%struct.item_head*, i32, i32) #1

declare dso_local i32 @leaf_key(%struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_journaled(%struct.buffer_head*) #1

declare dso_local i64 @buffer_journal_dirty(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
