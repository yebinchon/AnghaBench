; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_policy.c_policy_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_policy.c_policy_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i32, %struct.xt_policy_info* }
%struct.xt_policy_info = type { i32, i64 }

@.str = private unnamed_addr constant [46 x i8] c"neither incoming nor outgoing policy selected\00", align 1
@XT_POLICY_MATCH_IN = common dso_local global i32 0, align 4
@XT_POLICY_MATCH_OUT = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@NF_INET_LOCAL_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"output policy not valid in PREROUTING and INPUT\00", align 1
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"input policy not valid in POSTROUTING and OUTPUT\00", align 1
@XT_POLICY_MAX_ELEM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"too many policy elements\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @policy_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policy_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_policy_info*, align 8
  %5 = alloca i8*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 1
  %8 = load %struct.xt_policy_info*, %struct.xt_policy_info** %7, align 8
  store %struct.xt_policy_info* %8, %struct.xt_policy_info** %4, align 8
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %9 = load %struct.xt_policy_info*, %struct.xt_policy_info** %4, align 8
  %10 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @XT_POLICY_MATCH_IN, align 4
  %13 = load i32, i32* @XT_POLICY_MATCH_OUT, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %64

18:                                               ; preds = %1
  %19 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %20 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* @NF_INET_LOCAL_IN, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = and i32 %21, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load %struct.xt_policy_info*, %struct.xt_policy_info** %4, align 8
  %31 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @XT_POLICY_MATCH_OUT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %64

37:                                               ; preds = %29, %18
  %38 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %39 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %44 = shl i32 1, %43
  %45 = or i32 %42, %44
  %46 = and i32 %40, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %37
  %49 = load %struct.xt_policy_info*, %struct.xt_policy_info** %4, align 8
  %50 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @XT_POLICY_MATCH_IN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %64

56:                                               ; preds = %48, %37
  %57 = load %struct.xt_policy_info*, %struct.xt_policy_info** %4, align 8
  %58 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @XT_POLICY_MAX_ELEM, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %64

63:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %69

64:                                               ; preds = %62, %55, %36, %17
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %64, %63
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @pr_info_ratelimited(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
