; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_dst_lookup_flow.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_dst_lookup_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.sock = type { i32 }
%struct.flowi6 = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock* %0, %struct.flowi6* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.flowi6*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.flowi6* %1, %struct.flowi6** %6, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %8, align 8
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call i32 @sock_net(%struct.sock* %10)
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %14 = call i32 @ip6_dst_lookup_tail(i32 %11, %struct.sock* %12, %struct.dst_entry** %8, %struct.flowi6* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.dst_entry* @ERR_PTR(i32 %18)
  store %struct.dst_entry* %19, %struct.dst_entry** %4, align 8
  br label %37

20:                                               ; preds = %3
  %21 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %22 = icmp ne %struct.in6_addr* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %25 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %24, i32 0, i32 0
  %26 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %27 = bitcast %struct.in6_addr* %25 to i8*
  %28 = bitcast %struct.in6_addr* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  br label %29

29:                                               ; preds = %23, %20
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = call i32 @sock_net(%struct.sock* %30)
  %32 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %33 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %34 = call i32 @flowi6_to_flowi(%struct.flowi6* %33)
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call %struct.dst_entry* @xfrm_lookup_route(i32 %31, %struct.dst_entry* %32, i32 %34, %struct.sock* %35, i32 0)
  store %struct.dst_entry* %36, %struct.dst_entry** %4, align 8
  br label %37

37:                                               ; preds = %29, %17
  %38 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  ret %struct.dst_entry* %38
}

declare dso_local i32 @ip6_dst_lookup_tail(i32, %struct.sock*, %struct.dst_entry**, %struct.flowi6*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.dst_entry* @ERR_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.dst_entry* @xfrm_lookup_route(i32, %struct.dst_entry*, i32, %struct.sock*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
