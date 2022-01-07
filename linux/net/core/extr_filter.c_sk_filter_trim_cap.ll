; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_sk_filter_trim_cap.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_sk_filter_trim_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.sock* }
%struct.sk_filter = type { i32 }

@SOCK_MEMALLOC = common dso_local global i32 0, align 4
@LINUX_MIB_PFMEMALLOCDROP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_filter_trim_cap(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_filter*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i64 @skb_pfmemalloc(%struct.sk_buff* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = load i32, i32* @SOCK_MEMALLOC, align 4
  %18 = call i32 @sock_flag(%struct.sock* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = call i32 @sock_net(%struct.sock* %21)
  %23 = load i32, i32* @LINUX_MIB_PFMEMALLOCDROP, align 4
  %24 = call i32 @NET_INC_STATS(i32 %22, i32 %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %82

27:                                               ; preds = %15, %3
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @BPF_CGROUP_RUN_PROG_INET_INGRESS(%struct.sock* %28, %struct.sk_buff* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %82

35:                                               ; preds = %27
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @security_sock_rcv_skb(%struct.sock* %36, %struct.sk_buff* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %82

43:                                               ; preds = %35
  %44 = call i32 (...) @rcu_read_lock()
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.sk_filter* @rcu_dereference(i32 %47)
  store %struct.sk_filter* %48, %struct.sk_filter** %9, align 8
  %49 = load %struct.sk_filter*, %struct.sk_filter** %9, align 8
  %50 = icmp ne %struct.sk_filter* %49, null
  br i1 %50, label %51, label %79

51:                                               ; preds = %43
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load %struct.sock*, %struct.sock** %53, align 8
  store %struct.sock* %54, %struct.sock** %10, align 8
  %55 = load %struct.sock*, %struct.sock** %5, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  store %struct.sock* %55, %struct.sock** %57, align 8
  %58 = load %struct.sk_filter*, %struct.sk_filter** %9, align 8
  %59 = getelementptr inbounds %struct.sk_filter, %struct.sk_filter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call i32 @bpf_prog_run_save_cb(i32 %60, %struct.sk_buff* %61)
  store i32 %62, i32* %11, align 4
  %63 = load %struct.sock*, %struct.sock** %10, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  store %struct.sock* %63, %struct.sock** %65, align 8
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %51
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @max(i32 %70, i32 %71)
  %73 = call i32 @pskb_trim(%struct.sk_buff* %69, i32 %72)
  br label %77

74:                                               ; preds = %51
  %75 = load i32, i32* @EPERM, align 4
  %76 = sub nsw i32 0, %75
  br label %77

77:                                               ; preds = %74, %68
  %78 = phi i32 [ %73, %68 ], [ %76, %74 ]
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %77, %43
  %80 = call i32 (...) @rcu_read_unlock()
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %41, %33, %20
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @skb_pfmemalloc(%struct.sk_buff*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @BPF_CGROUP_RUN_PROG_INET_INGRESS(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @security_sock_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sk_filter* @rcu_dereference(i32) #1

declare dso_local i32 @bpf_prog_run_save_cb(i32, %struct.sk_buff*) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
