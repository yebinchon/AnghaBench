; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_time.c_time_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_time.c_time_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_time_info* }
%struct.xt_time_info = type { i64, i64, i32 }

@XT_TIME_MAX_DAYTIME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"invalid argument - start or stop time greater than 23:59:59\0A\00", align 1
@EDOM = common dso_local global i32 0, align 4
@XT_TIME_ALL_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown flags 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XT_TIME_CONTIGUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @time_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_time_info*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %5 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %5, i32 0, i32 0
  %7 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  store %struct.xt_time_info* %7, %struct.xt_time_info** %4, align 8
  %8 = load %struct.xt_time_info*, %struct.xt_time_info** %4, align 8
  %9 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XT_TIME_MAX_DAYTIME, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.xt_time_info*, %struct.xt_time_info** %4, align 8
  %15 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XT_TIME_MAX_DAYTIME, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %1
  %20 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EDOM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %60

23:                                               ; preds = %13
  %24 = load %struct.xt_time_info*, %struct.xt_time_info** %4, align 8
  %25 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @XT_TIME_ALL_FLAGS, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.xt_time_info*, %struct.xt_time_info** %4, align 8
  %33 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @XT_TIME_ALL_FLAGS, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %60

41:                                               ; preds = %23
  %42 = load %struct.xt_time_info*, %struct.xt_time_info** %4, align 8
  %43 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @XT_TIME_CONTIGUOUS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.xt_time_info*, %struct.xt_time_info** %4, align 8
  %50 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.xt_time_info*, %struct.xt_time_info** %4, align 8
  %53 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %48, %41
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %56, %31, %19
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @pr_info_ratelimited(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
