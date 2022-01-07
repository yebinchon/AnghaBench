; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_setup_output_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_setup_output_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_hpp_list = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid --fields key: `%s'\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unknown --fields key: `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp_list*, i8*)* @setup_output_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_output_list(%struct.perf_hpp_list* %0, i8* %1) #0 {
  %3 = alloca %struct.perf_hpp_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_hpp_list* %0, %struct.perf_hpp_list** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @strtok_r(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %5)
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %34, %2
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %3, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @output_field_add(%struct.perf_hpp_list* %14, i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @ui__error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %36

24:                                               ; preds = %13
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ESRCH, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @ui__error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %36

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  %35 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %5)
  store i8* %35, i8** %6, align 8
  br label %10

36:                                               ; preds = %29, %21, %10
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @output_field_add(%struct.perf_hpp_list*, i8*) #1

declare dso_local i32 @ui__error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
