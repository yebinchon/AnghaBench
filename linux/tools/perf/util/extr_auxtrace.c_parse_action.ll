; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_parse_action.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_parse_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_filter = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"tracestop\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addr_filter*)* @parse_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_action(%struct.addr_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.addr_filter*, align 8
  store %struct.addr_filter* %0, %struct.addr_filter** %3, align 8
  %4 = load %struct.addr_filter*, %struct.addr_filter** %3, align 8
  %5 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @strcmp(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.addr_filter*, %struct.addr_filter** %3, align 8
  %11 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %10, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = load %struct.addr_filter*, %struct.addr_filter** %3, align 8
  %13 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %12, i32 0, i32 2
  store i32 1, i32* %13, align 4
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.addr_filter*, %struct.addr_filter** %3, align 8
  %16 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcmp(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load %struct.addr_filter*, %struct.addr_filter** %3, align 8
  %22 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  br label %52

23:                                               ; preds = %14
  %24 = load %struct.addr_filter*, %struct.addr_filter** %3, align 8
  %25 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcmp(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load %struct.addr_filter*, %struct.addr_filter** %3, align 8
  %31 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  br label %51

32:                                               ; preds = %23
  %33 = load %struct.addr_filter*, %struct.addr_filter** %3, align 8
  %34 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcmp(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %32
  %39 = load %struct.addr_filter*, %struct.addr_filter** %3, align 8
  %40 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.addr_filter*, %struct.addr_filter** %3, align 8
  %42 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %41, i32 0, i32 2
  store i32 1, i32* %42, align 4
  %43 = load %struct.addr_filter*, %struct.addr_filter** %3, align 8
  %44 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 5
  store i32 %46, i32* %44, align 4
  br label %50

47:                                               ; preds = %32
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %54

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %29
  br label %52

52:                                               ; preds = %51, %20
  br label %53

53:                                               ; preds = %52, %9
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
