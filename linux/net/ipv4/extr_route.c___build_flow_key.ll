; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c___build_flow_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c___build_flow_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.flowi4 = type { i32 }
%struct.sock = type { i32, i32, i32 }
%struct.iphdr = type { i32, i32 }
%struct.inet_sock = type { i64 }

@IPPROTO_RAW = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.flowi4*, %struct.sock*, %struct.iphdr*, i32, i32, i32, i32, i32)* @__build_flow_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__build_flow_key(%struct.net* %0, %struct.flowi4* %1, %struct.sock* %2, %struct.iphdr* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.flowi4*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.inet_sock*, align 8
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.flowi4* %1, %struct.flowi4** %11, align 8
  store %struct.sock* %2, %struct.sock** %12, align 8
  store %struct.iphdr* %3, %struct.iphdr** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load %struct.sock*, %struct.sock** %12, align 8
  %21 = icmp ne %struct.sock* %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %9
  %23 = load %struct.sock*, %struct.sock** %12, align 8
  %24 = call %struct.inet_sock* @inet_sk(%struct.sock* %23)
  store %struct.inet_sock* %24, %struct.inet_sock** %19, align 8
  %25 = load %struct.sock*, %struct.sock** %12, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.sock*, %struct.sock** %12, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %17, align 4
  %31 = load %struct.sock*, %struct.sock** %12, align 8
  %32 = call i32 @RT_CONN_FLAGS(%struct.sock* %31)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.inet_sock*, %struct.inet_sock** %19, align 8
  %34 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i32, i32* @IPPROTO_RAW, align 4
  br label %43

39:                                               ; preds = %22
  %40 = load %struct.sock*, %struct.sock** %12, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i32 [ %38, %37 ], [ %42, %39 ]
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %43, %9
  %46 = load %struct.flowi4*, %struct.flowi4** %11, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %57 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.net*, %struct.net** %10, align 8
  %60 = load %struct.sock*, %struct.sock** %12, align 8
  %61 = call i32 @sock_net_uid(%struct.net* %59, %struct.sock* %60)
  %62 = call i32 @flowi4_init_output(%struct.flowi4* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %55, i32 %58, i32 0, i32 0, i32 %61)
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i32 @flowi4_init_output(%struct.flowi4*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sock_net_uid(%struct.net*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
