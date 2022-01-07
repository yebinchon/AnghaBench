; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_update_expires.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_update_expires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fib6_info = type { i32 }

@RTF_EXPIRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt6_info*, i32)* @rt6_update_expires to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt6_update_expires(%struct.rt6_info* %0, i32 %1) #0 {
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib6_info*, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %7 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RTF_EXPIRES, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %2
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %15 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.fib6_info* @rcu_dereference(i32 %16)
  store %struct.fib6_info* %17, %struct.fib6_info** %5, align 8
  %18 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %19 = icmp ne %struct.fib6_info* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %22 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %25 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %20, %12
  %28 = call i32 (...) @rcu_read_unlock()
  br label %29

29:                                               ; preds = %27, %2
  %30 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %31 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %30, i32 0, i32 1
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dst_set_expires(%struct.TYPE_2__* %31, i32 %32)
  %34 = load i32, i32* @RTF_EXPIRES, align 4
  %35 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %36 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fib6_info* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dst_set_expires(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
