; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_mtu_change_route_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_mtu_change_route_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rt6_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet6_dev*, %struct.rt6_info*, i32)* @rt6_mtu_change_route_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt6_mtu_change_route_allowed(%struct.inet6_dev* %0, %struct.rt6_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet6_dev*, align 8
  %6 = alloca %struct.rt6_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inet6_dev* %0, %struct.inet6_dev** %5, align 8
  store %struct.rt6_info* %1, %struct.rt6_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %9 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %8, i32 0, i32 0
  %10 = call i32 @dst_mtu(i32* %9)
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %25

14:                                               ; preds = %3
  %15 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %16 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %15, i32 0, i32 0
  %17 = call i32 @dst_mtu(i32* %16)
  %18 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %19 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %25

24:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %23, %13
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @dst_mtu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
