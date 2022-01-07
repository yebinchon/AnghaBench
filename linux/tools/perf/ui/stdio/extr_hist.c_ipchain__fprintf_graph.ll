; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/stdio/extr_hist.c_ipchain__fprintf_graph.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/stdio/extr_hist.c_ipchain__fprintf_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.callchain_node = type { i32 }
%struct.callchain_list = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Not enough memory!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.callchain_node*, %struct.callchain_list*, i32, i32, i32, i32, i32)* @ipchain__fprintf_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ipchain__fprintf_graph(i32* %0, %struct.callchain_node* %1, %struct.callchain_list* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.callchain_node*, align 8
  %11 = alloca %struct.callchain_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca [1024 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca [64 x i8], align 16
  %22 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.callchain_node* %1, %struct.callchain_node** %10, align 8
  store %struct.callchain_list* %2, %struct.callchain_list** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i64 0, i64* %18, align 8
  store i8* null, i8** %20, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %16, align 4
  %25 = call i64 @callchain__fprintf_left_margin(i32* %23, i32 %24)
  %26 = load i64, i64* %18, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %18, align 8
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %77, %8
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %80

32:                                               ; preds = %28
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %17, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = load i64, i64* %18, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %18, align 8
  br label %48

43:                                               ; preds = %32
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i64, i64* %18, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %18, align 8
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load i32*, i32** %9, align 8
  %58 = call i64 (i32*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i64, i64* %18, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %18, align 8
  %61 = load %struct.callchain_node*, %struct.callchain_node** %10, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i64 @callchain_node__fprintf_value(%struct.callchain_node* %61, i32* %62, i32 %63)
  %65 = load i64, i64* %18, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %18, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = call i64 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i64, i64* %18, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %18, align 8
  br label %76

71:                                               ; preds = %51, %48
  %72 = load i32*, i32** %9, align 8
  %73 = call i64 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i64, i64* %18, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %18, align 8
  br label %76

76:                                               ; preds = %71, %56
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %17, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %17, align 4
  br label %28

80:                                               ; preds = %28
  %81 = load %struct.callchain_list*, %struct.callchain_list** %11, align 8
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %83 = call i8* @callchain_list__sym_name(%struct.callchain_list* %81, i8* %82, i32 1024, i32 0)
  store i8* %83, i8** %22, align 8
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load %struct.callchain_list*, %struct.callchain_list** %11, align 8
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %89 = call i32 @callchain_list_counts__printf_value(%struct.callchain_list* %87, i32* null, i8* %88, i32 64)
  %90 = load i8*, i8** %22, align 8
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %92 = call i64 @asprintf(i8** %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %90, i8* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %22, align 8
  br label %97

95:                                               ; preds = %86
  %96 = load i8*, i8** %20, align 8
  store i8* %96, i8** %22, align 8
  br label %97

97:                                               ; preds = %95, %94
  br label %98

98:                                               ; preds = %97, %80
  %99 = load i8*, i8** %22, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @fputs(i8* %99, i32* %100)
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @fputc(i8 signext 10, i32* %102)
  %104 = load i8*, i8** %20, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i64, i64* %18, align 8
  ret i64 %106
}

declare dso_local i64 @callchain__fprintf_left_margin(i32*, i32) #1

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @callchain_node__fprintf_value(%struct.callchain_node*, i32*, i32) #1

declare dso_local i8* @callchain_list__sym_name(%struct.callchain_list*, i8*, i32, i32) #1

declare dso_local i32 @callchain_list_counts__printf_value(%struct.callchain_list*, i32*, i8*, i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
