; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CT.c_xt_ct_find_proto.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CT.c_xt_ct_find_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i64, %struct.ipt_entry* }
%struct.ipt_entry = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ip6t_entry = type { %struct.TYPE_4__, %struct.TYPE_3__ }

@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@IPT_INV_PROTO = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i64 0, align 8
@IP6T_INV_PROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @xt_ct_find_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_ct_find_proto(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.ipt_entry*, align 8
  %5 = alloca %struct.ip6t_entry*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NFPROTO_IPV4, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %13 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %12, i32 0, i32 1
  %14 = load %struct.ipt_entry*, %struct.ipt_entry** %13, align 8
  store %struct.ipt_entry* %14, %struct.ipt_entry** %4, align 8
  %15 = load %struct.ipt_entry*, %struct.ipt_entry** %4, align 8
  %16 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IPT_INV_PROTO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %53

23:                                               ; preds = %11
  %24 = load %struct.ipt_entry*, %struct.ipt_entry** %4, align 8
  %25 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %2, align 4
  br label %53

28:                                               ; preds = %1
  %29 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %30 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NFPROTO_IPV6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %36 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %35, i32 0, i32 1
  %37 = load %struct.ipt_entry*, %struct.ipt_entry** %36, align 8
  %38 = bitcast %struct.ipt_entry* %37 to %struct.ip6t_entry*
  store %struct.ip6t_entry* %38, %struct.ip6t_entry** %5, align 8
  %39 = load %struct.ip6t_entry*, %struct.ip6t_entry** %5, align 8
  %40 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IP6T_INV_PROTO, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %53

47:                                               ; preds = %34
  %48 = load %struct.ip6t_entry*, %struct.ip6t_entry** %5, align 8
  %49 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %47, %46, %23, %22
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
