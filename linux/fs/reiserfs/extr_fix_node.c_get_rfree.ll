; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_get_rfree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_get_rfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32, %struct.buffer_head** }
%struct.buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, i32)* @get_rfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rfree(%struct.tree_balance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %10 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.buffer_head* @PATH_H_PPARENT(i32 %11, i32 %12)
  store %struct.buffer_head* %13, %struct.buffer_head** %7, align 8
  %14 = icmp eq %struct.buffer_head* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %17 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %16, i32 0, i32 1
  %18 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %18, i64 %20
  %22 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  store %struct.buffer_head* %22, %struct.buffer_head** %6, align 8
  %23 = icmp eq %struct.buffer_head* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %46

25:                                               ; preds = %15
  %26 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %28 = icmp eq %struct.buffer_head* %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %31 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @PATH_H_B_ITEM_ORDER(i32 %32, i32 %33)
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %38

36:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  %37 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %37, %struct.buffer_head** %7, align 8
  br label %38

38:                                               ; preds = %36, %29
  %39 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %40 = call i32 @MAX_CHILD_SIZE(%struct.buffer_head* %39)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @B_N_CHILD(%struct.buffer_head* %41, i32 %42)
  %44 = call i32 @dc_size(i32 %43)
  %45 = sub nsw i32 %40, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %38, %24
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.buffer_head* @PATH_H_PPARENT(i32, i32) #1

declare dso_local i32 @PATH_H_B_ITEM_ORDER(i32, i32) #1

declare dso_local i32 @MAX_CHILD_SIZE(%struct.buffer_head*) #1

declare dso_local i32 @dc_size(i32) #1

declare dso_local i32 @B_N_CHILD(%struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
