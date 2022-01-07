; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___setup_output_field.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___setup_output_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@field_order = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Not enough memory to setup output fields\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid --fields key: `+'\00", align 1
@perf_hpp_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__setup_output_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__setup_output_field() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @EINVAL, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load i32*, i32** @field_order, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %39

10:                                               ; preds = %0
  %11 = load i32*, i32** @field_order, align 8
  %12 = call i8* @strdup(i32* %11)
  store i8* %12, i8** %2, align 8
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %1, align 4
  br label %39

19:                                               ; preds = %10
  %20 = load i32*, i32** @field_order, align 8
  %21 = call i32 @is_strict_order(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @setup_output_list(i32* @perf_hpp_list, i8* %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %30
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @free(i8* %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %35, %15, %9
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i8* @strdup(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @is_strict_order(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @setup_output_list(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
