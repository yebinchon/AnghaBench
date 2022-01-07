; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_srh.c_srh1_mt6_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_srh.c_srh1_mt6_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.ip6t_srh1* }
%struct.ip6t_srh1 = type { i32, i32 }

@IP6T_SRH_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unknown srh match flags  %X\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IP6T_SRH_INV_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unknown srh invflags %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @srh1_mt6_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srh1_mt6_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.ip6t_srh1*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %5 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %5, i32 0, i32 0
  %7 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %6, align 8
  store %struct.ip6t_srh1* %7, %struct.ip6t_srh1** %4, align 8
  %8 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %4, align 8
  %9 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IP6T_SRH_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %4, align 8
  %17 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %38

22:                                               ; preds = %1
  %23 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %4, align 8
  %24 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IP6T_SRH_INV_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %4, align 8
  %32 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %30, %15
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @pr_info_ratelimited(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
