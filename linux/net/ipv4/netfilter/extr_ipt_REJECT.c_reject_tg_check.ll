; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_REJECT.c_reject_tg_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_REJECT.c_reject_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.ipt_entry*, %struct.ipt_reject_info* }
%struct.ipt_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ipt_reject_info = type { i64 }

@IPT_ICMP_ECHOREPLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"ECHOREPLY no longer supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPT_TCP_RESET = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@XT_INV_PROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"TCP_RESET invalid for non-tcp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @reject_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reject_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.ipt_reject_info*, align 8
  %5 = alloca %struct.ipt_entry*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 1
  %8 = load %struct.ipt_reject_info*, %struct.ipt_reject_info** %7, align 8
  store %struct.ipt_reject_info* %8, %struct.ipt_reject_info** %4, align 8
  %9 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %9, i32 0, i32 0
  %11 = load %struct.ipt_entry*, %struct.ipt_entry** %10, align 8
  store %struct.ipt_entry* %11, %struct.ipt_entry** %5, align 8
  %12 = load %struct.ipt_reject_info*, %struct.ipt_reject_info** %4, align 8
  %13 = getelementptr inbounds %struct.ipt_reject_info, %struct.ipt_reject_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IPT_ICMP_ECHOREPLY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %49

21:                                               ; preds = %1
  %22 = load %struct.ipt_reject_info*, %struct.ipt_reject_info** %4, align 8
  %23 = getelementptr inbounds %struct.ipt_reject_info, %struct.ipt_reject_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IPT_TCP_RESET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load %struct.ipt_entry*, %struct.ipt_entry** %5, align 8
  %29 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IPPROTO_TCP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load %struct.ipt_entry*, %struct.ipt_entry** %5, align 8
  %36 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @XT_INV_PROTO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34, %27
  %43 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %21
  br label %48

48:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %42, %17
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @pr_info_ratelimited(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
