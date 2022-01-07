; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_formats_error_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_formats_error_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__PARSE_EVENTS__TERM_TYPE_NR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"valid terms: %s,%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"valid terms: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_events_formats_error_string(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @__PARSE_EVENTS__TERM_TYPE_NR, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 12
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = trunc i64 %10 to i32
  %14 = call i32 @config_terms_list(i8* %12, i32 %13)
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 (i8**, i8*, i8*, ...) @asprintf(i8** %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %12)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %30

22:                                               ; preds = %17
  br label %28

23:                                               ; preds = %1
  %24 = call i64 (i8**, i8*, i8*, ...) @asprintf(i8** %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %30

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** %2, align 8
  store i32 1, i32* %7, align 4
  br label %31

30:                                               ; preds = %26, %21
  store i8* null, i8** %2, align 8
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %28
  %32 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %32)
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @config_terms_list(i8*, i32) #2

declare dso_local i64 @asprintf(i8**, i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
