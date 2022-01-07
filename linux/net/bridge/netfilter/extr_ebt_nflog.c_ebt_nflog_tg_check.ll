; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_nflog.c_ebt_nflog_tg_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_nflog.c_ebt_nflog_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.ebt_nflog_info* }
%struct.ebt_nflog_info = type { i32, i8* }

@EBT_NFLOG_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBT_NFLOG_PREFIX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @ebt_nflog_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_nflog_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.ebt_nflog_info*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %5 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %5, i32 0, i32 0
  %7 = load %struct.ebt_nflog_info*, %struct.ebt_nflog_info** %6, align 8
  store %struct.ebt_nflog_info* %7, %struct.ebt_nflog_info** %4, align 8
  %8 = load %struct.ebt_nflog_info*, %struct.ebt_nflog_info** %4, align 8
  %9 = getelementptr inbounds %struct.ebt_nflog_info, %struct.ebt_nflog_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @EBT_NFLOG_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.ebt_nflog_info*, %struct.ebt_nflog_info** %4, align 8
  %20 = getelementptr inbounds %struct.ebt_nflog_info, %struct.ebt_nflog_info* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @EBT_NFLOG_PREFIX_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  store i8 0, i8* %25, align 1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %15
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
