; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_xlat_nl_dump_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_xlat_nl_dump_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }
%struct.ila_net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ila_dump_iter = type { i64, i32 }

@ila_net_id = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ila_xlat_nl_dump_start(%struct.netlink_callback* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netlink_callback*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.ila_net*, align 8
  %6 = alloca %struct.ila_dump_iter*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %3, align 8
  %7 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %8 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.net* @sock_net(i32 %11)
  store %struct.net* %12, %struct.net** %4, align 8
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = load i32, i32* @ila_net_id, align 4
  %15 = call %struct.ila_net* @net_generic(%struct.net* %13, i32 %14)
  store %struct.ila_net* %15, %struct.ila_net** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ila_dump_iter* @kmalloc(i32 16, i32 %16)
  store %struct.ila_dump_iter* %17, %struct.ila_dump_iter** %6, align 8
  %18 = load %struct.ila_dump_iter*, %struct.ila_dump_iter** %6, align 8
  %19 = icmp ne %struct.ila_dump_iter* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %38

23:                                               ; preds = %1
  %24 = load %struct.ila_net*, %struct.ila_net** %5, align 8
  %25 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.ila_dump_iter*, %struct.ila_dump_iter** %6, align 8
  %28 = getelementptr inbounds %struct.ila_dump_iter, %struct.ila_dump_iter* %27, i32 0, i32 1
  %29 = call i32 @rhashtable_walk_enter(i32* %26, i32* %28)
  %30 = load %struct.ila_dump_iter*, %struct.ila_dump_iter** %6, align 8
  %31 = getelementptr inbounds %struct.ila_dump_iter, %struct.ila_dump_iter* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.ila_dump_iter*, %struct.ila_dump_iter** %6, align 8
  %33 = ptrtoint %struct.ila_dump_iter* %32 to i64
  %34 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %35 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  store i64 %33, i64* %37, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %23, %20
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.ila_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.ila_dump_iter* @kmalloc(i32, i32) #1

declare dso_local i32 @rhashtable_walk_enter(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
