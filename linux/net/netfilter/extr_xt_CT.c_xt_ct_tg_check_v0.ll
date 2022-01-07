; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CT.c_xt_ct_tg_check_v0.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CT.c_xt_ct_tg_check_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.xt_ct_target_info* }
%struct.xt_ct_target_info = type { i32, i32, i32, i32, i32, i32 }
%struct.xt_ct_target_info_v1 = type { i32, i32, i32, i32, i32, i32 }

@XT_CT_NOTRACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @xt_ct_tg_check_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_ct_tg_check_v0(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_ct_target_info*, align 8
  %5 = alloca %struct.xt_ct_target_info_v1, align 4
  %6 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %7 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %8 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %7, i32 0, i32 0
  %9 = load %struct.xt_ct_target_info*, %struct.xt_ct_target_info** %8, align 8
  store %struct.xt_ct_target_info* %9, %struct.xt_ct_target_info** %4, align 8
  %10 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %5, i32 0, i32 0
  %11 = load %struct.xt_ct_target_info*, %struct.xt_ct_target_info** %4, align 8
  %12 = getelementptr inbounds %struct.xt_ct_target_info, %struct.xt_ct_target_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %5, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %5, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %5, i32 0, i32 3
  %17 = load %struct.xt_ct_target_info*, %struct.xt_ct_target_info** %4, align 8
  %18 = getelementptr inbounds %struct.xt_ct_target_info, %struct.xt_ct_target_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %5, i32 0, i32 4
  %21 = load %struct.xt_ct_target_info*, %struct.xt_ct_target_info** %4, align 8
  %22 = getelementptr inbounds %struct.xt_ct_target_info, %struct.xt_ct_target_info* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %5, i32 0, i32 5
  %25 = load %struct.xt_ct_target_info*, %struct.xt_ct_target_info** %4, align 8
  %26 = getelementptr inbounds %struct.xt_ct_target_info, %struct.xt_ct_target_info* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = load %struct.xt_ct_target_info*, %struct.xt_ct_target_info** %4, align 8
  %29 = getelementptr inbounds %struct.xt_ct_target_info, %struct.xt_ct_target_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XT_CT_NOTRACK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %57

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %5, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xt_ct_target_info*, %struct.xt_ct_target_info** %4, align 8
  %42 = getelementptr inbounds %struct.xt_ct_target_info, %struct.xt_ct_target_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %40, i32 %43, i32 4)
  %45 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %46 = call i32 @xt_ct_tg_check(%struct.xt_tgchk_param* %45, %struct.xt_ct_target_info_v1* %5)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %57

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %5, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.xt_ct_target_info*, %struct.xt_ct_target_info** %4, align 8
  %55 = getelementptr inbounds %struct.xt_ct_target_info, %struct.xt_ct_target_info* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %49, %35
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @xt_ct_tg_check(%struct.xt_tgchk_param*, %struct.xt_ct_target_info_v1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
