; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_rt_set_next_hop.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_rt_set_next_hop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_route = type { %struct.TYPE_7__, %struct.neighbour*, i64, i32 }
%struct.TYPE_7__ = type { %struct.net_device* }
%struct.net_device = type { i64 }
%struct.neighbour = type { i32 }
%struct.dn_fib_res = type { i32, %struct.dn_fib_info* }
%struct.dn_fib_info = type { i32 }
%struct.TYPE_8__ = type { i64 }

@RT_SCOPE_LINK = common dso_local global i64 0, align 8
@dn_neigh_table = common dso_local global i32 0, align 4
@RTAX_MTU = common dso_local global i32 0, align 4
@RTAX_ADVMSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_route*, %struct.dn_fib_res*)* @dn_rt_set_next_hop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_rt_set_next_hop(%struct.dn_route* %0, %struct.dn_fib_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dn_route*, align 8
  %5 = alloca %struct.dn_fib_res*, align 8
  %6 = alloca %struct.dn_fib_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.neighbour*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i32, align 4
  store %struct.dn_route* %0, %struct.dn_route** %4, align 8
  store %struct.dn_fib_res* %1, %struct.dn_fib_res** %5, align 8
  %12 = load %struct.dn_fib_res*, %struct.dn_fib_res** %5, align 8
  %13 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %12, i32 0, i32 1
  %14 = load %struct.dn_fib_info*, %struct.dn_fib_info** %13, align 8
  store %struct.dn_fib_info* %14, %struct.dn_fib_info** %6, align 8
  %15 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %16 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %7, align 8
  %19 = load %struct.dn_fib_info*, %struct.dn_fib_info** %6, align 8
  %20 = icmp ne %struct.dn_fib_info* %19, null
  br i1 %20, label %21, label %60

21:                                               ; preds = %2
  %22 = load %struct.dn_fib_res*, %struct.dn_fib_res** %5, align 8
  %23 = bitcast %struct.dn_fib_res* %22 to { i32, %struct.dn_fib_info* }*
  %24 = getelementptr inbounds { i32, %struct.dn_fib_info* }, { i32, %struct.dn_fib_info* }* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds { i32, %struct.dn_fib_info* }, { i32, %struct.dn_fib_info* }* %23, i32 0, i32 1
  %27 = load %struct.dn_fib_info*, %struct.dn_fib_info** %26, align 8
  %28 = call i64 @DN_FIB_RES_GW(i32 %25, %struct.dn_fib_info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %21
  %31 = load %struct.dn_fib_res*, %struct.dn_fib_res** %5, align 8
  %32 = bitcast %struct.dn_fib_res* %31 to { i32, %struct.dn_fib_info* }*
  %33 = getelementptr inbounds { i32, %struct.dn_fib_info* }, { i32, %struct.dn_fib_info* }* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds { i32, %struct.dn_fib_info* }, { i32, %struct.dn_fib_info* }* %32, i32 0, i32 1
  %36 = load %struct.dn_fib_info*, %struct.dn_fib_info** %35, align 8
  %37 = call i64 @DN_FIB_RES_NH(i32 %34, %struct.dn_fib_info* %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RT_SCOPE_LINK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %30
  %44 = load %struct.dn_fib_res*, %struct.dn_fib_res** %5, align 8
  %45 = bitcast %struct.dn_fib_res* %44 to { i32, %struct.dn_fib_info* }*
  %46 = getelementptr inbounds { i32, %struct.dn_fib_info* }, { i32, %struct.dn_fib_info* }* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds { i32, %struct.dn_fib_info* }, { i32, %struct.dn_fib_info* }* %45, i32 0, i32 1
  %49 = load %struct.dn_fib_info*, %struct.dn_fib_info** %48, align 8
  %50 = call i64 @DN_FIB_RES_GW(i32 %47, %struct.dn_fib_info* %49)
  %51 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %52 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %43, %30, %21
  %54 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %55 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %54, i32 0, i32 0
  %56 = load %struct.dn_fib_info*, %struct.dn_fib_info** %6, align 8
  %57 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dst_init_metrics(%struct.TYPE_7__* %55, i32 %58, i32 1)
  br label %60

60:                                               ; preds = %53, %2
  %61 = load %struct.dn_fib_res*, %struct.dn_fib_res** %5, align 8
  %62 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %65 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %7, align 8
  %67 = icmp ne %struct.net_device* %66, null
  br i1 %67, label %68, label %88

68:                                               ; preds = %60
  %69 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %70 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %69, i32 0, i32 1
  %71 = load %struct.neighbour*, %struct.neighbour** %70, align 8
  %72 = icmp eq %struct.neighbour* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %75 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %74, i32 0, i32 2
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = call %struct.neighbour* @__neigh_lookup_errno(i32* @dn_neigh_table, i64* %75, %struct.net_device* %76)
  store %struct.neighbour* %77, %struct.neighbour** %9, align 8
  %78 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %79 = call i64 @IS_ERR(%struct.neighbour* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %83 = call i32 @PTR_ERR(%struct.neighbour* %82)
  store i32 %83, i32* %3, align 4
  br label %136

84:                                               ; preds = %73
  %85 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %86 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %87 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %86, i32 0, i32 1
  store %struct.neighbour* %85, %struct.neighbour** %87, align 8
  br label %88

88:                                               ; preds = %84, %68, %60
  %89 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %90 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %89, i32 0, i32 0
  %91 = load i32, i32* @RTAX_MTU, align 4
  %92 = call i64 @dst_metric(%struct.TYPE_7__* %90, i32 %91)
  %93 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %94 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.net_device*, %struct.net_device** %95, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %92, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %88
  %101 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %102 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %101, i32 0, i32 0
  %103 = load i32, i32* @RTAX_MTU, align 4
  %104 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %105 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load %struct.net_device*, %struct.net_device** %106, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @dst_metric_set(%struct.TYPE_7__* %102, i32 %103, i32 %110)
  br label %112

112:                                              ; preds = %100, %88
  %113 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %114 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %113, i32 0, i32 0
  %115 = load i32, i32* @RTAX_ADVMSS, align 4
  %116 = call i32 @dst_metric_raw(%struct.TYPE_7__* %114, i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %112
  %120 = load %struct.net_device*, %struct.net_device** %7, align 8
  %121 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %122 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %121, i32 0, i32 0
  %123 = call i32 @dst_mtu(%struct.TYPE_7__* %122)
  %124 = call i32 @dn_mss_from_pmtu(%struct.net_device* %120, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ugt i32 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %119
  %129 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %130 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %129, i32 0, i32 0
  %131 = load i32, i32* @RTAX_ADVMSS, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @dst_metric_set(%struct.TYPE_7__* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %128, %119
  br label %135

135:                                              ; preds = %134, %112
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %81
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i64 @DN_FIB_RES_GW(i32, %struct.dn_fib_info*) #1

declare dso_local i64 @DN_FIB_RES_NH(i32, %struct.dn_fib_info*) #1

declare dso_local i32 @dst_init_metrics(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.neighbour* @__neigh_lookup_errno(i32*, i64*, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @PTR_ERR(%struct.neighbour*) #1

declare dso_local i64 @dst_metric(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dst_metric_set(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dst_metric_raw(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dn_mss_from_pmtu(%struct.net_device*, i32) #1

declare dso_local i32 @dst_mtu(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
