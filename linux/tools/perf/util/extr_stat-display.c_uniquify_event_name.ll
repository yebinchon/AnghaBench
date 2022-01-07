; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_uniquify_event_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_uniquify_event_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s [%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evsel*)* @uniquify_event_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniquify_event_name(%struct.evsel* %0) #0 {
  %2 = alloca %struct.evsel*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.evsel* %0, %struct.evsel** %2, align 8
  %5 = load %struct.evsel*, %struct.evsel** %2, align 8
  %6 = getelementptr inbounds %struct.evsel, %struct.evsel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = load %struct.evsel*, %struct.evsel** %2, align 8
  %11 = getelementptr inbounds %struct.evsel, %struct.evsel* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.evsel*, %struct.evsel** %2, align 8
  %16 = getelementptr inbounds %struct.evsel, %struct.evsel* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.evsel*, %struct.evsel** %2, align 8
  %19 = getelementptr inbounds %struct.evsel, %struct.evsel* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.evsel*, %struct.evsel** %2, align 8
  %22 = getelementptr inbounds %struct.evsel, %struct.evsel* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i32 @strncmp(i8* %17, i8* %20, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %14, %9, %1
  br label %72

28:                                               ; preds = %14
  %29 = load %struct.evsel*, %struct.evsel** %2, align 8
  %30 = getelementptr inbounds %struct.evsel, %struct.evsel* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @strchr(i8* %31, i8 signext 47)
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load %struct.evsel*, %struct.evsel** %2, align 8
  %37 = getelementptr inbounds %struct.evsel, %struct.evsel* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @asprintf(i8** %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %39)
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.evsel*, %struct.evsel** %2, align 8
  %44 = getelementptr inbounds %struct.evsel, %struct.evsel* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i8*, i8** %3, align 8
  %48 = load %struct.evsel*, %struct.evsel** %2, align 8
  %49 = getelementptr inbounds %struct.evsel, %struct.evsel* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %42, %35
  br label %69

51:                                               ; preds = %28
  %52 = load %struct.evsel*, %struct.evsel** %2, align 8
  %53 = getelementptr inbounds %struct.evsel, %struct.evsel* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.evsel*, %struct.evsel** %2, align 8
  %56 = getelementptr inbounds %struct.evsel, %struct.evsel* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @asprintf(i8** %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %54, i8* %57)
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %51
  %61 = load %struct.evsel*, %struct.evsel** %2, align 8
  %62 = getelementptr inbounds %struct.evsel, %struct.evsel* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i8*, i8** %3, align 8
  %66 = load %struct.evsel*, %struct.evsel** %2, align 8
  %67 = getelementptr inbounds %struct.evsel, %struct.evsel* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %60, %51
  br label %69

69:                                               ; preds = %68, %50
  %70 = load %struct.evsel*, %struct.evsel** %2, align 8
  %71 = getelementptr inbounds %struct.evsel, %struct.evsel* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %27
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
