; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netnet.c_hash_netnet6_data_equal.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netnet.c_hash_netnet6_data_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_netnet6_elem = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_netnet6_elem*, %struct.hash_netnet6_elem*, i32*)* @hash_netnet6_data_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_netnet6_data_equal(%struct.hash_netnet6_elem* %0, %struct.hash_netnet6_elem* %1, i32* %2) #0 {
  %4 = alloca %struct.hash_netnet6_elem*, align 8
  %5 = alloca %struct.hash_netnet6_elem*, align 8
  %6 = alloca i32*, align 8
  store %struct.hash_netnet6_elem* %0, %struct.hash_netnet6_elem** %4, align 8
  store %struct.hash_netnet6_elem* %1, %struct.hash_netnet6_elem** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.hash_netnet6_elem*, %struct.hash_netnet6_elem** %4, align 8
  %8 = getelementptr inbounds %struct.hash_netnet6_elem, %struct.hash_netnet6_elem* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.hash_netnet6_elem*, %struct.hash_netnet6_elem** %5, align 8
  %13 = getelementptr inbounds %struct.hash_netnet6_elem, %struct.hash_netnet6_elem* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i64 @ipv6_addr_equal(i32* %11, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %3
  %20 = load %struct.hash_netnet6_elem*, %struct.hash_netnet6_elem** %4, align 8
  %21 = getelementptr inbounds %struct.hash_netnet6_elem, %struct.hash_netnet6_elem* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.hash_netnet6_elem*, %struct.hash_netnet6_elem** %5, align 8
  %26 = getelementptr inbounds %struct.hash_netnet6_elem, %struct.hash_netnet6_elem* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i64 @ipv6_addr_equal(i32* %24, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load %struct.hash_netnet6_elem*, %struct.hash_netnet6_elem** %4, align 8
  %34 = getelementptr inbounds %struct.hash_netnet6_elem, %struct.hash_netnet6_elem* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.hash_netnet6_elem*, %struct.hash_netnet6_elem** %5, align 8
  %37 = getelementptr inbounds %struct.hash_netnet6_elem, %struct.hash_netnet6_elem* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br label %40

40:                                               ; preds = %32, %19, %3
  %41 = phi i1 [ false, %19 ], [ false, %3 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local i64 @ipv6_addr_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
