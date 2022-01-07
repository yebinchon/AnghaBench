; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_statistic.c_statistic_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_statistic.c_statistic_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_statistic_info* }
%struct.xt_statistic_info = type { i64, i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@XT_STATISTIC_MODE_MAX = common dso_local global i64 0, align 8
@XT_STATISTIC_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @statistic_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @statistic_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_statistic_info*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %5 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %5, i32 0, i32 0
  %7 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %6, align 8
  store %struct.xt_statistic_info* %7, %struct.xt_statistic_info** %4, align 8
  %8 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %4, align 8
  %9 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XT_STATISTIC_MODE_MAX, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %4, align 8
  %15 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @XT_STATISTIC_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13, %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %47

24:                                               ; preds = %13
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.TYPE_6__* @kzalloc(i32 4, i32 %25)
  %27 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %4, align 8
  %28 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %27, i32 0, i32 3
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %28, align 8
  %29 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %4, align 8
  %30 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp eq %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %24
  %37 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %4, align 8
  %38 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %4, align 8
  %42 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @atomic_set(i32* %40, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %36, %33, %21
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_6__* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
