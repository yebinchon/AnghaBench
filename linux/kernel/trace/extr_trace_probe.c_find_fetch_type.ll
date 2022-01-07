; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_find_fetch_type.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_find_fetch_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_type = type { i64 }

@DEFAULT_FETCH_TYPE_STR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@probe_fetch_types = common dso_local global %struct.fetch_type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fetch_type* (i8*)* @find_fetch_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fetch_type* @find_fetch_type(i8* %0) #0 {
  %2 = alloca %struct.fetch_type*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** @DEFAULT_FETCH_TYPE_STR, align 8
  store i8* %9, i8** %3, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 98
  br i1 %14, label %15, label %39

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 47)
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %68

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @kstrtoul(i8* %24, i32 0, i64* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %68

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8
  switch i64 %29, label %38 [
    i64 8, label %30
    i64 16, label %32
    i64 32, label %34
    i64 64, label %36
  ]

30:                                               ; preds = %28
  %31 = call %struct.fetch_type* @find_fetch_type(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.fetch_type* %31, %struct.fetch_type** %2, align 8
  br label %69

32:                                               ; preds = %28
  %33 = call %struct.fetch_type* @find_fetch_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.fetch_type* %33, %struct.fetch_type** %2, align 8
  br label %69

34:                                               ; preds = %28
  %35 = call %struct.fetch_type* @find_fetch_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.fetch_type* %35, %struct.fetch_type** %2, align 8
  br label %69

36:                                               ; preds = %28
  %37 = call %struct.fetch_type* @find_fetch_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.fetch_type* %37, %struct.fetch_type** %2, align 8
  br label %69

38:                                               ; preds = %28
  br label %68

39:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %64, %39
  %41 = load %struct.fetch_type*, %struct.fetch_type** @probe_fetch_types, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %41, i64 %43
  %45 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %40
  %49 = load i8*, i8** %3, align 8
  %50 = load %struct.fetch_type*, %struct.fetch_type** @probe_fetch_types, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %50, i64 %52
  %54 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @strcmp(i8* %49, i64 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.fetch_type*, %struct.fetch_type** @probe_fetch_types, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %59, i64 %61
  store %struct.fetch_type* %62, %struct.fetch_type** %2, align 8
  br label %69

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %40

67:                                               ; preds = %40
  br label %68

68:                                               ; preds = %67, %38, %27, %20
  store %struct.fetch_type* null, %struct.fetch_type** %2, align 8
  br label %69

69:                                               ; preds = %68, %58, %36, %34, %32, %30
  %70 = load %struct.fetch_type*, %struct.fetch_type** %2, align 8
  ret %struct.fetch_type* %70
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
