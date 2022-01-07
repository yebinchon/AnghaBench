; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.proto = type { i32 }
%struct.sk_psock = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_bpf_init(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.proto*, align 8
  %5 = alloca %struct.sk_psock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.proto* @READ_ONCE(i32 %8)
  store %struct.proto* %9, %struct.proto** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call i32 @sock_owned_by_me(%struct.sock* %10)
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.sk_psock* @sk_psock(%struct.sock* %13)
  store %struct.sk_psock* %14, %struct.sk_psock** %5, align 8
  %15 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %16 = icmp ne %struct.sk_psock* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %19 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load %struct.proto*, %struct.proto** %4, align 8
  %24 = call i64 @tcp_bpf_assert_proto_ops(%struct.proto* %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %17, %1
  %27 = phi i1 [ true, %17 ], [ true, %1 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 (...) @rcu_read_unlock()
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %43

35:                                               ; preds = %26
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = load %struct.proto*, %struct.proto** %4, align 8
  %38 = call i32 @tcp_bpf_check_v6_needs_rebuild(%struct.sock* %36, %struct.proto* %37)
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %41 = call i32 @tcp_bpf_update_sk_prot(%struct.sock* %39, %struct.sk_psock* %40)
  %42 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %35, %31
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.proto* @READ_ONCE(i32) #1

declare dso_local i32 @sock_owned_by_me(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sk_psock* @sk_psock(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @tcp_bpf_assert_proto_ops(%struct.proto*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @tcp_bpf_check_v6_needs_rebuild(%struct.sock*, %struct.proto*) #1

declare dso_local i32 @tcp_bpf_update_sk_prot(%struct.sock*, %struct.sk_psock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
