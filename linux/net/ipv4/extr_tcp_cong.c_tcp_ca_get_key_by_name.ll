; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cong.c_tcp_ca_get_key_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cong.c_tcp_ca_get_key_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcp_congestion_ops = type { i32, i32 }

@TCP_CA_UNSPEC = common dso_local global i32 0, align 4
@TCP_CONG_NEEDS_ECN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_ca_get_key_by_name(%struct.net* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tcp_congestion_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @TCP_CA_UNSPEC, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 (...) @might_sleep()
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.net*, %struct.net** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.tcp_congestion_ops* @tcp_ca_find_autoload(%struct.net* %12, i8* %13)
  store %struct.tcp_congestion_ops* %14, %struct.tcp_congestion_ops** %7, align 8
  %15 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %7, align 8
  %16 = icmp ne %struct.tcp_congestion_ops* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %7, align 8
  %19 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %7, align 8
  %22 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TCP_CONG_NEEDS_ECN, align 4
  %25 = and i32 %23, %24
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %17, %3
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load i32, i32* %8, align 4
  ret i32 %29
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_congestion_ops* @tcp_ca_find_autoload(%struct.net*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
