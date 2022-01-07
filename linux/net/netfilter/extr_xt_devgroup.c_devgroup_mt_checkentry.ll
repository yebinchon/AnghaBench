; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_devgroup.c_devgroup_mt_checkentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_devgroup.c_devgroup_mt_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i32, %struct.xt_devgroup_info* }
%struct.xt_devgroup_info = type { i32 }

@XT_DEVGROUP_MATCH_SRC = common dso_local global i32 0, align 4
@XT_DEVGROUP_INVERT_SRC = common dso_local global i32 0, align 4
@XT_DEVGROUP_MATCH_DST = common dso_local global i32 0, align 4
@XT_DEVGROUP_INVERT_DST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@NF_INET_LOCAL_IN = common dso_local global i32 0, align 4
@NF_INET_FORWARD = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @devgroup_mt_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devgroup_mt_checkentry(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_devgroup_info*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %5 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %5, i32 0, i32 1
  %7 = load %struct.xt_devgroup_info*, %struct.xt_devgroup_info** %6, align 8
  store %struct.xt_devgroup_info* %7, %struct.xt_devgroup_info** %4, align 8
  %8 = load %struct.xt_devgroup_info*, %struct.xt_devgroup_info** %4, align 8
  %9 = getelementptr inbounds %struct.xt_devgroup_info, %struct.xt_devgroup_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @XT_DEVGROUP_MATCH_SRC, align 4
  %12 = load i32, i32* @XT_DEVGROUP_INVERT_SRC, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @XT_DEVGROUP_MATCH_DST, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @XT_DEVGROUP_INVERT_DST, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %10, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %75

24:                                               ; preds = %1
  %25 = load %struct.xt_devgroup_info*, %struct.xt_devgroup_info** %4, align 8
  %26 = getelementptr inbounds %struct.xt_devgroup_info, %struct.xt_devgroup_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @XT_DEVGROUP_MATCH_SRC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %33 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* @NF_INET_LOCAL_IN, align 4
  %38 = shl i32 1, %37
  %39 = or i32 %36, %38
  %40 = load i32, i32* @NF_INET_FORWARD, align 4
  %41 = shl i32 1, %40
  %42 = or i32 %39, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %34, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %75

49:                                               ; preds = %31, %24
  %50 = load %struct.xt_devgroup_info*, %struct.xt_devgroup_info** %4, align 8
  %51 = getelementptr inbounds %struct.xt_devgroup_info, %struct.xt_devgroup_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @XT_DEVGROUP_MATCH_DST, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %49
  %57 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %58 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NF_INET_FORWARD, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %66 = shl i32 1, %65
  %67 = or i32 %64, %66
  %68 = xor i32 %67, -1
  %69 = and i32 %59, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %56
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %75

74:                                               ; preds = %56, %49
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %71, %46, %21
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
