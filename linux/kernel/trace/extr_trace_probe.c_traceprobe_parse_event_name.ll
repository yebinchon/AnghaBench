; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_parse_event_name.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_parse_event_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_GROUP_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_EVENT_NAME_LEN = common dso_local global i32 0, align 4
@GROUP_TOO_LONG = common dso_local global i32 0, align 4
@BAD_GROUP_NAME = common dso_local global i32 0, align 4
@NO_EVENT_NAME = common dso_local global i32 0, align 4
@EVENT_TOO_LONG = common dso_local global i32 0, align 4
@BAD_EVENT_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @traceprobe_parse_event_name(i8** %0, i8** %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 47)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %83

19:                                               ; preds = %4
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @NO_GROUP_NAME, align 4
  %26 = call i32 @trace_probe_log_err(i32 %24, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %116

29:                                               ; preds = %19
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = add nsw i64 %34, 1
  %36 = load i32, i32* @MAX_EVENT_NAME_LEN, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp sgt i64 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @GROUP_TOO_LONG, align 4
  %42 = call i32 @trace_probe_log_err(i32 %40, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %116

45:                                               ; preds = %29
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = add nsw i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = call i32 @strlcpy(i8* %46, i8* %47, i32 %54)
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @is_good_name(i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @BAD_GROUP_NAME, align 4
  %62 = call i32 @trace_probe_log_err(i32 %60, i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %116

65:                                               ; preds = %45
  %66 = load i8*, i8** %8, align 8
  %67 = load i8**, i8*** %7, align 8
  store i8* %66, i8** %67, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8**, i8*** %6, align 8
  store i8* %69, i8** %70, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = add nsw i64 %75, 1
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  %81 = load i8**, i8*** %6, align 8
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %11, align 8
  br label %83

83:                                               ; preds = %65, %4
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @strlen(i8* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @NO_EVENT_NAME, align 4
  %91 = call i32 @trace_probe_log_err(i32 %89, i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %116

94:                                               ; preds = %83
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @MAX_EVENT_NAME_LEN, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @EVENT_TOO_LONG, align 4
  %101 = call i32 @trace_probe_log_err(i32 %99, i32 %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %116

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @is_good_name(i8* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @BAD_EVENT_NAME, align 4
  %112 = call i32 @trace_probe_log_err(i32 %110, i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %116

115:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %109, %98, %88, %59, %39, %23
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @trace_probe_log_err(i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @is_good_name(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
