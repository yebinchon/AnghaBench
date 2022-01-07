; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netiface.c_hash_netiface4_data_equal.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_hash_netiface.c_hash_netiface4_data_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_netiface4_elem = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_netiface4_elem*, %struct.hash_netiface4_elem*, i64*)* @hash_netiface4_data_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_netiface4_data_equal(%struct.hash_netiface4_elem* %0, %struct.hash_netiface4_elem* %1, i64* %2) #0 {
  %4 = alloca %struct.hash_netiface4_elem*, align 8
  %5 = alloca %struct.hash_netiface4_elem*, align 8
  %6 = alloca i64*, align 8
  store %struct.hash_netiface4_elem* %0, %struct.hash_netiface4_elem** %4, align 8
  store %struct.hash_netiface4_elem* %1, %struct.hash_netiface4_elem** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.hash_netiface4_elem*, %struct.hash_netiface4_elem** %4, align 8
  %8 = getelementptr inbounds %struct.hash_netiface4_elem, %struct.hash_netiface4_elem* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.hash_netiface4_elem*, %struct.hash_netiface4_elem** %5, align 8
  %11 = getelementptr inbounds %struct.hash_netiface4_elem, %struct.hash_netiface4_elem* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = load %struct.hash_netiface4_elem*, %struct.hash_netiface4_elem** %4, align 8
  %16 = getelementptr inbounds %struct.hash_netiface4_elem, %struct.hash_netiface4_elem* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hash_netiface4_elem*, %struct.hash_netiface4_elem** %5, align 8
  %19 = getelementptr inbounds %struct.hash_netiface4_elem, %struct.hash_netiface4_elem* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %14
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.hash_netiface4_elem*, %struct.hash_netiface4_elem** %4, align 8
  %29 = getelementptr inbounds %struct.hash_netiface4_elem, %struct.hash_netiface4_elem* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.hash_netiface4_elem*, %struct.hash_netiface4_elem** %5, align 8
  %32 = getelementptr inbounds %struct.hash_netiface4_elem, %struct.hash_netiface4_elem* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load %struct.hash_netiface4_elem*, %struct.hash_netiface4_elem** %4, align 8
  %37 = getelementptr inbounds %struct.hash_netiface4_elem, %struct.hash_netiface4_elem* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.hash_netiface4_elem*, %struct.hash_netiface4_elem** %5, align 8
  %40 = getelementptr inbounds %struct.hash_netiface4_elem, %struct.hash_netiface4_elem* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @strcmp(i32 %38, i32 %41)
  %43 = icmp eq i64 %42, 0
  br label %44

44:                                               ; preds = %35, %27, %22, %14, %3
  %45 = phi i1 [ false, %27 ], [ false, %22 ], [ false, %14 ], [ false, %3 ], [ %43, %35 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
