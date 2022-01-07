; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_finish_node_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_finish_node_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i64*, i32, i32, i32 }
%struct.item_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.buffer_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.item_head*, i8*)* @balance_leaf_finish_node_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_leaf_finish_node_insert(%struct.tree_balance* %0, %struct.item_head* %1, i8* %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca %struct.item_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_info, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store %struct.item_head* %1, %struct.item_head** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %10 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %11)
  store %struct.buffer_head* %12, %struct.buffer_head** %7, align 8
  %13 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %14 = call i32 @buffer_info_init_tbS0(%struct.tree_balance* %13, %struct.buffer_info* %8)
  %15 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %16 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.item_head*, %struct.item_head** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %21 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @leaf_insert_into_buf(%struct.buffer_info* %8, i32 %17, %struct.item_head* %18, i8* %19, i32 %22)
  %24 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %25 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %3
  %29 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %30 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %37 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %38 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %43 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %48 = call i32 @replace_key(%struct.tree_balance* %36, i64 %41, i32 %46, %struct.buffer_head* %47, i32 0)
  br label %49

49:                                               ; preds = %35, %28
  br label %50

50:                                               ; preds = %49, %3
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local i32 @buffer_info_init_tbS0(%struct.tree_balance*, %struct.buffer_info*) #1

declare dso_local i32 @leaf_insert_into_buf(%struct.buffer_info*, i32, %struct.item_head*, i8*, i32) #1

declare dso_local i32 @replace_key(%struct.tree_balance*, i64, i32, %struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
