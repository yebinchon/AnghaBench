; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_target_v3_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_target_v3_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgdtor_param = type { i32, %struct.xt_set_info_target_v3* }
%struct.xt_set_info_target_v3 = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xt_tgdtor_param*)* @set_target_v3_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_target_v3_destroy(%struct.xt_tgdtor_param* %0) #0 {
  %2 = alloca %struct.xt_tgdtor_param*, align 8
  %3 = alloca %struct.xt_set_info_target_v3*, align 8
  store %struct.xt_tgdtor_param* %0, %struct.xt_tgdtor_param** %2, align 8
  %4 = load %struct.xt_tgdtor_param*, %struct.xt_tgdtor_param** %2, align 8
  %5 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %4, i32 0, i32 1
  %6 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %5, align 8
  store %struct.xt_set_info_target_v3* %6, %struct.xt_set_info_target_v3** %3, align 8
  %7 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %3, align 8
  %8 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IPSET_INVALID_ID, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.xt_tgdtor_param*, %struct.xt_tgdtor_param** %2, align 8
  %15 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %3, align 8
  %18 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ip_set_nfnl_put(i32 %16, i64 %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %3, align 8
  %24 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IPSET_INVALID_ID, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.xt_tgdtor_param*, %struct.xt_tgdtor_param** %2, align 8
  %31 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %3, align 8
  %34 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ip_set_nfnl_put(i32 %32, i64 %36)
  br label %38

38:                                               ; preds = %29, %22
  %39 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %3, align 8
  %40 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IPSET_INVALID_ID, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.xt_tgdtor_param*, %struct.xt_tgdtor_param** %2, align 8
  %47 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %3, align 8
  %50 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @ip_set_nfnl_put(i32 %48, i64 %52)
  br label %54

54:                                               ; preds = %45, %38
  ret void
}

declare dso_local i32 @ip_set_nfnl_put(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
