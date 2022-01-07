; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_new_nodes_paste_whole.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_new_nodes_paste_whole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32, i64, i64*, i32*, i64, %struct.buffer_head**, i32*, i32, i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.buffer_info = type { i32 }
%struct.reiserfs_de_head = type { i32 }

@LEAF_FROM_S_TO_SNEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"PAP-12240: unexpected value returned by leaf_move_items (%d)\00", align 1
@DEH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*, %struct.item_head*, %struct.buffer_head**, i32)* @balance_leaf_new_nodes_paste_whole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_new_nodes_paste_whole(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2, %struct.item_head* %3, %struct.buffer_head** %4, i32 %5) #0 {
  %7 = alloca %struct.tree_balance*, align 8
  %8 = alloca %struct.item_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.item_head*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.item_head*, align 8
  %17 = alloca %struct.buffer_info, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %7, align 8
  store %struct.item_head* %1, %struct.item_head** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.item_head* %3, %struct.item_head** %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %19 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %20)
  store %struct.buffer_head* %21, %struct.buffer_head** %13, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %23 = call i32 @B_NR_ITEMS(%struct.buffer_head* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @LEAF_FROM_S_TO_SNEW, align 4
  %25 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %26 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %27 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %34 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %41 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %40, i32 0, i32 5
  %42 = load %struct.buffer_head**, %struct.buffer_head*** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %42, i64 %44
  %46 = load %struct.buffer_head*, %struct.buffer_head** %45, align 8
  %47 = call i32 @leaf_move_items(i32 %24, %struct.tree_balance* %25, i32 %32, i32 %39, %struct.buffer_head* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @RFALSE(i32 %48, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %52 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %53 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %52, i32 0, i32 5
  %54 = load %struct.buffer_head**, %struct.buffer_head*** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %54, i64 %56
  %58 = load %struct.buffer_head*, %struct.buffer_head** %57, align 8
  %59 = call i32 @buffer_info_init_bh(%struct.tree_balance* %51, %struct.buffer_info* %17, %struct.buffer_head* %58)
  %60 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %61 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %66 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %64, %71
  %73 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %74 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %77 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %83 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @leaf_paste_in_buffer(%struct.buffer_info* %17, i32 %72, i64 %75, i64 %80, i8* %81, i64 %84)
  %86 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %87 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %86, i32 0, i32 5
  %88 = load %struct.buffer_head**, %struct.buffer_head*** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %88, i64 %90
  %92 = load %struct.buffer_head*, %struct.buffer_head** %91, align 8
  %93 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %94 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %99 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %97, %104
  %106 = call %struct.item_head* @item_head(%struct.buffer_head* %92, i32 %105)
  store %struct.item_head* %106, %struct.item_head** %16, align 8
  %107 = load %struct.item_head*, %struct.item_head** %16, align 8
  %108 = call i64 @is_direntry_le_ih(%struct.item_head* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %139

110:                                              ; preds = %6
  %111 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %112 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %117 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %115, %122
  %124 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %125 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = bitcast i8* %127 to %struct.reiserfs_de_head*
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* @DEH_SIZE, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %134 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %133, i32 0, i32 2
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @leaf_paste_entries(%struct.buffer_info* %17, i32 %123, i64 %126, i32 1, %struct.reiserfs_de_head* %128, i8* %132, i64 %137)
  br label %139

139:                                              ; preds = %110, %6
  %140 = load %struct.item_head*, %struct.item_head** %16, align 8
  %141 = call i64 @is_indirect_le_ih(%struct.item_head* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load %struct.item_head*, %struct.item_head** %16, align 8
  %145 = call i32 @set_ih_free_space(%struct.item_head* %144, i32 0)
  br label %146

146:                                              ; preds = %143, %139
  %147 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %148 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %147, i32 0, i32 2
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  store i64 0, i64* %150, align 8
  %151 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %152 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %151, i32 0, i32 4
  store i64 0, i64* %152, align 8
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @leaf_move_items(i32, %struct.tree_balance*, i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @RFALSE(i32, i8*, i32) #1

declare dso_local i32 @buffer_info_init_bh(%struct.tree_balance*, %struct.buffer_info*, %struct.buffer_head*) #1

declare dso_local i32 @leaf_paste_in_buffer(%struct.buffer_info*, i32, i64, i64, i8*, i64) #1

declare dso_local %struct.item_head* @item_head(%struct.buffer_head*, i32) #1

declare dso_local i64 @is_direntry_le_ih(%struct.item_head*) #1

declare dso_local i32 @leaf_paste_entries(%struct.buffer_info*, i32, i64, i32, %struct.reiserfs_de_head*, i8*, i64) #1

declare dso_local i64 @is_indirect_le_ih(%struct.item_head*) #1

declare dso_local i32 @set_ih_free_space(%struct.item_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
