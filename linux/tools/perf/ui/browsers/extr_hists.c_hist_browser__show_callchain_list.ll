; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__show_callchain_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__show_callchain_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.hist_browser = type { i32 }
%struct.callchain_node = type { i32 }
%struct.callchain_list = type { i32 }
%struct.callchain_print_arg = type { i64 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Not enough memory!\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*, %struct.callchain_node*, %struct.callchain_list*, i16, i32, i32, i32, i32 (%struct.hist_browser*, %struct.callchain_list*, i8*, i32, i16, %struct.callchain_print_arg*)*, %struct.callchain_print_arg*)* @hist_browser__show_callchain_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_browser__show_callchain_list(%struct.hist_browser* %0, %struct.callchain_node* %1, %struct.callchain_list* %2, i16 zeroext %3, i32 %4, i32 %5, i32 %6, i32 (%struct.hist_browser*, %struct.callchain_list*, i8*, i32, i16, %struct.callchain_print_arg*)* %7, %struct.callchain_print_arg* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.hist_browser*, align 8
  %12 = alloca %struct.callchain_node*, align 8
  %13 = alloca %struct.callchain_list*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32 (%struct.hist_browser*, %struct.callchain_list*, i8*, i32, i16, %struct.callchain_print_arg*)*, align 8
  %19 = alloca %struct.callchain_print_arg*, align 8
  %20 = alloca [1024 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca [64 x i8], align 16
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store %struct.hist_browser* %0, %struct.hist_browser** %11, align 8
  store %struct.callchain_node* %1, %struct.callchain_node** %12, align 8
  store %struct.callchain_list* %2, %struct.callchain_list** %13, align 8
  store i16 %3, i16* %14, align 2
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 (%struct.hist_browser*, %struct.callchain_list*, i8*, i32, i16, %struct.callchain_print_arg*)* %7, i32 (%struct.hist_browser*, %struct.callchain_list*, i8*, i32, i16, %struct.callchain_print_arg*)** %18, align 8
  store %struct.callchain_print_arg* %8, %struct.callchain_print_arg** %19, align 8
  store i32 1, i32* %25, align 4
  %26 = load %struct.callchain_print_arg*, %struct.callchain_print_arg** %19, align 8
  %27 = getelementptr inbounds %struct.callchain_print_arg, %struct.callchain_print_arg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %9
  %31 = load %struct.callchain_print_arg*, %struct.callchain_print_arg** %19, align 8
  %32 = getelementptr inbounds %struct.callchain_print_arg, %struct.callchain_print_arg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  store i32 0, i32* %10, align 4
  br label %86

35:                                               ; preds = %9
  store i8* null, i8** %21, align 8
  store i8* null, i8** %23, align 8
  %36 = load %struct.callchain_list*, %struct.callchain_list** %13, align 8
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %38 = load %struct.hist_browser*, %struct.hist_browser** %11, align 8
  %39 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @callchain_list__sym_name(%struct.callchain_list* %36, i8* %37, i32 1024, i32 %40)
  store i8* %41, i8** %24, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %35
  %45 = load %struct.callchain_list*, %struct.callchain_list** %13, align 8
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %47 = call i32 @callchain_list_counts__printf_value(%struct.callchain_list* %45, i32* null, i8* %46, i32 64)
  %48 = load i8*, i8** %24, align 8
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %50 = call i64 @asprintf(i8** %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  br label %55

53:                                               ; preds = %44
  %54 = load i8*, i8** %23, align 8
  store i8* %54, i8** %24, align 8
  br label %55

55:                                               ; preds = %53, %52
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.callchain_node*, %struct.callchain_node** %12, align 8
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @callchain_node__scnprintf_value(%struct.callchain_node* %60, i8* %61, i32 64, i32 %62)
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %65 = load i8*, i8** %24, align 8
  %66 = call i64 @asprintf(i8** %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %64, i8* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  br label %71

69:                                               ; preds = %59
  %70 = load i8*, i8** %21, align 8
  store i8* %70, i8** %24, align 8
  br label %71

71:                                               ; preds = %69, %68
  br label %72

72:                                               ; preds = %71, %56
  %73 = load i32 (%struct.hist_browser*, %struct.callchain_list*, i8*, i32, i16, %struct.callchain_print_arg*)*, i32 (%struct.hist_browser*, %struct.callchain_list*, i8*, i32, i16, %struct.callchain_print_arg*)** %18, align 8
  %74 = load %struct.hist_browser*, %struct.hist_browser** %11, align 8
  %75 = load %struct.callchain_list*, %struct.callchain_list** %13, align 8
  %76 = load i8*, i8** %24, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i16, i16* %14, align 2
  %79 = load %struct.callchain_print_arg*, %struct.callchain_print_arg** %19, align 8
  %80 = call i32 %73(%struct.hist_browser* %74, %struct.callchain_list* %75, i8* %76, i32 %77, i16 zeroext %78, %struct.callchain_print_arg* %79)
  %81 = load i8*, i8** %21, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i8*, i8** %23, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* %25, align 4
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %72, %30
  %87 = load i32, i32* %10, align 4
  ret i32 %87
}

declare dso_local i8* @callchain_list__sym_name(%struct.callchain_list*, i8*, i32, i32) #1

declare dso_local i32 @callchain_list_counts__printf_value(%struct.callchain_list*, i32*, i8*, i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @callchain_node__scnprintf_value(%struct.callchain_node*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
