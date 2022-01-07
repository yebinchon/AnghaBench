; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_check_nh.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_check_nh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib_nh = type { i64 }
%struct.netlink_ext_ack = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib_check_nh(%struct.net* %0, %struct.fib_nh* %1, i32 %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.fib_nh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.fib_nh* %1, %struct.fib_nh** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %12 = load %struct.fib_nh*, %struct.fib_nh** %7, align 8
  %13 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_INET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load %struct.net*, %struct.net** %6, align 8
  %19 = load %struct.fib_nh*, %struct.fib_nh** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %23 = call i32 @fib_check_nh_v4_gw(%struct.net* %18, %struct.fib_nh* %19, i32 %20, i32 %21, %struct.netlink_ext_ack* %22)
  store i32 %23, i32* %11, align 4
  br label %42

24:                                               ; preds = %5
  %25 = load %struct.fib_nh*, %struct.fib_nh** %7, align 8
  %26 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_INET6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.net*, %struct.net** %6, align 8
  %32 = load %struct.fib_nh*, %struct.fib_nh** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %35 = call i32 @fib_check_nh_v6_gw(%struct.net* %31, %struct.fib_nh* %32, i32 %33, %struct.netlink_ext_ack* %34)
  store i32 %35, i32* %11, align 4
  br label %41

36:                                               ; preds = %24
  %37 = load %struct.net*, %struct.net** %6, align 8
  %38 = load %struct.fib_nh*, %struct.fib_nh** %7, align 8
  %39 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %40 = call i32 @fib_check_nh_nongw(%struct.net* %37, %struct.fib_nh* %38, %struct.netlink_ext_ack* %39)
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %36, %30
  br label %42

42:                                               ; preds = %41, %17
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

declare dso_local i32 @fib_check_nh_v4_gw(%struct.net*, %struct.fib_nh*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @fib_check_nh_v6_gw(%struct.net*, %struct.fib_nh*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @fib_check_nh_nongw(%struct.net*, %struct.fib_nh*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
