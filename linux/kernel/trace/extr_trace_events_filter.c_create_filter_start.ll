; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_create_filter_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_create_filter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_parse_error = type { i32 }
%struct.event_filter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.filter_parse_error**, %struct.event_filter**)* @create_filter_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_filter_start(i8* %0, i32 %1, %struct.filter_parse_error** %2, %struct.event_filter** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.filter_parse_error**, align 8
  %9 = alloca %struct.event_filter**, align 8
  %10 = alloca %struct.event_filter*, align 8
  %11 = alloca %struct.filter_parse_error*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.filter_parse_error** %2, %struct.filter_parse_error*** %8, align 8
  store %struct.event_filter** %3, %struct.event_filter*** %9, align 8
  store %struct.filter_parse_error* null, %struct.filter_parse_error** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.filter_parse_error**, %struct.filter_parse_error*** %8, align 8
  %14 = load %struct.filter_parse_error*, %struct.filter_parse_error** %13, align 8
  %15 = icmp ne %struct.filter_parse_error* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load %struct.event_filter**, %struct.event_filter*** %9, align 8
  %18 = load %struct.event_filter*, %struct.event_filter** %17, align 8
  %19 = icmp ne %struct.event_filter* %18, null
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i1 [ true, %4 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON_ONCE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %75

28:                                               ; preds = %20
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 4, i32 %29)
  %31 = bitcast i8* %30 to %struct.event_filter*
  store %struct.event_filter* %31, %struct.event_filter** %10, align 8
  %32 = load %struct.event_filter*, %struct.event_filter** %10, align 8
  %33 = icmp ne %struct.event_filter* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @kstrdup(i8* %38, i32 %39)
  %41 = load %struct.event_filter*, %struct.event_filter** %10, align 8
  %42 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.event_filter*, %struct.event_filter** %10, align 8
  %44 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %47, %37
  br label %51

51:                                               ; preds = %50, %34, %28
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kzalloc(i32 4, i32 %52)
  %54 = bitcast i8* %53 to %struct.filter_parse_error*
  store %struct.filter_parse_error* %54, %struct.filter_parse_error** %11, align 8
  %55 = load %struct.event_filter*, %struct.event_filter** %10, align 8
  %56 = icmp ne %struct.event_filter* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.filter_parse_error*, %struct.filter_parse_error** %11, align 8
  %59 = icmp ne %struct.filter_parse_error* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60, %57, %51
  %64 = load %struct.filter_parse_error*, %struct.filter_parse_error** %11, align 8
  %65 = call i32 @kfree(%struct.filter_parse_error* %64)
  %66 = load %struct.event_filter*, %struct.event_filter** %10, align 8
  %67 = call i32 @__free_filter(%struct.event_filter* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %75

70:                                               ; preds = %60
  %71 = load %struct.event_filter*, %struct.event_filter** %10, align 8
  %72 = load %struct.event_filter**, %struct.event_filter*** %9, align 8
  store %struct.event_filter* %71, %struct.event_filter** %72, align 8
  %73 = load %struct.filter_parse_error*, %struct.filter_parse_error** %11, align 8
  %74 = load %struct.filter_parse_error**, %struct.filter_parse_error*** %8, align 8
  store %struct.filter_parse_error* %73, %struct.filter_parse_error** %74, align 8
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %63, %25
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.filter_parse_error*) #1

declare dso_local i32 @__free_filter(%struct.event_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
