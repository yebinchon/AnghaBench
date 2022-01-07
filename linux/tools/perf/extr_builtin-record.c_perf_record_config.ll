; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_perf_record_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_perf_record_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"record.build-id\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"no-cache\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"record.call-graph\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"call-graph.record-mode\00", align 1
@nr_cblocks_default = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @perf_record_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_record_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.record*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.record*
  store %struct.record* %10, %struct.record** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load %struct.record*, %struct.record** %8, align 8
  %20 = getelementptr inbounds %struct.record, %struct.record* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %38

21:                                               ; preds = %14
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load %struct.record*, %struct.record** %8, align 8
  %27 = getelementptr inbounds %struct.record, %struct.record* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %37

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load %struct.record*, %struct.record** %8, align 8
  %34 = getelementptr inbounds %struct.record, %struct.record* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  br label %36

35:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %49

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %25
  br label %38

38:                                               ; preds = %37, %18
  store i32 0, i32* %4, align 4
  br label %49

39:                                               ; preds = %3
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @perf_default_config(i8* %44, i8* %45, i8* %46)
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %43, %38, %35
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @perf_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
