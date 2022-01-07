; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_match_v1_checkentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_match_v1_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i32, %struct.xt_set_info_match_v1* }
%struct.xt_set_info_match_v1 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Cannot find set identified by id %u to match\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@IPSET_DIM_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"set match dimension is over the limit!\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @set_match_v1_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_match_v1_checkentry(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_set_info_match_v1*, align 8
  %5 = alloca i64, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 1
  %8 = load %struct.xt_set_info_match_v1*, %struct.xt_set_info_match_v1** %7, align 8
  store %struct.xt_set_info_match_v1* %8, %struct.xt_set_info_match_v1** %4, align 8
  %9 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.xt_set_info_match_v1*, %struct.xt_set_info_match_v1** %4, align 8
  %13 = getelementptr inbounds %struct.xt_set_info_match_v1, %struct.xt_set_info_match_v1* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @ip_set_nfnl_get_byindex(i32 %11, i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @IPSET_INVALID_ID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.xt_set_info_match_v1*, %struct.xt_set_info_match_v1** %4, align 8
  %22 = getelementptr inbounds %struct.xt_set_info_match_v1, %struct.xt_set_info_match_v1* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %48

28:                                               ; preds = %1
  %29 = load %struct.xt_set_info_match_v1*, %struct.xt_set_info_match_v1** %4, align 8
  %30 = getelementptr inbounds %struct.xt_set_info_match_v1, %struct.xt_set_info_match_v1* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IPSET_DIM_MAX, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %38 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.xt_set_info_match_v1*, %struct.xt_set_info_match_v1** %4, align 8
  %41 = getelementptr inbounds %struct.xt_set_info_match_v1, %struct.xt_set_info_match_v1* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ip_set_nfnl_put(i32 %39, i32 %43)
  %45 = load i32, i32* @ERANGE, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %35, %20
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @ip_set_nfnl_get_byindex(i32, i32) #1

declare dso_local i32 @pr_info_ratelimited(i8*, ...) #1

declare dso_local i32 @ip_set_nfnl_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
