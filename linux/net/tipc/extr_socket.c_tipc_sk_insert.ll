; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_sock = type { %struct.sock, i32, i64 }
%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.tipc_net = type { i32 }

@tipc_net_id = common dso_local global i32 0, align 4
@TIPC_MAX_PORT = common dso_local global i64 0, align 8
@TIPC_MIN_PORT = common dso_local global i64 0, align 8
@tsk_rht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_sock*)* @tipc_sk_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_sk_insert(%struct.tipc_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tipc_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.tipc_net*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tipc_sock* %0, %struct.tipc_sock** %3, align 8
  %9 = load %struct.tipc_sock*, %struct.tipc_sock** %3, align 8
  %10 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %9, i32 0, i32 0
  store %struct.sock* %10, %struct.sock** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.net* @sock_net(%struct.sock* %11)
  store %struct.net* %12, %struct.net** %5, align 8
  %13 = load %struct.net*, %struct.net** %5, align 8
  %14 = load i32, i32* @tipc_net_id, align 4
  %15 = call %struct.tipc_net* @net_generic(%struct.net* %13, i32 %14)
  store %struct.tipc_net* %15, %struct.tipc_net** %6, align 8
  %16 = load i64, i64* @TIPC_MAX_PORT, align 8
  %17 = load i64, i64* @TIPC_MIN_PORT, align 8
  %18 = sub nsw i64 %16, %17
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %7, align 8
  %20 = call i64 (...) @prandom_u32()
  %21 = load i64, i64* %7, align 8
  %22 = srem i64 %20, %21
  %23 = load i64, i64* @TIPC_MIN_PORT, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %56, %1
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %7, align 8
  %28 = icmp ne i64 %26, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @TIPC_MIN_PORT, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @TIPC_MAX_PORT, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %29
  %40 = load i64, i64* @TIPC_MIN_PORT, align 8
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.tipc_sock*, %struct.tipc_sock** %3, align 8
  %44 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.tipc_sock*, %struct.tipc_sock** %3, align 8
  %46 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %45, i32 0, i32 0
  %47 = call i32 @sock_hold(%struct.sock* %46)
  %48 = load %struct.tipc_net*, %struct.tipc_net** %6, align 8
  %49 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %48, i32 0, i32 0
  %50 = load %struct.tipc_sock*, %struct.tipc_sock** %3, align 8
  %51 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %50, i32 0, i32 1
  %52 = load i32, i32* @tsk_rht_params, align 4
  %53 = call i32 @rhashtable_lookup_insert_fast(i32* %49, i32* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %61

56:                                               ; preds = %41
  %57 = load %struct.tipc_sock*, %struct.tipc_sock** %3, align 8
  %58 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %57, i32 0, i32 0
  %59 = call i32 @sock_put(%struct.sock* %58)
  br label %25

60:                                               ; preds = %25
  store i32 -1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.tipc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @prandom_u32(...) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @rhashtable_lookup_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
