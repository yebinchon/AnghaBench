; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_nlmsg_size_single.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_nlmsg_size_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexthop = type { i32 }
%struct.nh_info = type { i32, %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nexthop*)* @nh_nlmsg_size_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nh_nlmsg_size_single(%struct.nexthop* %0) #0 {
  %2 = alloca %struct.nexthop*, align 8
  %3 = alloca %struct.nh_info*, align 8
  %4 = alloca i64, align 8
  store %struct.nexthop* %0, %struct.nexthop** %2, align 8
  %5 = load %struct.nexthop*, %struct.nexthop** %2, align 8
  %6 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.nh_info* @rtnl_dereference(i32 %7)
  store %struct.nh_info* %8, %struct.nh_info** %3, align 8
  %9 = call i64 @nla_total_size(i32 4)
  store i64 %9, i64* %4, align 8
  %10 = load %struct.nh_info*, %struct.nh_info** %3, align 8
  %11 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %35 [
    i32 129, label %13
    i32 128, label %24
  ]

13:                                               ; preds = %1
  %14 = load %struct.nh_info*, %struct.nh_info** %3, align 8
  %15 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = call i64 @nla_total_size(i32 4)
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %19, %13
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.nh_info*, %struct.nh_info** %3, align 8
  %26 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = call i64 @nla_total_size(i32 4)
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %1, %34, %23
  %36 = load %struct.nh_info*, %struct.nh_info** %3, align 8
  %37 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.nh_info*, %struct.nh_info** %3, align 8
  %43 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @lwtunnel_get_encap_size(i64 %45)
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %4, align 8
  %49 = call i64 @nla_total_size(i32 2)
  %50 = load i64, i64* %4, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %41, %35
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local %struct.nh_info* @rtnl_dereference(i32) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i64 @lwtunnel_get_encap_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
