; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_get_new_event_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_get_new_event_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strlist = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c".@\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"__return\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"snprintf() failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [170 x i8] c"Error: event \22%s\22 already exists.\0A Hint: Remove existing event by 'perf probe -d'\0A       or force duplicates by 'perf probe -f'\0A       or set 'force=yes' in BPF source.\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@MAX_EVENT_INDEX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Too many events are on the same function.\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"Internal error: \22%s\22 is an invalid event name.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, %struct.strlist*, i32, i32)* @get_new_event_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_new_event_name(i8* %0, i64 %1, i8* %2, %struct.strlist* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.strlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.strlist* %3, %struct.strlist** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 46
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %10, align 8
  br label %25

25:                                               ; preds = %22, %6
  %26 = load i8*, i8** %10, align 8
  %27 = call i8* @strdup(i8* %26)
  store i8* %27, i8** %17, align 8
  %28 = load i8*, i8** %17, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %123

33:                                               ; preds = %25
  %34 = load i8*, i8** %17, align 8
  %35 = call i8* @strpbrk(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %16, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i8*, i8** %16, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = icmp ne i8* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i8*, i8** %16, align 8
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %42, %38, %33
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %52 = call i32 (i8*, i64, i8*, i8*, ...) @e_snprintf(i8* %45, i64 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %47, i8* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  br label %107

58:                                               ; preds = %44
  %59 = load %struct.strlist*, %struct.strlist** %11, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @strlist__has_entry(%struct.strlist* %59, i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %107

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @EEXIST, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %15, align 4
  br label %107

72:                                               ; preds = %64
  store i32 1, i32* %14, align 4
  br label %73

73:                                               ; preds = %95, %72
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @MAX_EVENT_INDEX, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 (i8*, i64, i8*, i8*, ...) @e_snprintf(i8* %78, i64 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %80, i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %107

88:                                               ; preds = %77
  %89 = load %struct.strlist*, %struct.strlist** %11, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @strlist__has_entry(%struct.strlist* %89, i8* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %98

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %73

98:                                               ; preds = %93, %73
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @MAX_EVENT_INDEX, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %104 = load i32, i32* @ERANGE, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %85, %67, %63, %55
  %108 = load i8*, i8** %17, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load i32, i32* %15, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @is_c_func_name(i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %116, %112, %107
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %121, %30
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @e_snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @strlist__has_entry(%struct.strlist*, i8*) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @is_c_func_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
