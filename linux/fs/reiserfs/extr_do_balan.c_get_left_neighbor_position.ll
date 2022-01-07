; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_get_left_neighbor_position.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_get_left_neighbor_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32**, i32 }

@.str = private unnamed_addr constant [49 x i8] c"vs-12325: FL[%d](%p) or F[%d](%p) does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_left_neighbor_position(%struct.tree_balance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %8 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i32 @PATH_H_POSITION(i32 %9, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %14 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @PATH_H_PPARENT(i32 %15, i32 %16)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %21 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br label %28

28:                                               ; preds = %19, %2
  %29 = phi i1 [ true, %2 ], [ %27, %19 ]
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %33 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %41 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32* @PATH_H_PPARENT(i32 %42, i32 %43)
  %45 = call i32 @RFALSE(i32 %30, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %31, i32* %38, i32 %39, i32* %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %28
  %49 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %50 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @B_NR_ITEMS(i32* %55)
  store i32 %56, i32* %3, align 4
  br label %60

57:                                               ; preds = %28
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %48
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @PATH_H_POSITION(i32, i32) #1

declare dso_local i32 @RFALSE(i32, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32* @PATH_H_PPARENT(i32, i32) #1

declare dso_local i32 @B_NR_ITEMS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
