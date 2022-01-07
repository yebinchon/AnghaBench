; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_find_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_find_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32, %struct.tep_event** }
%struct.tep_event = type { i32 }
%struct.event_list = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"^%s$\00", align 1
@TEP_ERRNO__MEM_ALLOC_FAILED = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@TEP_ERRNO__INVALID_EVENT_NAME = common dso_local global i32 0, align 4
@TEP_ERRNO__EVENT_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_handle*, %struct.event_list**, i8*, i8*)* @find_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_event(%struct.tep_handle* %0, %struct.event_list** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_handle*, align 8
  %7 = alloca %struct.event_list**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tep_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.tep_handle* %0, %struct.tep_handle** %6, align 8
  store %struct.event_list** %1, %struct.event_list*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %9, align 8
  store i8* null, i8** %8, align 8
  br label %22

22:                                               ; preds = %20, %4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @asprintf(i8** %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @TEP_ERRNO__MEM_ALLOC_FAILED, align 4
  store i32 %28, i32* %5, align 4
  br label %118

29:                                               ; preds = %22
  %30 = load i8*, i8** %15, align 8
  %31 = load i32, i32* @REG_ICASE, align 4
  %32 = load i32, i32* @REG_NOSUB, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @regcomp(i32* %11, i8* %30, i32 %33)
  store i32 %34, i32* %16, align 4
  %35 = load i8*, i8** %15, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @TEP_ERRNO__INVALID_EVENT_NAME, align 4
  store i32 %40, i32* %5, align 4
  br label %118

41:                                               ; preds = %29
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @asprintf(i8** %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = call i32 @regfree(i32* %11)
  %51 = load i32, i32* @TEP_ERRNO__MEM_ALLOC_FAILED, align 4
  store i32 %51, i32* %5, align 4
  br label %118

52:                                               ; preds = %44
  %53 = load i8*, i8** %15, align 8
  %54 = load i32, i32* @REG_ICASE, align 4
  %55 = load i32, i32* @REG_NOSUB, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @regcomp(i32* %12, i8* %53, i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = load i8*, i8** %15, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = call i32 @regfree(i32* %11)
  %64 = load i32, i32* @TEP_ERRNO__INVALID_EVENT_NAME, align 4
  store i32 %64, i32* %5, align 4
  br label %118

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %41
  store i32 0, i32* %17, align 4
  br label %67

67:                                               ; preds = %98, %66
  %68 = load i32, i32* %17, align 4
  %69 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %70 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %67
  %74 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %75 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %74, i32 0, i32 1
  %76 = load %struct.tep_event**, %struct.tep_event*** %75, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.tep_event*, %struct.tep_event** %76, i64 %78
  %80 = load %struct.tep_event*, %struct.tep_event** %79, align 8
  store %struct.tep_event* %80, %struct.tep_event** %10, align 8
  %81 = load %struct.tep_event*, %struct.tep_event** %10, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %86

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %84
  %87 = phi i32* [ %12, %84 ], [ null, %85 ]
  %88 = call i64 @event_match(%struct.tep_event* %81, i32* %87, i32* %11)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  store i32 1, i32* %13, align 4
  %91 = load %struct.event_list**, %struct.event_list*** %7, align 8
  %92 = load %struct.tep_event*, %struct.tep_event** %10, align 8
  %93 = call i64 @add_event(%struct.event_list** %91, %struct.tep_event* %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 1, i32* %14, align 4
  br label %101

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %86
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %17, align 4
  br label %67

101:                                              ; preds = %95, %67
  %102 = call i32 @regfree(i32* %11)
  %103 = load i8*, i8** %8, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 @regfree(i32* %12)
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @TEP_ERRNO__EVENT_NOT_FOUND, align 4
  store i32 %111, i32* %5, align 4
  br label %118

112:                                              ; preds = %107
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @TEP_ERRNO__MEM_ALLOC_FAILED, align 4
  store i32 %116, i32* %5, align 4
  br label %118

117:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %115, %110, %62, %49, %39, %27
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i64 @event_match(%struct.tep_event*, i32*, i32*) #1

declare dso_local i64 @add_event(%struct.event_list**, %struct.tep_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
