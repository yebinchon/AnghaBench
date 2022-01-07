; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netport.c_hash_netport4_data_equal.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netport.c_hash_netport4_data_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_netport4_elem = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_netport4_elem*, %struct.hash_netport4_elem*, i32*)* @hash_netport4_data_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_netport4_data_equal(%struct.hash_netport4_elem* %0, %struct.hash_netport4_elem* %1, i32* %2) #0 {
  %4 = alloca %struct.hash_netport4_elem*, align 8
  %5 = alloca %struct.hash_netport4_elem*, align 8
  %6 = alloca i32*, align 8
  store %struct.hash_netport4_elem* %0, %struct.hash_netport4_elem** %4, align 8
  store %struct.hash_netport4_elem* %1, %struct.hash_netport4_elem** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.hash_netport4_elem*, %struct.hash_netport4_elem** %4, align 8
  %8 = getelementptr inbounds %struct.hash_netport4_elem, %struct.hash_netport4_elem* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.hash_netport4_elem*, %struct.hash_netport4_elem** %5, align 8
  %11 = getelementptr inbounds %struct.hash_netport4_elem, %struct.hash_netport4_elem* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load %struct.hash_netport4_elem*, %struct.hash_netport4_elem** %4, align 8
  %16 = getelementptr inbounds %struct.hash_netport4_elem, %struct.hash_netport4_elem* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hash_netport4_elem*, %struct.hash_netport4_elem** %5, align 8
  %19 = getelementptr inbounds %struct.hash_netport4_elem, %struct.hash_netport4_elem* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %14
  %23 = load %struct.hash_netport4_elem*, %struct.hash_netport4_elem** %4, align 8
  %24 = getelementptr inbounds %struct.hash_netport4_elem, %struct.hash_netport4_elem* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.hash_netport4_elem*, %struct.hash_netport4_elem** %5, align 8
  %27 = getelementptr inbounds %struct.hash_netport4_elem, %struct.hash_netport4_elem* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.hash_netport4_elem*, %struct.hash_netport4_elem** %4, align 8
  %32 = getelementptr inbounds %struct.hash_netport4_elem, %struct.hash_netport4_elem* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.hash_netport4_elem*, %struct.hash_netport4_elem** %5, align 8
  %35 = getelementptr inbounds %struct.hash_netport4_elem, %struct.hash_netport4_elem* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br label %38

38:                                               ; preds = %30, %22, %14, %3
  %39 = phi i1 [ false, %22 ], [ false, %14 ], [ false, %3 ], [ %37, %30 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
