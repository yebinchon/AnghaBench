; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_paste_left_whole.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_paste_left_whole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32, i32, i32*, i32, i32*, i32, i32*, i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.buffer_info = type { i32 }
%struct.reiserfs_de_head = type { i32 }

@DEH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*)* @balance_leaf_paste_left_whole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_paste_left_whole(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca %struct.item_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_info, align 4
  %10 = alloca %struct.item_head*, align 8
  %11 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store %struct.item_head* %1, %struct.item_head** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %13 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %14)
  store %struct.buffer_head* %15, %struct.buffer_head** %7, align 8
  %16 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %17 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @B_NR_ITEMS(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %23 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %65, label %26

26:                                               ; preds = %3
  %27 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %28 = call i32 @leaf_key(%struct.buffer_head* %27, i32 0)
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @op_is_left_mergeable(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %26
  %35 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %36 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call %struct.item_head* @item_head(i32 %39, i32 %41)
  store %struct.item_head* %42, %struct.item_head** %10, align 8
  %43 = load %struct.item_head*, %struct.item_head** %10, align 8
  %44 = call i64 @is_direntry_le_ih(%struct.item_head* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load %struct.item_head*, %struct.item_head** %10, align 8
  %48 = call i64 @ih_entry_count(%struct.item_head* %47)
  %49 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %50 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  br label %64

55:                                               ; preds = %34
  %56 = load %struct.item_head*, %struct.item_head** %10, align 8
  %57 = call i64 @ih_item_len(%struct.item_head* %56)
  %58 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %59 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 8
  br label %64

64:                                               ; preds = %55, %46
  br label %65

65:                                               ; preds = %64, %26, %3
  %66 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %67 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %68 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %73 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @leaf_shift_left(%struct.tree_balance* %66, i32 %71, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %77 = call i32 @buffer_info_init_left(%struct.tree_balance* %76, %struct.buffer_info* %9)
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %80 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %78, %81
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %86 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %89 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %95 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @leaf_paste_in_buffer(%struct.buffer_info* %9, i32 %84, i32 %87, i32 %92, i8* %93, i32 %96)
  %98 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %99 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %105 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %103, %106
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %107, %108
  %110 = call %struct.item_head* @item_head(i32 %102, i32 %109)
  store %struct.item_head* %110, %struct.item_head** %10, align 8
  %111 = load %struct.item_head*, %struct.item_head** %10, align 8
  %112 = call i64 @is_direntry_le_ih(%struct.item_head* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %65
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %117 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %115, %118
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %119, %120
  %122 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %123 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = bitcast i8* %125 to %struct.reiserfs_de_head*
  %127 = load i8*, i8** %6, align 8
  %128 = load i32, i32* @DEH_SIZE, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %132 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @leaf_paste_entries(%struct.buffer_info* %9, i32 %121, i32 %124, i32 1, %struct.reiserfs_de_head* %126, i8* %130, i32 %135)
  br label %137

137:                                              ; preds = %114, %65
  %138 = load %struct.item_head*, %struct.item_head** %10, align 8
  %139 = call i64 @is_indirect_le_ih(%struct.item_head* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load %struct.item_head*, %struct.item_head** %10, align 8
  %143 = call i32 @set_ih_free_space(%struct.item_head* %142, i32 0)
  br label %144

144:                                              ; preds = %141, %137
  %145 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %146 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 0, i32* %148, align 4
  %149 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %150 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %149, i32 0, i32 1
  store i32 0, i32* %150, align 4
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local i32 @B_NR_ITEMS(i32) #1

declare dso_local i64 @op_is_left_mergeable(i32, i32) #1

declare dso_local i32 @leaf_key(%struct.buffer_head*, i32) #1

declare dso_local %struct.item_head* @item_head(i32, i32) #1

declare dso_local i64 @is_direntry_le_ih(%struct.item_head*) #1

declare dso_local i64 @ih_entry_count(%struct.item_head*) #1

declare dso_local i64 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @leaf_shift_left(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @buffer_info_init_left(%struct.tree_balance*, %struct.buffer_info*) #1

declare dso_local i32 @leaf_paste_in_buffer(%struct.buffer_info*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @leaf_paste_entries(%struct.buffer_info*, i32, i32, i32, %struct.reiserfs_de_head*, i8*, i32) #1

declare dso_local i64 @is_indirect_le_ih(%struct.item_head*) #1

declare dso_local i32 @set_ih_free_space(%struct.item_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
