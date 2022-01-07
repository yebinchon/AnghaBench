; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_cache_find_any.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_cache_find_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc6_cache = type { i32 }
%struct.mr_table = type { i32 }
%struct.in6_addr = type { i32 }
%struct.mfc6_cache_cmp_arg = type { %struct.in6_addr, i32 }

@in6addr_any = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfc6_cache* (%struct.mr_table*, %struct.in6_addr*, i32)* @ip6mr_cache_find_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfc6_cache* @ip6mr_cache_find_any(%struct.mr_table* %0, %struct.in6_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.mfc6_cache*, align 8
  %5 = alloca %struct.mr_table*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mfc6_cache_cmp_arg, align 4
  store %struct.mr_table* %0, %struct.mr_table** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = getelementptr inbounds %struct.mfc6_cache_cmp_arg, %struct.mfc6_cache_cmp_arg* %8, i32 0, i32 0
  %10 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %11 = bitcast %struct.in6_addr* %9 to i8*
  %12 = bitcast %struct.in6_addr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = getelementptr inbounds %struct.mfc6_cache_cmp_arg, %struct.mfc6_cache_cmp_arg* %8, i32 0, i32 1
  %14 = load i32, i32* @in6addr_any, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %16 = call i64 @ipv6_addr_any(%struct.in6_addr* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.mfc6_cache* @mr_mfc_find_any_parent(%struct.mr_table* %19, i32 %20)
  store %struct.mfc6_cache* %21, %struct.mfc6_cache** %4, align 8
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.mfc6_cache* @mr_mfc_find_any(%struct.mr_table* %23, i32 %24, %struct.mfc6_cache_cmp_arg* %8)
  store %struct.mfc6_cache* %25, %struct.mfc6_cache** %4, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  ret %struct.mfc6_cache* %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ipv6_addr_any(%struct.in6_addr*) #2

declare dso_local %struct.mfc6_cache* @mr_mfc_find_any_parent(%struct.mr_table*, i32) #2

declare dso_local %struct.mfc6_cache* @mr_mfc_find_any(%struct.mr_table*, i32, %struct.mfc6_cache_cmp_arg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
