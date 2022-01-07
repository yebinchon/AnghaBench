; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SRCTREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"/scripts/kconfig/gconf.glade\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c".glade\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s [-s] <config>\0A\00", align 1
@rootmenu = common dso_local global i32 0, align 4
@view_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (...) @gtk_set_locale()
  %10 = call i32 @gtk_init(i32* %4, i8*** %5)
  %11 = call i32 (...) @glade_init()
  %12 = load i32, i32* @SRCTREE, align 4
  %13 = call i8* @getenv(i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %7, align 8
  %18 = call i32* (i8*, i8*, i8*, ...) @g_strconcat(i8* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* null)
  store i32* %18, i32** %8, align 8
  br label %41

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32* (i8*, i8*, i8*, ...) @g_strconcat(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* null)
  store i32* %31, i32** %8, align 8
  br label %40

32:                                               ; preds = %19
  %33 = call i32 (...) @g_get_current_dir()
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32* (i8*, i8*, i8*, ...) @g_strconcat(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* null)
  store i32* %39, i32** %8, align 8
  br label %40

40:                                               ; preds = %32, %27
  br label %41

41:                                               ; preds = %40, %16
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %72

44:                                               ; preds = %41
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 45
  br i1 %51, label %52, label %72

52:                                               ; preds = %44
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  switch i32 %58, label %68 [
    i32 97, label %59
    i32 115, label %60
    i32 104, label %62
    i32 63, label %62
  ]

59:                                               ; preds = %52
  br label %68

60:                                               ; preds = %52
  %61 = call i32 @conf_set_message_callback(i32* null)
  br label %68

62:                                               ; preds = %52, %52
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  %67 = call i32 @exit(i32 0) #3
  unreachable

68:                                               ; preds = %52, %60, %59
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %6, align 8
  br label %76

72:                                               ; preds = %44, %41
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %6, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @conf_parse(i8* %77)
  %79 = call i32 @fixup_rootmenu(i32* @rootmenu)
  %80 = call i32 @conf_read(i32* null)
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @init_main_window(i32* %81)
  %83 = call i32 (...) @init_tree_model()
  %84 = call i32 (...) @init_left_tree()
  %85 = call i32 (...) @init_right_tree()
  %86 = load i32, i32* @view_mode, align 4
  switch i32 %86, label %93 [
    i32 129, label %87
    i32 128, label %89
    i32 130, label %91
  ]

87:                                               ; preds = %76
  %88 = call i32 (...) @display_tree_part()
  br label %93

89:                                               ; preds = %76
  %90 = call i32 (...) @display_list()
  br label %93

91:                                               ; preds = %76
  %92 = call i32 @display_tree(i32* @rootmenu)
  br label %93

93:                                               ; preds = %76, %91, %89, %87
  %94 = call i32 (...) @gtk_main()
  ret i32 0
}

declare dso_local i32 @gtk_set_locale(...) #1

declare dso_local i32 @gtk_init(i32*, i8***) #1

declare dso_local i32 @glade_init(...) #1

declare dso_local i8* @getenv(i32) #1

declare dso_local i32* @g_strconcat(i8*, i8*, i8*, ...) #1

declare dso_local i32 @g_get_current_dir(...) #1

declare dso_local i32 @conf_set_message_callback(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @conf_parse(i8*) #1

declare dso_local i32 @fixup_rootmenu(i32*) #1

declare dso_local i32 @conf_read(i32*) #1

declare dso_local i32 @init_main_window(i32*) #1

declare dso_local i32 @init_tree_model(...) #1

declare dso_local i32 @init_left_tree(...) #1

declare dso_local i32 @init_right_tree(...) #1

declare dso_local i32 @display_tree_part(...) #1

declare dso_local i32 @display_list(...) #1

declare dso_local i32 @display_tree(i32*) #1

declare dso_local i32 @gtk_main(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
