; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c_ipv6_chk_acast_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c_ipv6_chk_acast_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { i32, %struct.ifacaddr6* }
%struct.ifacaddr6 = type { i32, %struct.ifacaddr6* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.in6_addr*)* @ipv6_chk_acast_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_chk_acast_dev(%struct.net_device* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.inet6_dev*, align 8
  %7 = alloca %struct.ifacaddr6*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %8)
  store %struct.inet6_dev* %9, %struct.inet6_dev** %6, align 8
  %10 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %11 = icmp ne %struct.inet6_dev* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %14 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %13, i32 0, i32 0
  %15 = call i32 @read_lock_bh(i32* %14)
  %16 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %17 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %16, i32 0, i32 1
  %18 = load %struct.ifacaddr6*, %struct.ifacaddr6** %17, align 8
  store %struct.ifacaddr6* %18, %struct.ifacaddr6** %7, align 8
  br label %19

19:                                               ; preds = %30, %12
  %20 = load %struct.ifacaddr6*, %struct.ifacaddr6** %7, align 8
  %21 = icmp ne %struct.ifacaddr6* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.ifacaddr6*, %struct.ifacaddr6** %7, align 8
  %24 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %23, i32 0, i32 0
  %25 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %26 = call i64 @ipv6_addr_equal(i32* %24, %struct.in6_addr* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %34

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.ifacaddr6*, %struct.ifacaddr6** %7, align 8
  %32 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %31, i32 0, i32 1
  %33 = load %struct.ifacaddr6*, %struct.ifacaddr6** %32, align 8
  store %struct.ifacaddr6* %33, %struct.ifacaddr6** %7, align 8
  br label %19

34:                                               ; preds = %28, %19
  %35 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %36 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %35, i32 0, i32 0
  %37 = call i32 @read_unlock_bh(i32* %36)
  %38 = load %struct.ifacaddr6*, %struct.ifacaddr6** %7, align 8
  %39 = icmp ne %struct.ifacaddr6* %38, null
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
