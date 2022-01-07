; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_init_left_tree.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_init_left_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree1_w = common dso_local global i32 0, align 4
@model1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Options\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@COL_BTNACT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"inconsistent\00", align 1
@COL_BTNINC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@COL_BTNVIS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@COL_BTNRAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@COL_OPTION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"foreground-gdk\00", align 1
@COL_COLOR = common dso_local global i32 0, align 4
@GTK_SELECTION_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_left_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_left_tree() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @tree1_w, align 4
  %6 = call i32* @GTK_TREE_VIEW(i32 %5)
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = load i32, i32* @model1, align 4
  %9 = call i32 @gtk_tree_view_set_model(i32* %7, i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @TRUE, align 4
  %12 = call i32 @gtk_tree_view_set_headers_visible(i32* %10, i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* @TRUE, align 4
  %15 = call i32 @gtk_tree_view_set_rules_hint(i32* %13, i32 %14)
  %16 = call i32* (...) @gtk_tree_view_column_new()
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @gtk_tree_view_append_column(i32* %17, i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @gtk_tree_view_column_set_title(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = call i32* (...) @gtk_cell_renderer_toggle_new()
  store i32* %22, i32** %2, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @GTK_TREE_VIEW_COLUMN(i32* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @gtk_tree_view_column_pack_start(i32 %24, i32* %25, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @GTK_TREE_VIEW_COLUMN(i32* %28)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @COL_BTNACT, align 4
  %32 = load i32, i32* @COL_BTNINC, align 4
  %33 = load i32, i32* @COL_BTNVIS, align 4
  %34 = load i32, i32* @COL_BTNRAD, align 4
  %35 = call i32 (i32, i32*, i8*, i32, i8*, i32, i8*, ...) @gtk_tree_view_column_set_attributes(i32 %29, i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %34, i8* null)
  %36 = call i32* (...) @gtk_cell_renderer_text_new()
  store i32* %36, i32** %2, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @GTK_TREE_VIEW_COLUMN(i32* %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @gtk_tree_view_column_pack_start(i32 %38, i32* %39, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @GTK_TREE_VIEW_COLUMN(i32* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @COL_OPTION, align 4
  %46 = load i32, i32* @COL_COLOR, align 4
  %47 = call i32 (i32, i32*, i8*, i32, i8*, i32, i8*, ...) @gtk_tree_view_column_set_attributes(i32 %43, i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %46, i8* null)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32* @gtk_tree_view_get_selection(i32* %48)
  store i32* %49, i32** %3, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @GTK_SELECTION_SINGLE, align 4
  %52 = call i32 @gtk_tree_selection_set_mode(i32* %50, i32 %51)
  %53 = load i32, i32* @tree1_w, align 4
  %54 = call i32 @gtk_widget_realize(i32 %53)
  ret void
}

declare dso_local i32* @GTK_TREE_VIEW(i32) #1

declare dso_local i32 @gtk_tree_view_set_model(i32*, i32) #1

declare dso_local i32 @gtk_tree_view_set_headers_visible(i32*, i32) #1

declare dso_local i32 @gtk_tree_view_set_rules_hint(i32*, i32) #1

declare dso_local i32* @gtk_tree_view_column_new(...) #1

declare dso_local i32 @gtk_tree_view_append_column(i32*, i32*) #1

declare dso_local i32 @gtk_tree_view_column_set_title(i32*, i8*) #1

declare dso_local i32* @gtk_cell_renderer_toggle_new(...) #1

declare dso_local i32 @gtk_tree_view_column_pack_start(i32, i32*, i32) #1

declare dso_local i32 @GTK_TREE_VIEW_COLUMN(i32*) #1

declare dso_local i32 @gtk_tree_view_column_set_attributes(i32, i32*, i8*, i32, i8*, i32, i8*, ...) #1

declare dso_local i32* @gtk_cell_renderer_text_new(...) #1

declare dso_local i32* @gtk_tree_view_get_selection(i32*) #1

declare dso_local i32 @gtk_tree_selection_set_mode(i32*, i32) #1

declare dso_local i32 @gtk_widget_realize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
