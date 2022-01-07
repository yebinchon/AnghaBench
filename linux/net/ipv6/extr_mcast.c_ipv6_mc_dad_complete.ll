; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ipv6_mc_dad_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ipv6_mc_dad_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_mc_dad_complete(%struct.inet6_dev* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %2, align 8
  %3 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %4 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %7 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %9 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %14 = call i32 @mld_send_initial_cr(%struct.inet6_dev* %13)
  %15 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %16 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %20 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %25 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %26 = call i32 @unsolicited_report_interval(%struct.inet6_dev* %25)
  %27 = call i32 @mld_dad_start_timer(%struct.inet6_dev* %24, i32 %26)
  br label %28

28:                                               ; preds = %23, %12
  br label %29

29:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @mld_send_initial_cr(%struct.inet6_dev*) #1

declare dso_local i32 @mld_dad_start_timer(%struct.inet6_dev*, i32) #1

declare dso_local i32 @unsolicited_report_interval(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
