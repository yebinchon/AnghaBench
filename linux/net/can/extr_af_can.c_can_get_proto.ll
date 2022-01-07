; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_get_proto.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_get_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.can_proto = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@proto_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.can_proto* (i32)* @can_get_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.can_proto* @can_get_proto(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.can_proto*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load i32*, i32** @proto_tab, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.can_proto* @rcu_dereference(i32 %9)
  store %struct.can_proto* %10, %struct.can_proto** %3, align 8
  %11 = load %struct.can_proto*, %struct.can_proto** %3, align 8
  %12 = icmp ne %struct.can_proto* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.can_proto*, %struct.can_proto** %3, align 8
  %15 = getelementptr inbounds %struct.can_proto, %struct.can_proto* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @try_module_get(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store %struct.can_proto* null, %struct.can_proto** %3, align 8
  br label %22

22:                                               ; preds = %21, %13, %1
  %23 = call i32 (...) @rcu_read_unlock()
  %24 = load %struct.can_proto*, %struct.can_proto** %3, align 8
  ret %struct.can_proto* %24
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.can_proto* @rcu_dereference(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
