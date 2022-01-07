; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CHECKSUM.c_checksum_tg_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CHECKSUM.c_checksum_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i32, %struct.ipt_ip*, %struct.xt_CHECKSUM_info* }
%struct.ipt_ip = type { i32, i32, i32 }
%struct.xt_CHECKSUM_info = type { i32 }
%struct.ip6t_ip6 = type { i32, i32, i32 }

@XT_CHECKSUM_OP_FILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unsupported CHECKSUM operation %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@XT_INV_PROTO = common dso_local global i32 0, align 4
@IP6T_F_PROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"CHECKSUM should be avoided.  If really needed, restrict with \22-p udp\22 and only use in OUTPUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @checksum_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checksum_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_CHECKSUM_info*, align 8
  %5 = alloca %struct.ip6t_ip6*, align 8
  %6 = alloca %struct.ipt_ip*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %7 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %8 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %7, i32 0, i32 2
  %9 = load %struct.xt_CHECKSUM_info*, %struct.xt_CHECKSUM_info** %8, align 8
  store %struct.xt_CHECKSUM_info* %9, %struct.xt_CHECKSUM_info** %4, align 8
  %10 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %11 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %10, i32 0, i32 1
  %12 = load %struct.ipt_ip*, %struct.ipt_ip** %11, align 8
  %13 = bitcast %struct.ipt_ip* %12 to %struct.ip6t_ip6*
  store %struct.ip6t_ip6* %13, %struct.ip6t_ip6** %5, align 8
  %14 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %15 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %14, i32 0, i32 1
  %16 = load %struct.ipt_ip*, %struct.ipt_ip** %15, align 8
  store %struct.ipt_ip* %16, %struct.ipt_ip** %6, align 8
  %17 = load %struct.xt_CHECKSUM_info*, %struct.xt_CHECKSUM_info** %4, align 8
  %18 = getelementptr inbounds %struct.xt_CHECKSUM_info, %struct.xt_CHECKSUM_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @XT_CHECKSUM_OP_FILL, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.xt_CHECKSUM_info*, %struct.xt_CHECKSUM_info** %4, align 8
  %26 = getelementptr inbounds %struct.xt_CHECKSUM_info, %struct.xt_CHECKSUM_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %82

31:                                               ; preds = %1
  %32 = load %struct.xt_CHECKSUM_info*, %struct.xt_CHECKSUM_info** %4, align 8
  %33 = getelementptr inbounds %struct.xt_CHECKSUM_info, %struct.xt_CHECKSUM_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %82

39:                                               ; preds = %31
  %40 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %41 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %80 [
    i32 129, label %43
    i32 128, label %58
  ]

43:                                               ; preds = %39
  %44 = load %struct.ipt_ip*, %struct.ipt_ip** %6, align 8
  %45 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IPPROTO_UDP, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.ipt_ip*, %struct.ipt_ip** %6, align 8
  %51 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @XT_INV_PROTO, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %82

57:                                               ; preds = %49, %43
  br label %80

58:                                               ; preds = %39
  %59 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %5, align 8
  %60 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IP6T_F_PROTO, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %5, align 8
  %67 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IPPROTO_UDP, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %5, align 8
  %73 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @XT_INV_PROTO, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %82

79:                                               ; preds = %71, %65, %58
  br label %80

80:                                               ; preds = %39, %79, %57
  %81 = call i32 @pr_warn_once(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %78, %56, %36, %24
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @pr_info_ratelimited(i8*, i32) #1

declare dso_local i32 @pr_warn_once(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
