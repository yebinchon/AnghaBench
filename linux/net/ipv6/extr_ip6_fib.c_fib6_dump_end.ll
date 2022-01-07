; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_dump_end.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_dump_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { i32*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.fib6_walker = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netlink_callback*)* @fib6_dump_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib6_dump_end(%struct.netlink_callback* %0) #0 {
  %2 = alloca %struct.netlink_callback*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.fib6_walker*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %2, align 8
  %5 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %6 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.net* @sock_net(i32 %9)
  store %struct.net* %10, %struct.net** %3, align 8
  %11 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %12 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.fib6_walker*
  store %struct.fib6_walker* %18, %struct.fib6_walker** %4, align 8
  %19 = load %struct.fib6_walker*, %struct.fib6_walker** %4, align 8
  %20 = icmp ne %struct.fib6_walker* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %1
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %23 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %30 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  store i32 0, i32* %32, align 4
  %33 = load %struct.net*, %struct.net** %3, align 8
  %34 = load %struct.fib6_walker*, %struct.fib6_walker** %4, align 8
  %35 = call i32 @fib6_walker_unlink(%struct.net* %33, %struct.fib6_walker* %34)
  br label %36

36:                                               ; preds = %28, %21
  %37 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %38 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 0, i32* %40, align 4
  %41 = load %struct.fib6_walker*, %struct.fib6_walker** %4, align 8
  %42 = call i32 @kfree(%struct.fib6_walker* %41)
  br label %43

43:                                               ; preds = %36, %1
  %44 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %45 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %52 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %54 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 3, i32* %56, align 4
  ret void
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @fib6_walker_unlink(%struct.net*, %struct.fib6_walker*) #1

declare dso_local i32 @kfree(%struct.fib6_walker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
