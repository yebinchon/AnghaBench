; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_same_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_same_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i64, i64, %struct.list_set* }
%struct.list_set = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.ip_set*)* @list_set_same_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_set_same_set(%struct.ip_set* %0, %struct.ip_set* %1) #0 {
  %3 = alloca %struct.ip_set*, align 8
  %4 = alloca %struct.ip_set*, align 8
  %5 = alloca %struct.list_set*, align 8
  %6 = alloca %struct.list_set*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %3, align 8
  store %struct.ip_set* %1, %struct.ip_set** %4, align 8
  %7 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %8 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %7, i32 0, i32 2
  %9 = load %struct.list_set*, %struct.list_set** %8, align 8
  store %struct.list_set* %9, %struct.list_set** %5, align 8
  %10 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %11 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %10, i32 0, i32 2
  %12 = load %struct.list_set*, %struct.list_set** %11, align 8
  store %struct.list_set* %12, %struct.list_set** %6, align 8
  %13 = load %struct.list_set*, %struct.list_set** %5, align 8
  %14 = getelementptr inbounds %struct.list_set, %struct.list_set* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.list_set*, %struct.list_set** %6, align 8
  %17 = getelementptr inbounds %struct.list_set, %struct.list_set* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %22 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %25 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %30 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %33 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br label %36

36:                                               ; preds = %28, %20, %2
  %37 = phi i1 [ false, %20 ], [ false, %2 ], [ %35, %28 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
