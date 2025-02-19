; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_hash_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_hash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.in_ifaddr = type { i32, i32 }

@inet_addr_lst = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.in_ifaddr*)* @inet_hash_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inet_hash_insert(%struct.net* %0, %struct.in_ifaddr* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.in_ifaddr*, align 8
  %5 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.in_ifaddr* %1, %struct.in_ifaddr** %4, align 8
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %8 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @inet_addr_hash(%struct.net* %6, i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = call i32 (...) @ASSERT_RTNL()
  %12 = load %struct.in_ifaddr*, %struct.in_ifaddr** %4, align 8
  %13 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %12, i32 0, i32 0
  %14 = load i32*, i32** @inet_addr_lst, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i32 @hlist_add_head_rcu(i32* %13, i32* %16)
  ret void
}

declare dso_local i64 @inet_addr_hash(%struct.net*, i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
