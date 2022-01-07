; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c___tipc_dump_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c___tipc_dump_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { i64* }
%struct.net = type { i32 }
%struct.rhashtable_iter = type { i32 }
%struct.tipc_net = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tipc_dump_start(%struct.netlink_callback* %0, %struct.net* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.rhashtable_iter*, align 8
  %7 = alloca %struct.tipc_net*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  %8 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %9 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 4
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.rhashtable_iter*
  store %struct.rhashtable_iter* %14, %struct.rhashtable_iter** %6, align 8
  %15 = load %struct.net*, %struct.net** %5, align 8
  %16 = call %struct.tipc_net* @tipc_net(%struct.net* %15)
  store %struct.tipc_net* %16, %struct.tipc_net** %7, align 8
  %17 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %6, align 8
  %18 = icmp ne %struct.rhashtable_iter* %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.rhashtable_iter* @kmalloc(i32 4, i32 %20)
  store %struct.rhashtable_iter* %21, %struct.rhashtable_iter** %6, align 8
  %22 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %6, align 8
  %23 = icmp ne %struct.rhashtable_iter* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %19
  %28 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %6, align 8
  %29 = ptrtoint %struct.rhashtable_iter* %28 to i64
  %30 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %31 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 4
  store i64 %29, i64* %33, align 8
  br label %34

34:                                               ; preds = %27, %2
  %35 = load %struct.tipc_net*, %struct.tipc_net** %7, align 8
  %36 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %35, i32 0, i32 0
  %37 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %6, align 8
  %38 = call i32 @rhashtable_walk_enter(i32* %36, %struct.rhashtable_iter* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %24
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local %struct.rhashtable_iter* @kmalloc(i32, i32) #1

declare dso_local i32 @rhashtable_walk_enter(i32*, %struct.rhashtable_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
