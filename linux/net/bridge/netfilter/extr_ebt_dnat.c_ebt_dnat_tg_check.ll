; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_dnat.c_ebt_dnat_tg_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_dnat.c_ebt_dnat_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i32, i32, %struct.ebt_nat_info* }
%struct.ebt_nat_info = type { i64 }

@BASE_CHAIN = common dso_local global i64 0, align 8
@EBT_RETURN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NF_BR_NUMHOOKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nat\00", align 1
@NF_BR_PRE_ROUTING = common dso_local global i32 0, align 4
@NF_BR_LOCAL_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"broute\00", align 1
@NF_BR_BROUTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @ebt_dnat_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_dnat_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.ebt_nat_info*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 2
  %8 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %7, align 8
  store %struct.ebt_nat_info* %8, %struct.ebt_nat_info** %4, align 8
  %9 = load i64, i64* @BASE_CHAIN, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %4, align 8
  %13 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EBT_RETURN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %69

20:                                               ; preds = %11, %1
  %21 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %22 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %23, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %29 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NF_BR_PRE_ROUTING, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* @NF_BR_LOCAL_OUT, align 4
  %38 = shl i32 1, %37
  %39 = or i32 %36, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %34, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %33, %20
  %44 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %45 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @strcmp(i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @NF_BR_BROUTING, align 4
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49, %43
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %69

59:                                               ; preds = %49, %33
  %60 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %4, align 8
  %61 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @ebt_invalid_target(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %65, %56, %17
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @ebt_invalid_target(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
