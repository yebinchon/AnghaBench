; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c___xfrm6_init_tempsel.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c___xfrm6_init_tempsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_selector = type { i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i32 }
%struct.flowi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.flowi6 }
%struct.flowi6 = type { i32, i32, i32, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_selector*, %struct.flowi*)* @__xfrm6_init_tempsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfrm6_init_tempsel(%struct.xfrm_selector* %0, %struct.flowi* %1) #0 {
  %3 = alloca %struct.xfrm_selector*, align 8
  %4 = alloca %struct.flowi*, align 8
  %5 = alloca %struct.flowi6*, align 8
  store %struct.xfrm_selector* %0, %struct.xfrm_selector** %3, align 8
  store %struct.flowi* %1, %struct.flowi** %4, align 8
  %6 = load %struct.flowi*, %struct.flowi** %4, align 8
  %7 = getelementptr inbounds %struct.flowi, %struct.flowi* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.flowi6* %8, %struct.flowi6** %5, align 8
  %9 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %10 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %9, i32 0, i32 10
  %11 = bitcast i32* %10 to %struct.in6_addr*
  %12 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %13 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 4
  %14 = bitcast %struct.in6_addr* %11 to i8*
  %15 = bitcast %struct.in6_addr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %17 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %16, i32 0, i32 9
  %18 = bitcast i32* %17 to %struct.in6_addr*
  %19 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %20 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %19, i32 0, i32 3
  %21 = bitcast %struct.in6_addr* %18 to i8*
  %22 = bitcast %struct.in6_addr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.flowi*, %struct.flowi** %4, align 8
  %24 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %25 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %24, i32 0, i32 2
  %26 = call i32 @xfrm_flowi_dport(%struct.flowi* %23, i32* %25)
  %27 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %28 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 8
  %29 = call i8* @htons(i32 65535)
  %30 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %31 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %30, i32 0, i32 7
  store i8* %29, i8** %31, align 8
  %32 = load %struct.flowi*, %struct.flowi** %4, align 8
  %33 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %34 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %33, i32 0, i32 2
  %35 = call i32 @xfrm_flowi_sport(%struct.flowi* %32, i32* %34)
  %36 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %37 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = call i8* @htons(i32 65535)
  %39 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %40 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @AF_INET6, align 4
  %42 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %43 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %45 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %44, i32 0, i32 0
  store i32 128, i32* %45, align 8
  %46 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %47 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %46, i32 0, i32 1
  store i32 128, i32* %47, align 4
  %48 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %49 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %52 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %54 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %57 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @xfrm_flowi_dport(%struct.flowi*, i32*) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @xfrm_flowi_sport(%struct.flowi*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
