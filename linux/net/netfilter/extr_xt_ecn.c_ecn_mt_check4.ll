; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_ecn.c_ecn_mt_check4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_ecn.c_ecn_mt_check4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.ipt_ip*, %struct.xt_ecn_info* }
%struct.ipt_ip = type { i64, i32 }
%struct.xt_ecn_info = type { i32, i32 }

@XT_ECN_OP_MATCH_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XT_ECN_OP_MATCH_ECE = common dso_local global i32 0, align 4
@XT_ECN_OP_MATCH_CWR = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPT_INV_PROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cannot match TCP bits for non-tcp packets\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @ecn_mt_check4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecn_mt_check4(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_ecn_info*, align 8
  %5 = alloca %struct.ipt_ip*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 1
  %8 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %7, align 8
  store %struct.xt_ecn_info* %8, %struct.xt_ecn_info** %4, align 8
  %9 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %9, i32 0, i32 0
  %11 = load %struct.ipt_ip*, %struct.ipt_ip** %10, align 8
  store %struct.ipt_ip* %11, %struct.ipt_ip** %5, align 8
  %12 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %4, align 8
  %13 = getelementptr inbounds %struct.xt_ecn_info, %struct.xt_ecn_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XT_ECN_OP_MATCH_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %58

21:                                               ; preds = %1
  %22 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %4, align 8
  %23 = getelementptr inbounds %struct.xt_ecn_info, %struct.xt_ecn_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @XT_ECN_OP_MATCH_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %58

31:                                               ; preds = %21
  %32 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %4, align 8
  %33 = getelementptr inbounds %struct.xt_ecn_info, %struct.xt_ecn_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XT_ECN_OP_MATCH_ECE, align 4
  %36 = load i32, i32* @XT_ECN_OP_MATCH_CWR, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %31
  %41 = load %struct.ipt_ip*, %struct.ipt_ip** %5, align 8
  %42 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IPPROTO_TCP, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load %struct.ipt_ip*, %struct.ipt_ip** %5, align 8
  %48 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IPT_INV_PROTO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46, %40
  %54 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %46, %31
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %53, %28, %18
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @pr_info_ratelimited(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
