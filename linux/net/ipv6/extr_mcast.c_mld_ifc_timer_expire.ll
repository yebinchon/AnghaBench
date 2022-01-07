; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_ifc_timer_expire.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_ifc_timer_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i64 }
%struct.timer_list = type { i32 }

@mc_ifc_timer = common dso_local global i32 0, align 4
@idev = common dso_local global %struct.inet6_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @mld_ifc_timer_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mld_ifc_timer_expire(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.inet6_dev*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %5 = ptrtoint %struct.inet6_dev* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @mc_ifc_timer, align 4
  %8 = call %struct.inet6_dev* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.inet6_dev* %8, %struct.inet6_dev** %3, align 8
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %10 = call i32 @mld_send_cr(%struct.inet6_dev* %9)
  %11 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %12 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %17 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %21 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %26 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %27 = call i32 @unsolicited_report_interval(%struct.inet6_dev* %26)
  %28 = call i32 @mld_ifc_start_timer(%struct.inet6_dev* %25, i32 %27)
  br label %29

29:                                               ; preds = %24, %15
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %32 = call i32 @in6_dev_put(%struct.inet6_dev* %31)
  ret void
}

declare dso_local %struct.inet6_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @mld_send_cr(%struct.inet6_dev*) #1

declare dso_local i32 @mld_ifc_start_timer(%struct.inet6_dev*, i32) #1

declare dso_local i32 @unsolicited_report_interval(%struct.inet6_dev*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
