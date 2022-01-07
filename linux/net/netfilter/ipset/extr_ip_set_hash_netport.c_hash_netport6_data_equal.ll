; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netport.c_hash_netport6_data_equal.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netport.c_hash_netport6_data_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_netport6_elem = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_netport6_elem*, %struct.hash_netport6_elem*, i32*)* @hash_netport6_data_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_netport6_data_equal(%struct.hash_netport6_elem* %0, %struct.hash_netport6_elem* %1, i32* %2) #0 {
  %4 = alloca %struct.hash_netport6_elem*, align 8
  %5 = alloca %struct.hash_netport6_elem*, align 8
  %6 = alloca i32*, align 8
  store %struct.hash_netport6_elem* %0, %struct.hash_netport6_elem** %4, align 8
  store %struct.hash_netport6_elem* %1, %struct.hash_netport6_elem** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %4, align 8
  %8 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %5, align 8
  %11 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i64 @ipv6_addr_equal(i32* %9, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %4, align 8
  %17 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %5, align 8
  %20 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %15
  %24 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %4, align 8
  %25 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %5, align 8
  %28 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %4, align 8
  %33 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %5, align 8
  %36 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br label %39

39:                                               ; preds = %31, %23, %15, %3
  %40 = phi i1 [ false, %23 ], [ false, %15 ], [ false, %3 ], [ %38, %31 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

declare dso_local i64 @ipv6_addr_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
