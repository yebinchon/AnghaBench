; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_build_sk_flow_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_build_sk_flow_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flowi4 = type { i32 }
%struct.sock = type { i32, i32, i32, i32 }
%struct.inet_sock = type { i32, i64, i32, i32 }
%struct.ip_options_rcu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@IPPROTO_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flowi4*, %struct.sock*)* @build_sk_flow_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_sk_flow_key(%struct.flowi4* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.flowi4*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.inet_sock*, align 8
  %6 = alloca %struct.ip_options_rcu*, align 8
  %7 = alloca i32, align 4
  store %struct.flowi4* %0, %struct.flowi4** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.inet_sock* @inet_sk(%struct.sock* %8)
  store %struct.inet_sock* %9, %struct.inet_sock** %5, align 8
  %10 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %11 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %15 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.ip_options_rcu* @rcu_dereference(i32 %16)
  store %struct.ip_options_rcu* %17, %struct.ip_options_rcu** %6, align 8
  %18 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %6, align 8
  %19 = icmp ne %struct.ip_options_rcu* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %6, align 8
  %22 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %6, align 8
  %28 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %26, %20, %2
  %32 = load %struct.flowi4*, %struct.flowi4** %3, align 8
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = call i32 @RT_CONN_FLAGS(%struct.sock* %39)
  %41 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %42 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %43 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* @IPPROTO_RAW, align 4
  br label %52

48:                                               ; preds = %31
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  br label %52

52:                                               ; preds = %48, %46
  %53 = phi i32 [ %47, %46 ], [ %51, %48 ]
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = call i32 @inet_sk_flowi_flags(%struct.sock* %54)
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %58 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @flowi4_init_output(%struct.flowi4* %32, i32 %35, i32 %38, i32 %40, i32 %41, i32 %53, i32 %55, i32 %56, i32 %59, i32 0, i32 0, i32 %62)
  %64 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip_options_rcu* @rcu_dereference(i32) #1

declare dso_local i32 @flowi4_init_output(%struct.flowi4*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i32 @inet_sk_flowi_flags(%struct.sock*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
