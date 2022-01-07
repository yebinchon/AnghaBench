; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c_aca_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c_aca_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifacaddr6 = type { i32, i32, i32, i32, i32, %struct.fib6_info*, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.fib6_info = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifacaddr6* (%struct.fib6_info*, %struct.in6_addr*)* @aca_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifacaddr6* @aca_alloc(%struct.fib6_info* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.ifacaddr6*, align 8
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ifacaddr6*, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.ifacaddr6* @kzalloc(i32 40, i32 %7)
  store %struct.ifacaddr6* %8, %struct.ifacaddr6** %6, align 8
  %9 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %10 = icmp ne %struct.ifacaddr6* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.ifacaddr6* null, %struct.ifacaddr6** %3, align 8
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %14 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %13, i32 0, i32 6
  %15 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %16 = bitcast %struct.in6_addr* %14 to i8*
  %17 = bitcast %struct.in6_addr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %19 = call i32 @fib6_info_hold(%struct.fib6_info* %18)
  %20 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %21 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %22 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %21, i32 0, i32 5
  store %struct.fib6_info* %20, %struct.fib6_info** %22, align 8
  %23 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %24 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %23, i32 0, i32 4
  %25 = call i32 @INIT_HLIST_NODE(i32* %24)
  %26 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %27 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @jiffies, align 4
  %29 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %30 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %32 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %31, i32 0, i32 3
  store i32 %28, i32* %32, align 4
  %33 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %34 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %33, i32 0, i32 1
  %35 = call i32 @refcount_set(i32* %34, i32 1)
  %36 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  store %struct.ifacaddr6* %36, %struct.ifacaddr6** %3, align 8
  br label %37

37:                                               ; preds = %12, %11
  %38 = load %struct.ifacaddr6*, %struct.ifacaddr6** %3, align 8
  ret %struct.ifacaddr6* %38
}

declare dso_local %struct.ifacaddr6* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fib6_info_hold(%struct.fib6_info*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
