; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.c_search_conf.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.c_search_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.gstr = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"Enter (sub)string or regexp to search for (with or without \22%s\22)\00", align 1
@CONFIG_ = common dso_local global i32 0, align 4
@main_window = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Search Configuration Parameter\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dialog_input_result = common dso_local global i8* null, align 8
@dialog_input_result_len = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Search Configuration\00", align 1
@search_help = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Search Results\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @search_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_conf() #0 {
  %1 = alloca %struct.symbol**, align 8
  %2 = alloca %struct.gstr, align 4
  %3 = alloca %struct.gstr, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gstr, align 4
  %7 = alloca %struct.gstr, align 4
  %8 = call i32 (...) @str_new()
  %9 = getelementptr inbounds %struct.gstr, %struct.gstr* %6, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = bitcast %struct.gstr* %3 to i8*
  %11 = bitcast %struct.gstr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load i32, i32* @CONFIG_, align 4
  %13 = call i32 @str_printf(%struct.gstr* %3, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %20, %0
  %15 = load i32, i32* @main_window, align 4
  %16 = call i32 @str_get(%struct.gstr* %3)
  %17 = call i32 @dialog_inputbox(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** @dialog_input_result, i32* @dialog_input_result_len)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %24 [
    i32 0, label %19
    i32 1, label %20
  ]

19:                                               ; preds = %14
  br label %26

20:                                               ; preds = %14
  %21 = load i32, i32* @main_window, align 4
  %22 = load i32, i32* @search_help, align 4
  %23 = call i32 @show_scroll_win(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  br label %14

24:                                               ; preds = %14
  %25 = call i32 @str_free(%struct.gstr* %3)
  br label %55

26:                                               ; preds = %19
  %27 = load i8*, i8** @dialog_input_result, align 8
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** @dialog_input_result, align 8
  %29 = load i32, i32* @CONFIG_, align 4
  %30 = load i32, i32* @CONFIG_, align 4
  %31 = call i32 @strlen(i32 %30)
  %32 = call i64 @strncasecmp(i8* %28, i32 %29, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32, i32* @CONFIG_, align 4
  %36 = call i32 @strlen(i32 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %4, align 8
  br label %40

40:                                               ; preds = %34, %26
  %41 = load i8*, i8** %4, align 8
  %42 = call %struct.symbol** @sym_re_search(i8* %41)
  store %struct.symbol** %42, %struct.symbol*** %1, align 8
  %43 = load %struct.symbol**, %struct.symbol*** %1, align 8
  %44 = call i32 @get_relations_str(%struct.symbol** %43, i32* null)
  %45 = getelementptr inbounds %struct.gstr, %struct.gstr* %7, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = bitcast %struct.gstr* %2 to i8*
  %47 = bitcast %struct.gstr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = load %struct.symbol**, %struct.symbol*** %1, align 8
  %49 = call i32 @free(%struct.symbol** %48)
  %50 = load i32, i32* @main_window, align 4
  %51 = call i32 @str_get(%struct.gstr* %2)
  %52 = call i32 @show_scroll_win(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = call i32 @str_free(%struct.gstr* %2)
  %54 = call i32 @str_free(%struct.gstr* %3)
  br label %55

55:                                               ; preds = %40, %24
  ret void
}

declare dso_local i32 @str_new(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @str_printf(%struct.gstr*, i8*, i32) #1

declare dso_local i32 @dialog_inputbox(i32, i8*, i32, i8*, i8**, i32*) #1

declare dso_local i32 @str_get(%struct.gstr*) #1

declare dso_local i32 @show_scroll_win(i32, i8*, i32) #1

declare dso_local i32 @str_free(%struct.gstr*) #1

declare dso_local i64 @strncasecmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.symbol** @sym_re_search(i8*) #1

declare dso_local i32 @get_relations_str(%struct.symbol**, i32*) #1

declare dso_local i32 @free(%struct.symbol**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
