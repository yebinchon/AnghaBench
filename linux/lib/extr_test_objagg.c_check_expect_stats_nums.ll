; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_check_expect_stats_nums.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_check_expect_stats_nums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg_obj_stats_info = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.expect_stats_info = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"Incorrect root/delta indication\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Incorrect user count\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Incorrect delta user count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg_obj_stats_info*, %struct.expect_stats_info*, i8**)* @check_expect_stats_nums to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_expect_stats_nums(%struct.objagg_obj_stats_info* %0, %struct.expect_stats_info* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.objagg_obj_stats_info*, align 8
  %6 = alloca %struct.expect_stats_info*, align 8
  %7 = alloca i8**, align 8
  store %struct.objagg_obj_stats_info* %0, %struct.objagg_obj_stats_info** %5, align 8
  store %struct.expect_stats_info* %1, %struct.expect_stats_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load %struct.objagg_obj_stats_info*, %struct.objagg_obj_stats_info** %5, align 8
  %9 = getelementptr inbounds %struct.objagg_obj_stats_info, %struct.objagg_obj_stats_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.expect_stats_info*, %struct.expect_stats_info** %6, align 8
  %12 = getelementptr inbounds %struct.expect_stats_info, %struct.expect_stats_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i8**, i8*** %7, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %60

23:                                               ; preds = %3
  %24 = load %struct.objagg_obj_stats_info*, %struct.objagg_obj_stats_info** %5, align 8
  %25 = getelementptr inbounds %struct.objagg_obj_stats_info, %struct.objagg_obj_stats_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.expect_stats_info*, %struct.expect_stats_info** %6, align 8
  %29 = getelementptr inbounds %struct.expect_stats_info, %struct.expect_stats_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load i8**, i8*** %7, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %37, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %60

41:                                               ; preds = %23
  %42 = load %struct.objagg_obj_stats_info*, %struct.objagg_obj_stats_info** %5, align 8
  %43 = getelementptr inbounds %struct.objagg_obj_stats_info, %struct.objagg_obj_stats_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.expect_stats_info*, %struct.expect_stats_info** %6, align 8
  %47 = getelementptr inbounds %struct.expect_stats_info, %struct.expect_stats_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load i8**, i8*** %7, align 8
  %53 = icmp ne i8** %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %55, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %56, %38, %20
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
