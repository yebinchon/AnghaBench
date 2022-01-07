; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.flowi6 = type { i32, i32, %struct.in6_addr }
%struct.dst_entry = type { i64 }

@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_HAS_SADDR = common dso_local global i32 0, align 4
@ip6_pol_route_lookup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rt6_info* @rt6_lookup(%struct.net* %0, %struct.in6_addr* %1, %struct.in6_addr* %2, i32 %3, %struct.sk_buff* %4, i32 %5) #0 {
  %7 = alloca %struct.rt6_info*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.flowi6, align 4
  %15 = alloca %struct.dst_entry*, align 8
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %9, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %14, i32 0, i32 0
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %14, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %14, i32 0, i32 2
  %21 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %22 = bitcast %struct.in6_addr* %20 to i8*
  %23 = bitcast %struct.in6_addr* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  br label %29

28:                                               ; preds = %6
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %16, align 4
  %31 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %32 = icmp ne %struct.in6_addr* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %14, i32 0, i32 1
  %35 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %36 = call i32 @memcpy(i32* %34, %struct.in6_addr* %35, i32 4)
  %37 = load i32, i32* @RT6_LOOKUP_F_HAS_SADDR, align 4
  %38 = load i32, i32* %16, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %33, %29
  %41 = load %struct.net*, %struct.net** %8, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @ip6_pol_route_lookup, align 4
  %45 = call %struct.dst_entry* @fib6_rule_lookup(%struct.net* %41, %struct.flowi6* %14, %struct.sk_buff* %42, i32 %43, i32 %44)
  store %struct.dst_entry* %45, %struct.dst_entry** %15, align 8
  %46 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %47 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %52 = bitcast %struct.dst_entry* %51 to %struct.rt6_info*
  store %struct.rt6_info* %52, %struct.rt6_info** %7, align 8
  br label %56

53:                                               ; preds = %40
  %54 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %55 = call i32 @dst_release(%struct.dst_entry* %54)
  store %struct.rt6_info* null, %struct.rt6_info** %7, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  ret %struct.rt6_info* %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, %struct.in6_addr*, i32) #2

declare dso_local %struct.dst_entry* @fib6_rule_lookup(%struct.net*, %struct.flowi6*, %struct.sk_buff*, i32, i32) #2

declare dso_local i32 @dst_release(%struct.dst_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
