; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_cluster.c_xt_cluster_mt_checkentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_cluster.c_xt_cluster_mt_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i32, i32, %struct.xt_cluster_match_info* }
%struct.xt_cluster_match_info = type { i64, i64 }

@XT_CLUSTER_NODES_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"you have exceeded the maximum number of cluster nodes (%u > %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"node mask cannot exceed total number of nodes\0A\00", align 1
@EDOM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"cannot load conntrack support for proto=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @xt_cluster_mt_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_cluster_mt_checkentry(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_cluster_match_info*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 2
  %8 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %7, align 8
  store %struct.xt_cluster_match_info* %8, %struct.xt_cluster_match_info** %4, align 8
  %9 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %4, align 8
  %10 = getelementptr inbounds %struct.xt_cluster_match_info, %struct.xt_cluster_match_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XT_CLUSTER_NODES_MAX, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %4, align 8
  %16 = getelementptr inbounds %struct.xt_cluster_match_info, %struct.xt_cluster_match_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XT_CLUSTER_NODES_MAX, align 8
  %19 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %1
  %23 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %4, align 8
  %24 = getelementptr inbounds %struct.xt_cluster_match_info, %struct.xt_cluster_match_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.xt_cluster_match_info*, %struct.xt_cluster_match_info** %4, align 8
  %27 = getelementptr inbounds %struct.xt_cluster_match_info, %struct.xt_cluster_match_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = shl i64 1, %28
  %30 = icmp uge i64 %25, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EDOM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %52

35:                                               ; preds = %22
  %36 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %37 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %40 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @nf_ct_netns_get(i32 %38, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %47 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %35
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %31, %14
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @pr_info_ratelimited(i8*, ...) #1

declare dso_local i32 @nf_ct_netns_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
