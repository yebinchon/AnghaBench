; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_init_tree_model.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_init_tree_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COL_NUMBER = common dso_local global i32 0, align 4
@G_TYPE_STRING = common dso_local global i32 0, align 4
@G_TYPE_POINTER = common dso_local global i32 0, align 4
@GDK_TYPE_COLOR = common dso_local global i32 0, align 4
@G_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@GDK_TYPE_PIXBUF = common dso_local global i32 0, align 4
@tree2 = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@model2 = common dso_local global i8* null, align 8
@parents = common dso_local global i32** null, align 8
@tree1 = common dso_local global i32 0, align 4
@model1 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_tree_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_tree_model() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @COL_NUMBER, align 4
  %3 = load i32, i32* @G_TYPE_STRING, align 4
  %4 = load i32, i32* @G_TYPE_STRING, align 4
  %5 = load i32, i32* @G_TYPE_STRING, align 4
  %6 = load i32, i32* @G_TYPE_STRING, align 4
  %7 = load i32, i32* @G_TYPE_STRING, align 4
  %8 = load i32, i32* @G_TYPE_STRING, align 4
  %9 = load i32, i32* @G_TYPE_POINTER, align 4
  %10 = load i32, i32* @GDK_TYPE_COLOR, align 4
  %11 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %12 = load i32, i32* @GDK_TYPE_PIXBUF, align 4
  %13 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %14 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %15 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %16 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %17 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %18 = call i32 @gtk_tree_store_new(i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* @tree2, align 4
  store i32 %18, i32* @tree, align 4
  %19 = load i32, i32* @tree2, align 4
  %20 = call i8* @GTK_TREE_MODEL(i32 %19)
  store i8* %20, i8** @model2, align 8
  %21 = load i32**, i32*** @parents, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  store i32* null, i32** %22, align 8
  store i32 1, i32* %1, align 4
  br label %23

23:                                               ; preds = %33, %0
  %24 = load i32, i32* %1, align 4
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = call i64 @g_malloc(i32 4)
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32**, i32*** @parents, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  store i32* %28, i32** %32, align 8
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %23

36:                                               ; preds = %23
  %37 = load i32, i32* @COL_NUMBER, align 4
  %38 = load i32, i32* @G_TYPE_STRING, align 4
  %39 = load i32, i32* @G_TYPE_STRING, align 4
  %40 = load i32, i32* @G_TYPE_STRING, align 4
  %41 = load i32, i32* @G_TYPE_STRING, align 4
  %42 = load i32, i32* @G_TYPE_STRING, align 4
  %43 = load i32, i32* @G_TYPE_STRING, align 4
  %44 = load i32, i32* @G_TYPE_POINTER, align 4
  %45 = load i32, i32* @GDK_TYPE_COLOR, align 4
  %46 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %47 = load i32, i32* @GDK_TYPE_PIXBUF, align 4
  %48 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %49 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %50 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %51 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %52 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %53 = call i32 @gtk_tree_store_new(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* @tree1, align 4
  %54 = load i32, i32* @tree1, align 4
  %55 = call i8* @GTK_TREE_MODEL(i32 %54)
  store i8* %55, i8** @model1, align 8
  ret void
}

declare dso_local i32 @gtk_tree_store_new(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @GTK_TREE_MODEL(i32) #1

declare dso_local i64 @g_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
