; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_gtktree_iter_find_node.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_gtktree_iter_find_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i32 }

@model2 = common dso_local global i32 0, align 4
@found = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.menu*)* @gtktree_iter_find_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gtktree_iter_find_node(i32* %0, %struct.menu* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.menu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.menu*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.menu* %1, %struct.menu** %5, align 8
  store i32* %6, i32** %7, align 8
  %11 = load i32, i32* @model2, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @gtk_tree_model_iter_children(i32 %11, i32* %12, i32* %13)
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %36, %2
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load i32, i32* @model2, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @gtk_tree_model_get(i32 %19, i32* %20, i32 6, %struct.menu** %10, i32 -1)
  %22 = load %struct.menu*, %struct.menu** %10, align 8
  %23 = load %struct.menu*, %struct.menu** %5, align 8
  %24 = icmp eq %struct.menu* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @memcpy(i32* @found, i32* %26, i32 4)
  store i32* @found, i32** %3, align 8
  br label %41

28:                                               ; preds = %18
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.menu*, %struct.menu** %5, align 8
  %31 = call i32* @gtktree_iter_find_node(i32* %29, %struct.menu* %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32*, i32** %9, align 8
  store i32* %35, i32** %3, align 8
  br label %41

36:                                               ; preds = %28
  %37 = load i32, i32* @model2, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @gtk_tree_model_iter_next(i32 %37, i32* %38)
  store i64 %39, i64* %8, align 8
  br label %15

40:                                               ; preds = %15
  store i32* null, i32** %3, align 8
  br label %41

41:                                               ; preds = %40, %34, %25
  %42 = load i32*, i32** %3, align 8
  ret i32* %42
}

declare dso_local i64 @gtk_tree_model_iter_children(i32, i32*, i32*) #1

declare dso_local i32 @gtk_tree_model_get(i32, i32*, i32, %struct.menu**, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @gtk_tree_model_iter_next(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
