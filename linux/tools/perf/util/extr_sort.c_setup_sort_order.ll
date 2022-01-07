; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_setup_sort_order.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_setup_sort_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }

@sort_order = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Invalid --sort key: `+'\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s,%s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Not enough memory to set up --sort\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @setup_sort_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_sort_order(%struct.evlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evlist*, align 8
  %4 = alloca i8*, align 8
  store %struct.evlist* %0, %struct.evlist** %3, align 8
  %5 = load i8*, i8** @sort_order, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8*, i8** @sort_order, align 8
  %9 = call i64 @is_strict_order(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %35

12:                                               ; preds = %7
  %13 = load i8*, i8** @sort_order, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %35

22:                                               ; preds = %12
  %23 = load %struct.evlist*, %struct.evlist** %3, align 8
  %24 = call i32 @get_default_sort_order(%struct.evlist* %23)
  %25 = load i8*, i8** @sort_order, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call i64 @asprintf(i8** %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %24, i8* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %22
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** @sort_order, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %29, %18, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @is_strict_order(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @get_default_sort_order(%struct.evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
