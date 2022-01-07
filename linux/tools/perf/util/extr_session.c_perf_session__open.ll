; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32, i32, %struct.perf_data* }
%struct.perf_data = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"incompatible file format (rerun with -v to learn more)\0A\00", align 1
@HEADER_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"non matching sample_type\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"non matching sample_id_all\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"non matching read_format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_session*)* @perf_session__open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_session__open(%struct.perf_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_session*, align 8
  %4 = alloca %struct.perf_data*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %3, align 8
  %5 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %6 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %5, i32 0, i32 2
  %7 = load %struct.perf_data*, %struct.perf_data** %6, align 8
  store %struct.perf_data* %7, %struct.perf_data** %4, align 8
  %8 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %9 = call i64 @perf_session__read_header(%struct.perf_session* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.perf_data*, %struct.perf_data** %4, align 8
  %15 = call i64 @perf_data__is_pipe(%struct.perf_data* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %50

18:                                               ; preds = %13
  %19 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %20 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %19, i32 0, i32 1
  %21 = load i32, i32* @HEADER_STAT, align 4
  %22 = call i64 @perf_header__has_feat(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %50

25:                                               ; preds = %18
  %26 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %27 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @perf_evlist__valid_sample_type(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %50

33:                                               ; preds = %25
  %34 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %35 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @perf_evlist__valid_sample_id_all(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %50

41:                                               ; preds = %33
  %42 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %43 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @perf_evlist__valid_read_format(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %50

49:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %47, %39, %31, %24, %17, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @perf_session__read_header(%struct.perf_session*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @perf_data__is_pipe(%struct.perf_data*) #1

declare dso_local i64 @perf_header__has_feat(i32*, i32) #1

declare dso_local i32 @perf_evlist__valid_sample_type(i32) #1

declare dso_local i32 @perf_evlist__valid_sample_id_all(i32) #1

declare dso_local i32 @perf_evlist__valid_read_format(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
