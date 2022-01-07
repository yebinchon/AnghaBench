; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cong.c_tcp_set_default_congestion_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cong.c_tcp_set_default_congestion_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tcp_congestion_ops = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TCP_CONG_NON_RESTRICTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_set_default_congestion_control(%struct.net* %0, i8* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tcp_congestion_ops*, align 8
  %6 = alloca %struct.tcp_congestion_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.tcp_congestion_ops* @tcp_ca_find_autoload(%struct.net* %9, i8* %10)
  store %struct.tcp_congestion_ops* %11, %struct.tcp_congestion_ops** %5, align 8
  %12 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %5, align 8
  %13 = icmp ne %struct.tcp_congestion_ops* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %5, align 8
  %19 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @try_module_get(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %45

26:                                               ; preds = %17
  %27 = load %struct.net*, %struct.net** %3, align 8
  %28 = getelementptr inbounds %struct.net, %struct.net* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %5, align 8
  %31 = call %struct.tcp_congestion_ops* @xchg(i32* %29, %struct.tcp_congestion_ops* %30)
  store %struct.tcp_congestion_ops* %31, %struct.tcp_congestion_ops** %6, align 8
  %32 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %6, align 8
  %33 = icmp ne %struct.tcp_congestion_ops* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %6, align 8
  %36 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @module_put(i32 %37)
  br label %39

39:                                               ; preds = %34, %26
  %40 = load i32, i32* @TCP_CONG_NON_RESTRICTED, align 4
  %41 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %5, align 8
  %42 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %39, %23
  br label %46

46:                                               ; preds = %45, %14
  %47 = call i32 (...) @rcu_read_unlock()
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_congestion_ops* @tcp_ca_find_autoload(%struct.net*, i8*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.tcp_congestion_ops* @xchg(i32*, %struct.tcp_congestion_ops*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
