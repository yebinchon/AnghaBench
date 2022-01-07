; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_setup_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_setup_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@coalesce_default = common dso_local global i8* null, align 8
@c2c = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"offset,%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DISPLAY_TOT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"tot_hitm\00", align 1
@DISPLAY_RMT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"rmt_hitm,lcl_hitm\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"lcl_hitm,rmt_hitm\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"coalesce sort   fields: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"coalesce resort fields: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"coalesce output fields: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @setup_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_coalesce(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %12

10:                                               ; preds = %2
  %11 = load i8*, i8** @coalesce_default, align 8
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i8* [ %7, %9 ], [ %11, %10 ]
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @asprintf(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c2c, i32 0, i32 3), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %51

20:                                               ; preds = %12
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c2c, i32 0, i32 3), align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @build_cl_output(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %51

26:                                               ; preds = %20
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c2c, i32 0, i32 0), align 8
  %28 = load i64, i64* @DISPLAY_TOT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %37

31:                                               ; preds = %26
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c2c, i32 0, i32 0), align 8
  %33 = load i64, i64* @DISPLAY_RMT, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)
  br label %37

37:                                               ; preds = %31, %30
  %38 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %30 ], [ %36, %31 ]
  %39 = call i64 @asprintf(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c2c, i32 0, i32 2), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %51

44:                                               ; preds = %37
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c2c, i32 0, i32 3), align 8
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c2c, i32 0, i32 2), align 4
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c2c, i32 0, i32 1), align 8
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %41, %25, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @asprintf(i32*, i8*, i8*) #1

declare dso_local i64 @build_cl_output(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
