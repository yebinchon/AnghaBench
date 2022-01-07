; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_cache_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_cache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc6_cache = type { i32 }
%struct.mr_table = type { i32 }
%struct.in6_addr = type { i32 }
%struct.mfc6_cache_cmp_arg = type { %struct.in6_addr, %struct.in6_addr }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfc6_cache* (%struct.mr_table*, %struct.in6_addr*, %struct.in6_addr*)* @ip6mr_cache_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfc6_cache* @ip6mr_cache_find(%struct.mr_table* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.mr_table*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.mfc6_cache_cmp_arg, align 4
  store %struct.mr_table* %0, %struct.mr_table** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  %8 = getelementptr inbounds %struct.mfc6_cache_cmp_arg, %struct.mfc6_cache_cmp_arg* %7, i32 0, i32 0
  %9 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %10 = bitcast %struct.in6_addr* %8 to i8*
  %11 = bitcast %struct.in6_addr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = getelementptr inbounds %struct.mfc6_cache_cmp_arg, %struct.mfc6_cache_cmp_arg* %7, i32 0, i32 1
  %13 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %14 = bitcast %struct.in6_addr* %12 to i8*
  %15 = bitcast %struct.in6_addr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load %struct.mr_table*, %struct.mr_table** %4, align 8
  %17 = call %struct.mfc6_cache* @mr_mfc_find(%struct.mr_table* %16, %struct.mfc6_cache_cmp_arg* %7)
  ret %struct.mfc6_cache* %17
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.mfc6_cache* @mr_mfc_find(%struct.mr_table*, %struct.mfc6_cache_cmp_arg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
