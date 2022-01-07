; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_msg_verdict.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_msg_verdict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_psock = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_msg = type { i32, i32, %struct.sock* }
%struct.bpf_prog = type { i32 }

@__SK_PASS = common dso_local global i32 0, align 4
@__SK_REDIRECT = common dso_local global i32 0, align 4
@__SK_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_psock_msg_verdict(%struct.sock* %0, %struct.sk_psock* %1, %struct.sk_msg* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_psock*, align 8
  %6 = alloca %struct.sk_msg*, align 8
  %7 = alloca %struct.bpf_prog*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_psock* %1, %struct.sk_psock** %5, align 8
  store %struct.sk_msg* %2, %struct.sk_msg** %6, align 8
  %9 = call i32 (...) @preempt_disable()
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %12 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.bpf_prog* @READ_ONCE(i32 %14)
  store %struct.bpf_prog* %15, %struct.bpf_prog** %7, align 8
  %16 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %17 = icmp ne %struct.bpf_prog* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @__SK_PASS, align 4
  store i32 %23, i32* %8, align 4
  br label %74

24:                                               ; preds = %3
  %25 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %26 = call i32 @sk_msg_compute_data_pointers(%struct.sk_msg* %25)
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %29 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %28, i32 0, i32 2
  store %struct.sock* %27, %struct.sock** %29, align 8
  %30 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %31 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %32 = call i32 @BPF_PROG_RUN(%struct.bpf_prog* %30, %struct.sk_msg* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %35 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sk_psock_map_verd(i32 %33, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %39 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %42 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @__SK_REDIRECT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %24
  %47 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %48 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %53 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sock_put(i32 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %58 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %61 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %63 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @__SK_DROP, align 4
  store i32 %67, i32* %8, align 4
  br label %74

68:                                               ; preds = %56
  %69 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %70 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @sock_hold(i32 %71)
  br label %73

73:                                               ; preds = %68, %24
  br label %74

74:                                               ; preds = %73, %66, %22
  %75 = call i32 (...) @rcu_read_unlock()
  %76 = call i32 (...) @preempt_enable()
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sk_msg_compute_data_pointers(%struct.sk_msg*) #1

declare dso_local i32 @BPF_PROG_RUN(%struct.bpf_prog*, %struct.sk_msg*) #1

declare dso_local i32 @sk_psock_map_verd(i32, i32) #1

declare dso_local i32 @sock_put(i32) #1

declare dso_local i32 @sock_hold(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
