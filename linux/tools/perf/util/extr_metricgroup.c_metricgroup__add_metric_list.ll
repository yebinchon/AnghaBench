; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_metricgroup.c_metricgroup__add_metric_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_metricgroup.c_metricgroup__add_metric_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.list_head = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Cannot find metric or group `%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.strbuf*, %struct.list_head*)* @metricgroup__add_metric_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metricgroup__add_metric_list(i8* %0, %struct.strbuf* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strdup(i8* %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %48

21:                                               ; preds = %3
  %22 = load i8*, i8** %9, align 8
  store i8* %22, i8** %8, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %24 = call i32 @strbuf_init(%struct.strbuf* %23, i32 100)
  %25 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %26 = call i32 @strbuf_addf(%struct.strbuf* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %43, %21
  %28 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %28, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %33 = load %struct.list_head*, %struct.list_head** %7, align 8
  %34 = call i32 @metricgroup__add_metric(i8* %31, %struct.strbuf* %32, %struct.list_head* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %44

43:                                               ; preds = %30
  br label %27

44:                                               ; preds = %39, %27
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @metricgroup__add_metric(i8*, %struct.strbuf*, %struct.list_head*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
