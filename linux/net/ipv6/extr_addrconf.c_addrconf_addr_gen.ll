; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_addr_gen.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_addr_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.in6_addr = type { i32 }

@IFA_F_STABLE_PRIVACY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*, i32)* @addrconf_addr_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_addr_gen(%struct.inet6_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.inet6_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.in6_addr, align 4
  store %struct.inet6_dev* %0, %struct.inet6_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %7 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @netif_is_l3_master(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %66

12:                                               ; preds = %2
  %13 = call i32 @htonl(i32 -25165824)
  %14 = call i32 @ipv6_addr_set(%struct.in6_addr* %5, i32 %13, i32 0, i32 0, i32 0)
  %15 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %16 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %65 [
    i32 129, label %19
    i32 128, label %22
    i32 131, label %41
    i32 130, label %64
  ]

19:                                               ; preds = %12
  %20 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %21 = call i32 @ipv6_gen_mode_random_init(%struct.inet6_dev* %20)
  br label %22

22:                                               ; preds = %12, %19
  %23 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %24 = call i32 @ipv6_generate_stable_address(%struct.in6_addr* %5, i32 0, %struct.inet6_dev* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %28 = load i32, i32* @IFA_F_STABLE_PRIVACY, align 4
  %29 = call i32 @addrconf_add_linklocal(%struct.inet6_dev* %27, %struct.in6_addr* %5, i32 %28)
  br label %40

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %35 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @addrconf_prefix_route(%struct.in6_addr* %5, i32 64, i32 0, i32 %36, i32 0, i32 0, i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  br label %40

40:                                               ; preds = %39, %26
  br label %66

41:                                               ; preds = %12
  %42 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 8
  %45 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %46 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ipv6_generate_eui64(i32 %44, i32 %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %52 = call i32 @addrconf_add_linklocal(%struct.inet6_dev* %51, %struct.in6_addr* %5, i32 0)
  br label %63

53:                                               ; preds = %41
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %58 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @addrconf_prefix_route(%struct.in6_addr* %5, i32 64, i32 0, i32 %59, i32 0, i32 0, i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  br label %63

63:                                               ; preds = %62, %50
  br label %66

64:                                               ; preds = %12
  br label %65

65:                                               ; preds = %12, %64
  br label %66

66:                                               ; preds = %11, %65, %63, %40
  ret void
}

declare dso_local i64 @netif_is_l3_master(i32) #1

declare dso_local i32 @ipv6_addr_set(%struct.in6_addr*, i32, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ipv6_gen_mode_random_init(%struct.inet6_dev*) #1

declare dso_local i32 @ipv6_generate_stable_address(%struct.in6_addr*, i32, %struct.inet6_dev*) #1

declare dso_local i32 @addrconf_add_linklocal(%struct.inet6_dev*, %struct.in6_addr*, i32) #1

declare dso_local i32 @addrconf_prefix_route(%struct.in6_addr*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ipv6_generate_eui64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
