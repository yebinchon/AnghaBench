; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_bearer_stop.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_bearer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_net = type { i32** }
%struct.tipc_bearer = type { i32 }

@tipc_net_id = common dso_local global i32 0, align 4
@MAX_BEARERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_bearer_stop(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.tipc_net*, align 8
  %4 = alloca %struct.tipc_bearer*, align 8
  %5 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %6 = load %struct.net*, %struct.net** %2, align 8
  %7 = load i32, i32* @tipc_net_id, align 4
  %8 = call %struct.tipc_net* @net_generic(%struct.net* %6, i32 %7)
  store %struct.tipc_net* %8, %struct.tipc_net** %3, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %33, %1
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @MAX_BEARERS, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct.tipc_net*, %struct.tipc_net** %3, align 8
  %15 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = call %struct.tipc_bearer* @rtnl_dereference(i32* %19)
  store %struct.tipc_bearer* %20, %struct.tipc_bearer** %4, align 8
  %21 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %22 = icmp ne %struct.tipc_bearer* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.net*, %struct.net** %2, align 8
  %25 = load %struct.tipc_bearer*, %struct.tipc_bearer** %4, align 8
  %26 = call i32 @bearer_disable(%struct.net* %24, %struct.tipc_bearer* %25)
  %27 = load %struct.tipc_net*, %struct.tipc_net** %3, align 8
  %28 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %23, %13
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %9

36:                                               ; preds = %9
  ret void
}

declare dso_local %struct.tipc_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.tipc_bearer* @rtnl_dereference(i32*) #1

declare dso_local i32 @bearer_disable(%struct.net*, %struct.tipc_bearer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
