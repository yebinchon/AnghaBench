; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_handle_matches.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_handle_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_handler = type { i32, i64, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_handler*, i32, i8*, i8*, i64, i8*)* @handle_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_matches(%struct.event_handler* %0, i32 %1, i8* %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.event_handler*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.event_handler* %0, %struct.event_handler** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %6
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.event_handler*, %struct.event_handler** %8, align 8
  %19 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %59

23:                                               ; preds = %16, %6
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.event_handler*, %struct.event_handler** %8, align 8
  %29 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i8* %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %59

34:                                               ; preds = %26, %23
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.event_handler*, %struct.event_handler** %8, align 8
  %40 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @strcmp(i8* %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %59

45:                                               ; preds = %37, %34
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.event_handler*, %struct.event_handler** %8, align 8
  %48 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %13, align 8
  %53 = load %struct.event_handler*, %struct.event_handler** %8, align 8
  %54 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %45
  store i32 0, i32* %7, align 4
  br label %59

58:                                               ; preds = %51
  store i32 1, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %57, %44, %33, %22
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
