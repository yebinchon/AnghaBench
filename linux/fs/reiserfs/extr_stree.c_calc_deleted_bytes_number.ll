; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_calc_deleted_bytes_number.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_calc_deleted_bytes_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32 }
%struct.item_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@M_DELETE = common dso_local global i8 0, align 1
@UNFM_P_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, i8)* @calc_deleted_bytes_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_deleted_bytes_number(%struct.tree_balance* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.item_head*, align 8
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %9 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.item_head* @tp_item_head(i32 %10)
  store %struct.item_head* %11, %struct.item_head** %7, align 8
  %12 = load %struct.item_head*, %struct.item_head** %7, align 8
  %13 = call i64 @is_statdata_le_ih(%struct.item_head* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load i8, i8* %5, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @M_DELETE, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.item_head*, %struct.item_head** %7, align 8
  %24 = call i32 @ih_item_len(%struct.item_head* %23)
  br label %32

25:                                               ; preds = %16
  %26 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %27 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 0, %30
  br label %32

32:                                               ; preds = %25, %22
  %33 = phi i32 [ %24, %22 ], [ %31, %25 ]
  store i32 %33, i32* %6, align 4
  %34 = load %struct.item_head*, %struct.item_head** %7, align 8
  %35 = call i64 @is_direntry_le_ih(%struct.item_head* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %56

39:                                               ; preds = %32
  %40 = load %struct.item_head*, %struct.item_head** %7, align 8
  %41 = call i64 @is_indirect_le_ih(%struct.item_head* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @UNFM_P_SIZE, align 4
  %46 = sdiv i32 %44, %45
  %47 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %48 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.TYPE_2__* @PATH_PLAST_BUFFER(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %46, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %43, %39
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %37, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.item_head* @tp_item_head(i32) #1

declare dso_local i64 @is_statdata_le_ih(%struct.item_head*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i64 @is_direntry_le_ih(%struct.item_head*) #1

declare dso_local i64 @is_indirect_le_ih(%struct.item_head*) #1

declare dso_local %struct.TYPE_2__* @PATH_PLAST_BUFFER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
