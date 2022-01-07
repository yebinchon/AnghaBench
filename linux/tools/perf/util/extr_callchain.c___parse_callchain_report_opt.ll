; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c___parse_callchain_report_opt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c___parse_callchain_report_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@callchain_param = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@symbol_conf = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@CHAIN_NONE = common dso_local global i32 0, align 4
@CALLCHAIN_DWARF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Can't register callchain params\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @__parse_callchain_report_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__parse_callchain_report_opt(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @callchain_param, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @symbol_conf, i32 0, i32 0), align 4
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %103

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %96, %16
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strtok_r(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i8* %19, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %97

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @CHAIN_NONE, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @callchain_param, i32 0, i32 5), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @callchain_param, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @symbol_conf, i32 0, i32 0), align 4
  store i32 0, i32* %3, align 4
  br label %103

29:                                               ; preds = %21
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @parse_callchain_mode(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @parse_callchain_order(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @parse_callchain_sort_key(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @parse_callchain_value(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %37, %33, %29
  store i32 0, i32* %11, align 4
  br label %96

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @parse_callchain_record(i8* %53, %struct.TYPE_6__* @callchain_param)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %65

57:                                               ; preds = %52
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @callchain_param, i32 0, i32 1), align 8
  %59 = load i64, i64* @CALLCHAIN_DWARF, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 1, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %57
  store i32 1, i32* %10, align 4
  br label %96

63:                                               ; preds = %49, %46
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64, %56
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  store i64 0, i64* %12, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i64 @get_stack_size(i8* %69, i64* %12)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %103

73:                                               ; preds = %68
  %74 = load i64, i64* %12, align 8
  store i64 %74, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @callchain_param, i32 0, i32 2), align 8
  store i32 0, i32* %11, align 4
  br label %95

75:                                               ; preds = %65
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @strtod(i8* %79, i8** %7)
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @callchain_param, i32 0, i32 4), align 4
  %81 = load i8*, i8** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = icmp eq i8* %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 -1, i32* %3, align 4
  br label %103

85:                                               ; preds = %78
  store i32 1, i32* %9, align 4
  br label %94

86:                                               ; preds = %75
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @strtoul(i8* %87, i8** %7, i32 0)
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @callchain_param, i32 0, i32 3), align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = icmp eq i8* %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 -1, i32* %3, align 4
  br label %103

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %85
  br label %95

95:                                               ; preds = %94, %73
  br label %96

96:                                               ; preds = %95, %62, %45
  store i8* null, i8** %4, align 8
  br label %17

97:                                               ; preds = %17
  %98 = call i64 @callchain_register_param(%struct.TYPE_6__* @callchain_param)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %103

102:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %100, %92, %84, %72, %27, %15
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @parse_callchain_mode(i8*) #1

declare dso_local i32 @parse_callchain_order(i8*) #1

declare dso_local i32 @parse_callchain_sort_key(i8*) #1

declare dso_local i32 @parse_callchain_value(i8*) #1

declare dso_local i64 @parse_callchain_record(i8*, %struct.TYPE_6__*) #1

declare dso_local i64 @get_stack_size(i8*, i64*) #1

declare dso_local i32 @strtod(i8*, i8**) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @callchain_register_param(%struct.TYPE_6__*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
