; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_get_net_ns_capable.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_get_net_ns_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net* @rtnl_get_net_ns_capable(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call i32 @sock_net(%struct.sock* %7)
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.net* @get_net_ns_by_id(i32 %8, i32 %9)
  store %struct.net* %10, %struct.net** %6, align 8
  %11 = load %struct.net*, %struct.net** %6, align 8
  %12 = icmp ne %struct.net* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.net* @ERR_PTR(i32 %15)
  store %struct.net* %16, %struct.net** %3, align 8
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = load %struct.net*, %struct.net** %6, align 8
  %20 = getelementptr inbounds %struct.net, %struct.net* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CAP_NET_ADMIN, align 4
  %23 = call i32 @sk_ns_capable(%struct.sock* %18, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = load %struct.net*, %struct.net** %6, align 8
  %27 = call i32 @put_net(%struct.net* %26)
  %28 = load i32, i32* @EACCES, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.net* @ERR_PTR(i32 %29)
  store %struct.net* %30, %struct.net** %3, align 8
  br label %33

31:                                               ; preds = %17
  %32 = load %struct.net*, %struct.net** %6, align 8
  store %struct.net* %32, %struct.net** %3, align 8
  br label %33

33:                                               ; preds = %31, %25, %13
  %34 = load %struct.net*, %struct.net** %3, align 8
  ret %struct.net* %34
}

declare dso_local %struct.net* @get_net_ns_by_id(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.net* @ERR_PTR(i32) #1

declare dso_local i32 @sk_ns_capable(%struct.sock*, i32, i32) #1

declare dso_local i32 @put_net(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
