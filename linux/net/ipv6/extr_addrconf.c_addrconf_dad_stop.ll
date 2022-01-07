; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_dad_stop.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_dad_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i32, i32, %struct.inet6_ifaddr* }

@IFA_F_DADFAILED = common dso_local global i32 0, align 4
@IFA_F_TEMPORARY = common dso_local global i32 0, align 4
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_ifaddr*, i32)* @addrconf_dad_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_dad_stop(%struct.inet6_ifaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.inet6_ifaddr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet6_ifaddr*, align 8
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @IFA_F_DADFAILED, align 4
  %10 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %11 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  br label %14

14:                                               ; preds = %8, %2
  %15 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %16 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IFA_F_TEMPORARY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %14
  %22 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %23 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %26 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %25, i32 0, i32 2
  %27 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %26, align 8
  store %struct.inet6_ifaddr* %27, %struct.inet6_ifaddr** %5, align 8
  %28 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %29 = icmp ne %struct.inet6_ifaddr* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %32 = call i32 @in6_ifa_hold(%struct.inet6_ifaddr* %31)
  %33 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %34 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %37 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %38 = call i32 @ipv6_create_tempaddr(%struct.inet6_ifaddr* %36, %struct.inet6_ifaddr* %37, i32 1)
  %39 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %40 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %39)
  br label %45

41:                                               ; preds = %21
  %42 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %43 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock_bh(i32* %43)
  br label %45

45:                                               ; preds = %41, %30
  %46 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %47 = call i32 @ipv6_del_addr(%struct.inet6_ifaddr* %46)
  br label %94

48:                                               ; preds = %14
  %49 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %50 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IFA_F_PERMANENT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %90, label %58

58:                                               ; preds = %55, %48
  %59 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %60 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %59, i32 0, i32 1
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %63 = call i32 @addrconf_del_dad_work(%struct.inet6_ifaddr* %62)
  %64 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %65 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %66 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %58
  %72 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %75 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %71, %58
  %79 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %80 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %79, i32 0, i32 1
  %81 = call i32 @spin_unlock_bh(i32* %80)
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %86 = call i32 @ipv6_ifa_notify(i32 0, %struct.inet6_ifaddr* %85)
  br label %87

87:                                               ; preds = %84, %78
  %88 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %89 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %88)
  br label %93

90:                                               ; preds = %55
  %91 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %92 = call i32 @ipv6_del_addr(%struct.inet6_ifaddr* %91)
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %45
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @in6_ifa_hold(%struct.inet6_ifaddr*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ipv6_create_tempaddr(%struct.inet6_ifaddr*, %struct.inet6_ifaddr*, i32) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

declare dso_local i32 @ipv6_del_addr(%struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_del_dad_work(%struct.inet6_ifaddr*) #1

declare dso_local i32 @ipv6_ifa_notify(i32, %struct.inet6_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
