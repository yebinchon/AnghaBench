; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_force_mld_version.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_force_mld_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet6_dev*)* @mld_force_mld_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mld_force_mld_version(%struct.inet6_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inet6_dev*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %3, align 8
  %4 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %5 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.TYPE_8__* @dev_net(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %16 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_8__* @dev_net(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %27 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.TYPE_8__* @dev_net(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
