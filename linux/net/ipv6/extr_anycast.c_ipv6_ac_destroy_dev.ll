; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c_ipv6_ac_destroy_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c_ipv6_ac_destroy_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, i32, %struct.ifacaddr6* }
%struct.ifacaddr6 = type { i32, i32, %struct.ifacaddr6* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_ac_destroy_dev(%struct.inet6_dev* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  %3 = alloca %struct.ifacaddr6*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %2, align 8
  %4 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %5 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %4, i32 0, i32 0
  %6 = call i32 @write_lock_bh(i32* %5)
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %9 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %8, i32 0, i32 2
  %10 = load %struct.ifacaddr6*, %struct.ifacaddr6** %9, align 8
  store %struct.ifacaddr6* %10, %struct.ifacaddr6** %3, align 8
  %11 = icmp ne %struct.ifacaddr6* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %7
  %13 = load %struct.ifacaddr6*, %struct.ifacaddr6** %3, align 8
  %14 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %13, i32 0, i32 2
  %15 = load %struct.ifacaddr6*, %struct.ifacaddr6** %14, align 8
  %16 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %17 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %16, i32 0, i32 2
  store %struct.ifacaddr6* %15, %struct.ifacaddr6** %17, align 8
  %18 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %19 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %18, i32 0, i32 0
  %20 = call i32 @write_unlock_bh(i32* %19)
  %21 = load %struct.ifacaddr6*, %struct.ifacaddr6** %3, align 8
  %22 = call i32 @ipv6_del_acaddr_hash(%struct.ifacaddr6* %21)
  %23 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %24 = load %struct.ifacaddr6*, %struct.ifacaddr6** %3, align 8
  %25 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %24, i32 0, i32 1
  %26 = call i32 @addrconf_leave_solict(%struct.inet6_dev* %23, i32* %25)
  %27 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %28 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_net(i32 %29)
  %31 = load %struct.ifacaddr6*, %struct.ifacaddr6** %3, align 8
  %32 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ip6_del_rt(i32 %30, i32 %33)
  %35 = load %struct.ifacaddr6*, %struct.ifacaddr6** %3, align 8
  %36 = call i32 @aca_put(%struct.ifacaddr6* %35)
  %37 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %38 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %37, i32 0, i32 0
  %39 = call i32 @write_lock_bh(i32* %38)
  br label %7

40:                                               ; preds = %7
  %41 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %42 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %41, i32 0, i32 0
  %43 = call i32 @write_unlock_bh(i32* %42)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @ipv6_del_acaddr_hash(%struct.ifacaddr6*) #1

declare dso_local i32 @addrconf_leave_solict(%struct.inet6_dev*, i32*) #1

declare dso_local i32 @ip6_del_rt(i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @aca_put(%struct.ifacaddr6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
