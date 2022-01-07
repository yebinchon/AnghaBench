; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c___ipv6_dev_ac_dec.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c___ipv6_dev_ac_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, i32, %struct.ifacaddr6* }
%struct.ifacaddr6 = type { i64, i32, i32, %struct.ifacaddr6* }
%struct.in6_addr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ipv6_dev_ac_dec(%struct.inet6_dev* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet6_dev*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ifacaddr6*, align 8
  %7 = alloca %struct.ifacaddr6*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %8 = call i32 (...) @ASSERT_RTNL()
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %10 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %9, i32 0, i32 1
  %11 = call i32 @write_lock_bh(i32* %10)
  store %struct.ifacaddr6* null, %struct.ifacaddr6** %7, align 8
  %12 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %13 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %12, i32 0, i32 2
  %14 = load %struct.ifacaddr6*, %struct.ifacaddr6** %13, align 8
  store %struct.ifacaddr6* %14, %struct.ifacaddr6** %6, align 8
  br label %15

15:                                               ; preds = %27, %2
  %16 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %17 = icmp ne %struct.ifacaddr6* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %20 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %19, i32 0, i32 2
  %21 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %22 = call i64 @ipv6_addr_equal(i32* %20, %struct.in6_addr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %31

25:                                               ; preds = %18
  %26 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  store %struct.ifacaddr6* %26, %struct.ifacaddr6** %7, align 8
  br label %27

27:                                               ; preds = %25
  %28 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %29 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %28, i32 0, i32 3
  %30 = load %struct.ifacaddr6*, %struct.ifacaddr6** %29, align 8
  store %struct.ifacaddr6* %30, %struct.ifacaddr6** %6, align 8
  br label %15

31:                                               ; preds = %24, %15
  %32 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %33 = icmp ne %struct.ifacaddr6* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %36 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %35, i32 0, i32 1
  %37 = call i32 @write_unlock_bh(i32* %36)
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %85

40:                                               ; preds = %31
  %41 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %42 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %48 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %47, i32 0, i32 1
  %49 = call i32 @write_unlock_bh(i32* %48)
  store i32 0, i32* %3, align 4
  br label %85

50:                                               ; preds = %40
  %51 = load %struct.ifacaddr6*, %struct.ifacaddr6** %7, align 8
  %52 = icmp ne %struct.ifacaddr6* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %55 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %54, i32 0, i32 3
  %56 = load %struct.ifacaddr6*, %struct.ifacaddr6** %55, align 8
  %57 = load %struct.ifacaddr6*, %struct.ifacaddr6** %7, align 8
  %58 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %57, i32 0, i32 3
  store %struct.ifacaddr6* %56, %struct.ifacaddr6** %58, align 8
  br label %65

59:                                               ; preds = %50
  %60 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %61 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %60, i32 0, i32 3
  %62 = load %struct.ifacaddr6*, %struct.ifacaddr6** %61, align 8
  %63 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %64 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %63, i32 0, i32 2
  store %struct.ifacaddr6* %62, %struct.ifacaddr6** %64, align 8
  br label %65

65:                                               ; preds = %59, %53
  %66 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %67 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %66, i32 0, i32 1
  %68 = call i32 @write_unlock_bh(i32* %67)
  %69 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %70 = call i32 @ipv6_del_acaddr_hash(%struct.ifacaddr6* %69)
  %71 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %72 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %73 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %72, i32 0, i32 2
  %74 = call i32 @addrconf_leave_solict(%struct.inet6_dev* %71, i32* %73)
  %75 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %76 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_net(i32 %77)
  %79 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %80 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ip6_del_rt(i32 %78, i32 %81)
  %83 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %84 = call i32 @aca_put(%struct.ifacaddr6* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %65, %46, %34
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

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
