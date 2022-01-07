; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__folded_callchain_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__folded_callchain_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.hist_browser = type { i32 }
%struct.callchain_list = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hist_browser*, %struct.callchain_list*, i8*, i8*)* @hist_browser__folded_callchain_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hist_browser__folded_callchain_str(%struct.hist_browser* %0, %struct.callchain_list* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.hist_browser*, align 8
  %6 = alloca %struct.callchain_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %5, align 8
  store %struct.callchain_list* %1, %struct.callchain_list** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.callchain_list*, %struct.callchain_list** %6, align 8
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %14 = load %struct.hist_browser*, %struct.hist_browser** %5, align 8
  %15 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @callchain_list__sym_name(%struct.callchain_list* %12, i8* %13, i32 1024, i32 %16)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = inttoptr i64 %22 to i8*
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %26 ]
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 (i8**, i8*, i8*, ...) @asprintf(i8** %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %28, i8* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i8* null, i8** %11, align 8
  br label %33

33:                                               ; preds = %32, %27
  br label %51

34:                                               ; preds = %4
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 (i8**, i8*, i8*, ...) @asprintf(i8** %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %38, i8* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i8* null, i8** %11, align 8
  br label %43

43:                                               ; preds = %42, %37
  br label %50

44:                                               ; preds = %34
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 (i8**, i8*, i8*, ...) @asprintf(i8** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i8* null, i8** %11, align 8
  br label %49

49:                                               ; preds = %48, %44
  br label %50

50:                                               ; preds = %49, %43
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i8*, i8** %11, align 8
  ret i8* %52
}

declare dso_local i8* @callchain_list__sym_name(%struct.callchain_list*, i8*, i32, i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
