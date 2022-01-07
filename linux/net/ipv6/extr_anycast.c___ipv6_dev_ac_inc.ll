; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c___ipv6_dev_ac_inc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c___ipv6_dev_ac_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, i32, %struct.ifacaddr6*, i64 }
%struct.ifacaddr6 = type { i32, %struct.ifacaddr6*, i32 }
%struct.in6_addr = type { i32 }
%struct.fib6_info = type { i32 }
%struct.net = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ipv6_dev_ac_inc(%struct.inet6_dev* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet6_dev*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ifacaddr6*, align 8
  %7 = alloca %struct.fib6_info*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  store %struct.inet6_dev* %0, %struct.inet6_dev** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %12 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %11, i32 0, i32 0
  %13 = call i32 @write_lock_bh(i32* %12)
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %15 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %99

21:                                               ; preds = %2
  %22 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %23 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %22, i32 0, i32 2
  %24 = load %struct.ifacaddr6*, %struct.ifacaddr6** %23, align 8
  store %struct.ifacaddr6* %24, %struct.ifacaddr6** %6, align 8
  br label %25

25:                                               ; preds = %40, %21
  %26 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %27 = icmp ne %struct.ifacaddr6* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %30 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %29, i32 0, i32 0
  %31 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %32 = call i64 @ipv6_addr_equal(i32* %30, %struct.in6_addr* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %36 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  store i32 0, i32* %9, align 4
  br label %99

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %42 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %41, i32 0, i32 1
  %43 = load %struct.ifacaddr6*, %struct.ifacaddr6** %42, align 8
  store %struct.ifacaddr6* %43, %struct.ifacaddr6** %6, align 8
  br label %25

44:                                               ; preds = %25
  %45 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %46 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.net* @dev_net(i32 %47)
  store %struct.net* %48, %struct.net** %8, align 8
  %49 = load %struct.net*, %struct.net** %8, align 8
  %50 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %51 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call %struct.fib6_info* @addrconf_f6i_alloc(%struct.net* %49, %struct.inet6_dev* %50, %struct.in6_addr* %51, i32 1, i32 %52)
  store %struct.fib6_info* %53, %struct.fib6_info** %7, align 8
  %54 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %55 = call i64 @IS_ERR(%struct.fib6_info* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %44
  %58 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %59 = call i32 @PTR_ERR(%struct.fib6_info* %58)
  store i32 %59, i32* %9, align 4
  br label %99

60:                                               ; preds = %44
  %61 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %62 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %63 = call %struct.ifacaddr6* @aca_alloc(%struct.fib6_info* %61, %struct.in6_addr* %62)
  store %struct.ifacaddr6* %63, %struct.ifacaddr6** %6, align 8
  %64 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %65 = icmp ne %struct.ifacaddr6* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %68 = call i32 @fib6_info_release(%struct.fib6_info* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  br label %99

71:                                               ; preds = %60
  %72 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %73 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %72, i32 0, i32 2
  %74 = load %struct.ifacaddr6*, %struct.ifacaddr6** %73, align 8
  %75 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %76 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %75, i32 0, i32 1
  store %struct.ifacaddr6* %74, %struct.ifacaddr6** %76, align 8
  %77 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %78 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %79 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %78, i32 0, i32 2
  store %struct.ifacaddr6* %77, %struct.ifacaddr6** %79, align 8
  %80 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %81 = call i32 @aca_get(%struct.ifacaddr6* %80)
  %82 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %83 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %82, i32 0, i32 0
  %84 = call i32 @write_unlock_bh(i32* %83)
  %85 = load %struct.net*, %struct.net** %8, align 8
  %86 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %87 = call i32 @ipv6_add_acaddr_hash(%struct.net* %85, %struct.ifacaddr6* %86)
  %88 = load %struct.net*, %struct.net** %8, align 8
  %89 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %90 = call i32 @ip6_ins_rt(%struct.net* %88, %struct.fib6_info* %89)
  %91 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %92 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %95 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %94, i32 0, i32 0
  %96 = call i32 @addrconf_join_solict(i32 %93, i32* %95)
  %97 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %98 = call i32 @aca_put(%struct.ifacaddr6* %97)
  store i32 0, i32* %3, align 4
  br label %104

99:                                               ; preds = %66, %57, %34, %18
  %100 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %101 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %100, i32 0, i32 0
  %102 = call i32 @write_unlock_bh(i32* %101)
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %99, %71
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.fib6_info* @addrconf_f6i_alloc(%struct.net*, %struct.inet6_dev*, %struct.in6_addr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.fib6_info*) #1

declare dso_local i32 @PTR_ERR(%struct.fib6_info*) #1

declare dso_local %struct.ifacaddr6* @aca_alloc(%struct.fib6_info*, %struct.in6_addr*) #1

declare dso_local i32 @fib6_info_release(%struct.fib6_info*) #1

declare dso_local i32 @aca_get(%struct.ifacaddr6*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @ipv6_add_acaddr_hash(%struct.net*, %struct.ifacaddr6*) #1

declare dso_local i32 @ip6_ins_rt(%struct.net*, %struct.fib6_info*) #1

declare dso_local i32 @addrconf_join_solict(i32, i32*) #1

declare dso_local i32 @aca_put(%struct.ifacaddr6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
