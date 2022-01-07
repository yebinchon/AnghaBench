; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_lbalance.c_leaf_delete_items.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_lbalance.c_leaf_delete_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_info = type { i32, %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.item_head = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"10155: bh is not defined\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"10160: del_num can not be < 0. del_num==%d\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"10165: invalid number of first item to be deleted (%d) or no so much items (%d) to delete (only %d)\00", align 1
@FIRST_TO_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @leaf_delete_items(%struct.buffer_info* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.buffer_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.item_head*, align 8
  %14 = alloca i32, align 4
  store %struct.buffer_info* %0, %struct.buffer_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %16 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %15, i32 0, i32 1
  %17 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  store %struct.buffer_head* %17, %struct.buffer_head** %11, align 8
  %18 = call i32 @B_NR_ITEMS(%struct.buffer_head* %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %20 = icmp ne %struct.buffer_head* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @RFALSE(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i32, i8*, ...) @RFALSE(i32 %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %34, %35
  br label %37

37:                                               ; preds = %31, %5
  %38 = phi i1 [ true, %5 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %12, align 4
  %45 = call i32 (i32, i8*, ...) @RFALSE(i32 %39, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %120

49:                                               ; preds = %37
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %61 = call i32 @make_empty_node(%struct.buffer_info* %60)
  %62 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %63 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %66 = call i32 @do_balance_mark_leaf_dirty(i32 %64, %struct.buffer_head* %65, i32 0)
  br label %120

67:                                               ; preds = %56, %52, %49
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @leaf_delete_items_entirely(%struct.buffer_info* %71, i32 %72, i32 %73)
  br label %120

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @FIRST_TO_LAST, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 1
  %84 = call i32 @leaf_delete_items_entirely(%struct.buffer_info* %80, i32 %81, i32 %83)
  %85 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @leaf_cut_from_buffer(%struct.buffer_info* %85, i32 0, i32 0, i32 %86)
  br label %119

88:                                               ; preds = %75
  %89 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @leaf_delete_items_entirely(%struct.buffer_info* %89, i32 %91, i32 %93)
  %95 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %96 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %97 = call i32 @B_NR_ITEMS(%struct.buffer_head* %96)
  %98 = sub nsw i32 %97, 1
  %99 = call %struct.item_head* @item_head(%struct.buffer_head* %95, i32 %98)
  store %struct.item_head* %99, %struct.item_head** %13, align 8
  %100 = load %struct.item_head*, %struct.item_head** %13, align 8
  %101 = call i64 @is_direntry_le_ih(%struct.item_head* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %88
  %104 = load %struct.item_head*, %struct.item_head** %13, align 8
  %105 = call i32 @ih_entry_count(%struct.item_head* %104)
  store i32 %105, i32* %14, align 4
  br label %109

106:                                              ; preds = %88
  %107 = load %struct.item_head*, %struct.item_head** %13, align 8
  %108 = call i32 @ih_item_len(%struct.item_head* %107)
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.buffer_info*, %struct.buffer_info** %6, align 8
  %111 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %112 = call i32 @B_NR_ITEMS(%struct.buffer_head* %111)
  %113 = sub nsw i32 %112, 1
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @leaf_cut_from_buffer(%struct.buffer_info* %110, i32 %113, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %109, %79
  br label %120

120:                                              ; preds = %48, %59, %119, %70
  ret void
}

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i32 @make_empty_node(%struct.buffer_info*) #1

declare dso_local i32 @do_balance_mark_leaf_dirty(i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @leaf_delete_items_entirely(%struct.buffer_info*, i32, i32) #1

declare dso_local i32 @leaf_cut_from_buffer(%struct.buffer_info*, i32, i32, i32) #1

declare dso_local %struct.item_head* @item_head(%struct.buffer_head*, i32) #1

declare dso_local i64 @is_direntry_le_ih(%struct.item_head*) #1

declare dso_local i32 @ih_entry_count(%struct.item_head*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
