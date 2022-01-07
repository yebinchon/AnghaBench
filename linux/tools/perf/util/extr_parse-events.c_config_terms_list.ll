; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_config_terms_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_config_terms_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__PARSE_EVENTS__TERM_TYPE_NR = common dso_local global i32 0, align 4
@config_term_names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @config_terms_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_terms_list(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 1, i32* %6, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %9, align 1
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %57, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @__PARSE_EVENTS__TERM_TYPE_NR, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %60

14:                                               ; preds = %10
  %15 = load i8**, i8*** @config_term_names, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @config_term_avail(i32 %20, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %57

24:                                               ; preds = %14
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %57

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 60
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %57

35:                                               ; preds = %28
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = add nsw i32 %37, %39
  %41 = add nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %4, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %60

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strcat(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %53

52:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i8*, i8** %3, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @strcat(i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %53, %34, %27, %23
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %10

60:                                               ; preds = %45, %10
  ret void
}

declare dso_local i32 @config_term_avail(i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
