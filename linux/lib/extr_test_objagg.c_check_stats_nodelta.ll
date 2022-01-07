; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_check_stats_nodelta.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_check_stats_nodelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg = type { i32 }
%struct.objagg_stats = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@NUM_KEYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Stats: Unexpected object count (%u expected, %u returned)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Stats: incorrect user count\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Stats: incorrect delta user count\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg*)* @check_stats_nodelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_stats_nodelta(%struct.objagg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.objagg*, align 8
  %4 = alloca %struct.objagg_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.objagg* %0, %struct.objagg** %3, align 8
  %7 = load %struct.objagg*, %struct.objagg** %3, align 8
  %8 = call %struct.objagg_stats* @objagg_stats_get(%struct.objagg* %7)
  store %struct.objagg_stats* %8, %struct.objagg_stats** %4, align 8
  %9 = load %struct.objagg_stats*, %struct.objagg_stats** %4, align 8
  %10 = call i64 @IS_ERR(%struct.objagg_stats* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.objagg_stats*, %struct.objagg_stats** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.objagg_stats* %13)
  store i32 %14, i32* %2, align 4
  br label %75

15:                                               ; preds = %1
  %16 = load %struct.objagg_stats*, %struct.objagg_stats** %4, align 8
  %17 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NUM_KEYS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i32, i32* @NUM_KEYS, align 4
  %23 = load %struct.objagg_stats*, %struct.objagg_stats** %4, align 8
  %24 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %71

29:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %67, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.objagg_stats*, %struct.objagg_stats** %4, align 8
  %33 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %30
  %37 = load %struct.objagg_stats*, %struct.objagg_stats** %4, align 8
  %38 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %71

51:                                               ; preds = %36
  %52 = load %struct.objagg_stats*, %struct.objagg_stats** %4, align 8
  %53 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 2
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %71

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %30

70:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %62, %47, %21
  %72 = load %struct.objagg_stats*, %struct.objagg_stats** %4, align 8
  %73 = call i32 @objagg_stats_put(%struct.objagg_stats* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %12
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.objagg_stats* @objagg_stats_get(%struct.objagg*) #1

declare dso_local i64 @IS_ERR(%struct.objagg_stats*) #1

declare dso_local i32 @PTR_ERR(%struct.objagg_stats*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @objagg_stats_put(%struct.objagg_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
