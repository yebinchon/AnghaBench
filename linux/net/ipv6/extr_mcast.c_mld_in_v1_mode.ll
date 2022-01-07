; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_in_v1_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_in_v1_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet6_dev*)* @mld_in_v1_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mld_in_v1_mode(%struct.inet6_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inet6_dev*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %3, align 8
  %4 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %5 = call i64 @mld_in_v2_mode_only(%struct.inet6_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

8:                                                ; preds = %1
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %10 = call i64 @mld_in_v1_mode_only(%struct.inet6_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %27

13:                                               ; preds = %8
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %15 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i32, i32* @jiffies, align 4
  %20 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %21 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @time_before(i32 %19, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %18, %13
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %12, %7
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @mld_in_v2_mode_only(%struct.inet6_dev*) #1

declare dso_local i64 @mld_in_v1_mode_only(%struct.inet6_dev*) #1

declare dso_local i64 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
