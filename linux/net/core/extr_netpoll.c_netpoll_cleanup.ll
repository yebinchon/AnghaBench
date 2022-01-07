; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_netpoll.c_netpoll_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_netpoll.c_netpoll_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netpoll = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netpoll_cleanup(%struct.netpoll* %0) #0 {
  %2 = alloca %struct.netpoll*, align 8
  store %struct.netpoll* %0, %struct.netpoll** %2, align 8
  %3 = call i32 (...) @rtnl_lock()
  %4 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %5 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %18

9:                                                ; preds = %1
  %10 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %11 = call i32 @__netpoll_cleanup(%struct.netpoll* %10)
  %12 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %13 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @dev_put(i32* %14)
  %16 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %17 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %9, %8
  %19 = call i32 (...) @rtnl_unlock()
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @__netpoll_cleanup(%struct.netpoll*) #1

declare dso_local i32 @dev_put(i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
