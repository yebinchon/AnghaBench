; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_print_event_param_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_print_event_param_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.print_event_type = type { i64, i32 }

@EVENT_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@EVENT_TYPE_INT = common dso_local global i64 0, align 8
@EVENT_TYPE_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.print_event_type*)* @tep_print_event_param_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tep_print_event_param_type(i8* %0, %struct.print_event_type* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.print_event_type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.print_event_type* %1, %struct.print_event_type** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  store i8* %8, i8** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load i64, i64* @EVENT_TYPE_UNKNOWN, align 8
  %10 = load %struct.print_event_type*, %struct.print_event_type** %4, align 8
  %11 = getelementptr inbounds %struct.print_event_type, %struct.print_event_type* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  br label %12

12:                                               ; preds = %39, %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %28 [
    i32 100, label %20
    i32 117, label %20
    i32 105, label %20
    i32 120, label %20
    i32 88, label %20
    i32 111, label %20
    i32 115, label %24
  ]

20:                                               ; preds = %16, %16, %16, %16, %16, %16
  %21 = load i64, i64* @EVENT_TYPE_INT, align 8
  %22 = load %struct.print_event_type*, %struct.print_event_type** %4, align 8
  %23 = getelementptr inbounds %struct.print_event_type, %struct.print_event_type* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %28

24:                                               ; preds = %16
  %25 = load i64, i64* @EVENT_TYPE_STRING, align 8
  %26 = load %struct.print_event_type*, %struct.print_event_type** %4, align 8
  %27 = getelementptr inbounds %struct.print_event_type, %struct.print_event_type* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %16, %24, %20
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load %struct.print_event_type*, %struct.print_event_type** %4, align 8
  %34 = getelementptr inbounds %struct.print_event_type, %struct.print_event_type* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EVENT_TYPE_UNKNOWN, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %40

39:                                               ; preds = %28
  br label %12

40:                                               ; preds = %38, %12
  %41 = load %struct.print_event_type*, %struct.print_event_type** %4, align 8
  %42 = getelementptr inbounds %struct.print_event_type, %struct.print_event_type* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @memset(i32 %43, i32 0, i32 32)
  %45 = load %struct.print_event_type*, %struct.print_event_type** %4, align 8
  %46 = getelementptr inbounds %struct.print_event_type, %struct.print_event_type* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %6, align 4
  br label %54

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 31, %53 ]
  %56 = call i32 @memcpy(i32 %47, i8* %48, i32 %55)
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
