; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_check_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_check_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.item_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_leaf(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.item_head*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %5 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %6 = icmp ne %struct.buffer_head* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %10 = call i32 @check_leaf_block_head(%struct.buffer_head* %9)
  store i32 0, i32* %3, align 4
  %11 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %12 = call %struct.item_head* @item_head(%struct.buffer_head* %11, i32 0)
  store %struct.item_head* %12, %struct.item_head** %4, align 8
  br label %13

13:                                               ; preds = %24, %8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %16 = call i32 @B_NR_ITEMS(%struct.buffer_head* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.item_head*, %struct.item_head** %4, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %21 = load %struct.item_head*, %struct.item_head** %4, align 8
  %22 = call i32 @ih_item_body(%struct.buffer_head* %20, %struct.item_head* %21)
  %23 = call i32 @op_check_item(%struct.item_head* %19, i32 %22)
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = load %struct.item_head*, %struct.item_head** %4, align 8
  %28 = getelementptr inbounds %struct.item_head, %struct.item_head* %27, i32 1
  store %struct.item_head* %28, %struct.item_head** %4, align 8
  br label %13

29:                                               ; preds = %7, %13
  ret void
}

declare dso_local i32 @check_leaf_block_head(%struct.buffer_head*) #1

declare dso_local %struct.item_head* @item_head(%struct.buffer_head*, i32) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @op_check_item(%struct.item_head*, i32) #1

declare dso_local i32 @ih_item_body(%struct.buffer_head*, %struct.item_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
