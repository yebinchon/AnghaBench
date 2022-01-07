; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_reuseport.c_run_bpf_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_reuseport.c_run_bpf_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sock_reuseport = type { %struct.sock** }
%struct.bpf_prog = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock_reuseport*, i64, %struct.bpf_prog*, %struct.sk_buff*, i32)* @run_bpf_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @run_bpf_filter(%struct.sock_reuseport* %0, i64 %1, %struct.bpf_prog* %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sock_reuseport*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i64, align 8
  store %struct.sock_reuseport* %0, %struct.sock_reuseport** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.bpf_prog* %2, %struct.bpf_prog** %9, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %15 = call i64 @skb_shared(%struct.sk_buff* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %5
  %18 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %12, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %54

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %10, align 8
  br label %26

26:                                               ; preds = %24, %5
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @pskb_pull(%struct.sk_buff* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %33 = call i32 @kfree_skb(%struct.sk_buff* %32)
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %54

34:                                               ; preds = %26
  %35 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = call i64 @bpf_prog_run_save_cb(%struct.bpf_prog* %35, %struct.sk_buff* %36)
  store i64 %37, i64* %13, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @__skb_push(%struct.sk_buff* %38, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %42 = call i32 @consume_skb(%struct.sk_buff* %41)
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %54

47:                                               ; preds = %34
  %48 = load %struct.sock_reuseport*, %struct.sock_reuseport** %7, align 8
  %49 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %48, i32 0, i32 0
  %50 = load %struct.sock**, %struct.sock*** %49, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds %struct.sock*, %struct.sock** %50, i64 %51
  %53 = load %struct.sock*, %struct.sock** %52, align 8
  store %struct.sock* %53, %struct.sock** %6, align 8
  br label %54

54:                                               ; preds = %47, %46, %31, %23
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  ret %struct.sock* %55
}

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @bpf_prog_run_save_cb(%struct.bpf_prog*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
