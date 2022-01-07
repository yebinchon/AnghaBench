; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_parse_perf_probe_event_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_parse_perf_probe_event_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_event = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"%s is bad for event name -it must follow C symbol-naming rule.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.perf_probe_event*)* @parse_perf_probe_event_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_perf_probe_event_name(i8** %0, %struct.perf_probe_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.perf_probe_event*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.perf_probe_event* %1, %struct.perf_probe_event** %5, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = call i8* @strpbrk_esc(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  store i8 0, i8* %13, align 1
  %14 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %15 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load i8**, i8*** %4, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @is_c_func_name(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %72

24:                                               ; preds = %18, %12
  %25 = load i8**, i8*** %4, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strdup_esc(i8* %26)
  %28 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %29 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %31 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %82

37:                                               ; preds = %24
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8**, i8*** %4, align 8
  store i8* %39, i8** %40, align 8
  br label %44

41:                                               ; preds = %2
  %42 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %43 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %42, i32 0, i32 0
  store i8* null, i8** %43, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i8**, i8*** %4, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @strdup_esc(i8* %46)
  %48 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %49 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %51 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %82

57:                                               ; preds = %44
  %58 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %59 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %57
  %63 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %64 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @is_c_func_name(i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %62
  %69 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %70 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %69, i32 0, i32 1
  %71 = call i32 @zfree(i8** %70)
  br label %72

72:                                               ; preds = %68, %23
  %73 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %74 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %73, i32 0, i32 0
  %75 = call i32 @zfree(i8** %74)
  %76 = load i8**, i8*** %4, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @semantic_error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %82

81:                                               ; preds = %62, %57
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %72, %54, %34
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i8* @strpbrk_esc(i8*, i8*) #1

declare dso_local i32 @is_c_func_name(i8*) #1

declare dso_local i8* @strdup_esc(i8*) #1

declare dso_local i32 @zfree(i8**) #1

declare dso_local i32 @semantic_error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
