; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_dst_update_pmtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_dst_update_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dn_route = type { %struct.neighbour* }
%struct.neighbour = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dn_dev = type { i64 }

@RTAX_MTU = common dso_local global i32 0, align 4
@dn_rt_mtu_expires = common dso_local global i32 0, align 4
@RTAX_ADVMSS = common dso_local global i32 0, align 4
@DN_MAX_NSP_DATA_HEADER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*, i64)* @dn_dst_update_pmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_dst_update_pmtu(%struct.dst_entry* %0, %struct.sock* %1, %struct.sk_buff* %2, i64 %3) #0 {
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dn_route*, align 8
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dn_dev*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %16 = bitcast %struct.dst_entry* %15 to %struct.dn_route*
  store %struct.dn_route* %16, %struct.dn_route** %9, align 8
  %17 = load %struct.dn_route*, %struct.dn_route** %9, align 8
  %18 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %17, i32 0, i32 0
  %19 = load %struct.neighbour*, %struct.neighbour** %18, align 8
  store %struct.neighbour* %19, %struct.neighbour** %10, align 8
  store i64 230, i64* %11, align 8
  %20 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %21 = icmp ne %struct.neighbour* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %24 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.dn_dev* @rcu_dereference_raw(i32 %27)
  br label %30

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %22
  %31 = phi %struct.dn_dev* [ %28, %22 ], [ null, %29 ]
  store %struct.dn_dev* %31, %struct.dn_dev** %12, align 8
  %32 = load %struct.dn_dev*, %struct.dn_dev** %12, align 8
  %33 = icmp ne %struct.dn_dev* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.dn_dev*, %struct.dn_dev** %12, align 8
  %36 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i64, i64* %11, align 8
  %41 = sub nsw i64 %40, 6
  store i64 %41, i64* %11, align 8
  br label %45

42:                                               ; preds = %34, %30
  %43 = load i64, i64* %11, align 8
  %44 = sub nsw i64 %43, 21
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %47 = load i32, i32* @RTAX_MTU, align 4
  %48 = call i64 @dst_metric(%struct.dst_entry* %46, i32 %47)
  %49 = load i64, i64* %8, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %45
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %93

55:                                               ; preds = %51
  %56 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %57 = load i32, i32* @RTAX_MTU, align 4
  %58 = call i32 @dst_metric_locked(%struct.dst_entry* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %62 = load i32, i32* @RTAX_MTU, align 4
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @dst_metric_set(%struct.dst_entry* %61, i32 %62, i64 %63)
  %65 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %66 = load i32, i32* @dn_rt_mtu_expires, align 4
  %67 = call i32 @dst_set_expires(%struct.dst_entry* %65, i32 %66)
  br label %68

68:                                               ; preds = %60, %55
  %69 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %70 = load i32, i32* @RTAX_ADVMSS, align 4
  %71 = call i32 @dst_metric_locked(%struct.dst_entry* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @DN_MAX_NSP_DATA_HEADER, align 8
  %76 = sub nsw i64 %74, %75
  store i64 %76, i64* %13, align 8
  %77 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %78 = load i32, i32* @RTAX_ADVMSS, align 4
  %79 = call i64 @dst_metric_raw(%struct.dst_entry* %77, i32 %78)
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82, %73
  %87 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %88 = load i32, i32* @RTAX_ADVMSS, align 4
  %89 = load i64, i64* %13, align 8
  %90 = call i32 @dst_metric_set(%struct.dst_entry* %87, i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %86, %82
  br label %92

92:                                               ; preds = %91, %68
  br label %93

93:                                               ; preds = %92, %51, %45
  ret void
}

declare dso_local %struct.dn_dev* @rcu_dereference_raw(i32) #1

declare dso_local i64 @dst_metric(%struct.dst_entry*, i32) #1

declare dso_local i32 @dst_metric_locked(%struct.dst_entry*, i32) #1

declare dso_local i32 @dst_metric_set(%struct.dst_entry*, i32, i64) #1

declare dso_local i32 @dst_set_expires(%struct.dst_entry*, i32) #1

declare dso_local i64 @dst_metric_raw(%struct.dst_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
