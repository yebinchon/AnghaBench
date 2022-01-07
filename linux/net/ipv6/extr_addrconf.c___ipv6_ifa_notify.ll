; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c___ipv6_ifa_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c___ipv6_ifa_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { %struct.fib6_info*, %struct.TYPE_10__*, i32, i32 }
%struct.fib6_info = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.net = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"BUG: Address %pI6c on device %s is missing its host route.\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.inet6_ifaddr*)* @__ipv6_ifa_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ipv6_ifa_notify(i32 %0, %struct.inet6_ifaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet6_ifaddr*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.fib6_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.inet6_ifaddr* %1, %struct.inet6_ifaddr** %4, align 8
  %7 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %8 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %7, i32 0, i32 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = call %struct.net* @dev_net(%struct.TYPE_9__* %11)
  store %struct.net* %12, %struct.net** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @ASSERT_RTNL()
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %22

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %20
  %23 = phi i32 [ %18, %20 ], [ 128, %21 ]
  %24 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %25 = call i32 @inet6_ifa_notify(i32 %23, %struct.inet6_ifaddr* %24)
  %26 = load i32, i32* %3, align 4
  switch i32 %26, label %155 [
    i32 128, label %27
    i32 129, label %101
  ]

27:                                               ; preds = %22
  %28 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %29 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %28, i32 0, i32 0
  %30 = load %struct.fib6_info*, %struct.fib6_info** %29, align 8
  %31 = icmp ne %struct.fib6_info* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %34 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %33, i32 0, i32 0
  %35 = load %struct.fib6_info*, %struct.fib6_info** %34, align 8
  %36 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rcu_access_pointer(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %32
  %41 = load %struct.net*, %struct.net** %5, align 8
  %42 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %43 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %42, i32 0, i32 0
  %44 = load %struct.fib6_info*, %struct.fib6_info** %43, align 8
  %45 = call i32 @ip6_ins_rt(%struct.net* %41, %struct.fib6_info* %44)
  br label %74

46:                                               ; preds = %32, %27
  %47 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %48 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %47, i32 0, i32 0
  %49 = load %struct.fib6_info*, %struct.fib6_info** %48, align 8
  %50 = icmp ne %struct.fib6_info* %49, null
  br i1 %50, label %73, label %51

51:                                               ; preds = %46
  %52 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %53 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IFF_UP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %51
  %63 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %64 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %63, i32 0, i32 3
  %65 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %66 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32* %64, i32 %71)
  br label %73

73:                                               ; preds = %62, %51, %46
  br label %74

74:                                               ; preds = %73, %40
  %75 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %76 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %84 = call i32 @addrconf_join_anycast(%struct.inet6_ifaddr* %83)
  br label %85

85:                                               ; preds = %82, %74
  %86 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %87 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %86, i32 0, i32 2
  %88 = call i32 @ipv6_addr_any(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  %91 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %92 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %91, i32 0, i32 2
  %93 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %94 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = load i32, i32* @GFP_ATOMIC, align 4
  %99 = call i32 @addrconf_prefix_route(i32* %92, i32 128, i32 0, %struct.TYPE_9__* %97, i32 0, i32 0, i32 %98)
  br label %100

100:                                              ; preds = %90, %85
  br label %155

101:                                              ; preds = %22
  %102 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %103 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %111 = call i32 @addrconf_leave_anycast(%struct.inet6_ifaddr* %110)
  br label %112

112:                                              ; preds = %109, %101
  %113 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %114 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %113, i32 0, i32 1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %117 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %116, i32 0, i32 3
  %118 = call i32 @addrconf_leave_solict(%struct.TYPE_10__* %115, i32* %117)
  %119 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %120 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %119, i32 0, i32 2
  %121 = call i32 @ipv6_addr_any(i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %112
  %124 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %125 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %124, i32 0, i32 2
  %126 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %127 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %126, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = call %struct.fib6_info* @addrconf_get_prefix_route(i32* %125, i32 128, %struct.TYPE_9__* %130, i32 0, i32 0, i32 0)
  store %struct.fib6_info* %131, %struct.fib6_info** %6, align 8
  %132 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %133 = icmp ne %struct.fib6_info* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %123
  %135 = load %struct.net*, %struct.net** %5, align 8
  %136 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %137 = call i32 @ip6_del_rt(%struct.net* %135, %struct.fib6_info* %136)
  br label %138

138:                                              ; preds = %134, %123
  br label %139

139:                                              ; preds = %138, %112
  %140 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %141 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %140, i32 0, i32 0
  %142 = load %struct.fib6_info*, %struct.fib6_info** %141, align 8
  %143 = icmp ne %struct.fib6_info* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load %struct.net*, %struct.net** %5, align 8
  %146 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %147 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %146, i32 0, i32 0
  %148 = load %struct.fib6_info*, %struct.fib6_info** %147, align 8
  %149 = call i32 @ip6_del_rt(%struct.net* %145, %struct.fib6_info* %148)
  %150 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %151 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %150, i32 0, i32 0
  store %struct.fib6_info* null, %struct.fib6_info** %151, align 8
  br label %152

152:                                              ; preds = %144, %139
  %153 = load %struct.net*, %struct.net** %5, align 8
  %154 = call i32 @rt_genid_bump_ipv6(%struct.net* %153)
  br label %155

155:                                              ; preds = %22, %152, %100
  %156 = load %struct.net*, %struct.net** %5, align 8
  %157 = getelementptr inbounds %struct.net, %struct.net* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = call i32 @atomic_inc(i32* %158)
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_9__*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @inet6_ifa_notify(i32, %struct.inet6_ifaddr*) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @ip6_ins_rt(%struct.net*, %struct.fib6_info*) #1

declare dso_local i32 @pr_warn(i8*, i32*, i32) #1

declare dso_local i32 @addrconf_join_anycast(%struct.inet6_ifaddr*) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local i32 @addrconf_prefix_route(i32*, i32, i32, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @addrconf_leave_anycast(%struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_leave_solict(%struct.TYPE_10__*, i32*) #1

declare dso_local %struct.fib6_info* @addrconf_get_prefix_route(i32*, i32, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @ip6_del_rt(%struct.net*, %struct.fib6_info*) #1

declare dso_local i32 @rt_genid_bump_ipv6(%struct.net*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
