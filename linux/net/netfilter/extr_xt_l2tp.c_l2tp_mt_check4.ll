; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_l2tp.c_l2tp_mt_check4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_l2tp.c_l2tp_mt_check4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.ipt_entry*, %struct.xt_l2tp_info* }
%struct.ipt_entry = type { %struct.ipt_ip }
%struct.ipt_ip = type { i64 }
%struct.xt_l2tp_info = type { i32 }

@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_L2TP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"missing protocol rule (udp|l2tpip)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"v2 doesn't support IP mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @l2tp_mt_check4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_mt_check4(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_l2tp_info*, align 8
  %5 = alloca %struct.ipt_entry*, align 8
  %6 = alloca %struct.ipt_ip*, align 8
  %7 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %8 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %9 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %8, i32 0, i32 1
  %10 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %9, align 8
  store %struct.xt_l2tp_info* %10, %struct.xt_l2tp_info** %4, align 8
  %11 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %12 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %11, i32 0, i32 0
  %13 = load %struct.ipt_entry*, %struct.ipt_entry** %12, align 8
  store %struct.ipt_entry* %13, %struct.ipt_entry** %5, align 8
  %14 = load %struct.ipt_entry*, %struct.ipt_entry** %5, align 8
  %15 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %14, i32 0, i32 0
  store %struct.ipt_ip* %15, %struct.ipt_ip** %6, align 8
  %16 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %17 = call i32 @l2tp_mt_check(%struct.xt_mtchk_param* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %1
  %23 = load %struct.ipt_ip*, %struct.ipt_ip** %6, align 8
  %24 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IPPROTO_UDP, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.ipt_ip*, %struct.ipt_ip** %6, align 8
  %30 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IPPROTO_L2TP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %54

38:                                               ; preds = %28, %22
  %39 = load %struct.ipt_ip*, %struct.ipt_ip** %6, align 8
  %40 = getelementptr inbounds %struct.ipt_ip, %struct.ipt_ip* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IPPROTO_L2TP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %4, align 8
  %46 = getelementptr inbounds %struct.xt_l2tp_info, %struct.xt_l2tp_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %44, %38
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %49, %34, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @l2tp_mt_check(%struct.xt_mtchk_param*) #1

declare dso_local i32 @pr_info_ratelimited(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
