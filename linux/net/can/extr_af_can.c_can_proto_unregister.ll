; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_proto_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_proto_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.can_proto = type { i32, i32 }

@proto_tab_lock = common dso_local global i32 0, align 4
@proto_tab = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @can_proto_unregister(%struct.can_proto* %0) #0 {
  %2 = alloca %struct.can_proto*, align 8
  %3 = alloca i32, align 4
  store %struct.can_proto* %0, %struct.can_proto** %2, align 8
  %4 = load %struct.can_proto*, %struct.can_proto** %2, align 8
  %5 = getelementptr inbounds %struct.can_proto, %struct.can_proto* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = call i32 @mutex_lock(i32* @proto_tab_lock)
  %8 = load i32*, i32** @proto_tab, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.can_proto* @rcu_access_pointer(i32 %12)
  %14 = load %struct.can_proto*, %struct.can_proto** %2, align 8
  %15 = icmp ne %struct.can_proto* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32*, i32** @proto_tab, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @RCU_INIT_POINTER(i32 %22, i32* null)
  %24 = call i32 @mutex_unlock(i32* @proto_tab_lock)
  %25 = call i32 (...) @synchronize_rcu()
  %26 = load %struct.can_proto*, %struct.can_proto** %2, align 8
  %27 = getelementptr inbounds %struct.can_proto, %struct.can_proto* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @proto_unregister(i32 %28)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.can_proto* @rcu_access_pointer(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @proto_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
