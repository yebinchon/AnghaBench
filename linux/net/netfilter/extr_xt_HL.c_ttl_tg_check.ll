; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HL.c_ttl_tg_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HL.c_ttl_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.ipt_TTL_info* }
%struct.ipt_TTL_info = type { i64, i64 }

@IPT_TTL_MAXMODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IPT_TTL_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @ttl_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttl_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.ipt_TTL_info*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %5 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %5, i32 0, i32 0
  %7 = load %struct.ipt_TTL_info*, %struct.ipt_TTL_info** %6, align 8
  store %struct.ipt_TTL_info* %7, %struct.ipt_TTL_info** %4, align 8
  %8 = load %struct.ipt_TTL_info*, %struct.ipt_TTL_info** %4, align 8
  %9 = getelementptr inbounds %struct.ipt_TTL_info, %struct.ipt_TTL_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IPT_TTL_MAXMODE, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.ipt_TTL_info*, %struct.ipt_TTL_info** %4, align 8
  %18 = getelementptr inbounds %struct.ipt_TTL_info, %struct.ipt_TTL_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IPT_TTL_SET, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.ipt_TTL_info*, %struct.ipt_TTL_info** %4, align 8
  %24 = getelementptr inbounds %struct.ipt_TTL_info, %struct.ipt_TTL_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %22, %16
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %27, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
