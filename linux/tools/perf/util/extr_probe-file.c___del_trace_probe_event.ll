; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c___del_trace_probe_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c___del_trace_probe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str_node = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"-:%s\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Internal error: %s should have ':' but not.\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Writing event: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to delete event: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.str_node*)* @__del_trace_probe_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__del_trace_probe_event(i32 %0, %struct.str_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.str_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.str_node* %1, %struct.str_node** %5, align 8
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %10 = load %struct.str_node*, %struct.str_node** %5, align 8
  %11 = getelementptr inbounds %struct.str_node, %struct.str_node* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @e_snprintf(i8* %9, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %45

17:                                               ; preds = %2
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = call i8* @strchr(i8* %19, i8 signext 58)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load %struct.str_node*, %struct.str_node** %5, align 8
  %25 = getelementptr inbounds %struct.str_node, %struct.str_node* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @ENOTSUP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %45

30:                                               ; preds = %17
  %31 = load i8*, i8** %6, align 8
  store i8 47, i8* %31, align 1
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %4, align 4
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %37 = call i32 @strlen(i8* %36)
  %38 = call i32 @write(i32 %34, i8* %35, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* @errno, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %45

44:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %52

45:                                               ; preds = %41, %23, %16
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 0, %46
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %49 = call i32 @str_error_r(i32 %47, i8* %48, i32 128)
  %50 = call i32 @pr_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %44
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @e_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @str_error_r(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
