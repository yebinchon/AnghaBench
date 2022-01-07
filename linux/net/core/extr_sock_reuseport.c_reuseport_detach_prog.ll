; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_reuseport.c_reuseport_detach_prog.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_reuseport.c_reuseport_detach_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64 }
%struct.sock_reuseport = type { i32 }
%struct.bpf_prog = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@reuseport_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reuseport_detach_prog(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock_reuseport*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @rcu_access_pointer(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  br label %22

19:                                               ; preds = %11
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %19 ]
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %1
  store %struct.bpf_prog* null, %struct.bpf_prog** %5, align 8
  %25 = call i32 @spin_lock_bh(i32* @reuseport_lock)
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @lockdep_is_held(i32* @reuseport_lock)
  %30 = call %struct.sock_reuseport* @rcu_dereference_protected(i32 %28, i32 %29)
  store %struct.sock_reuseport* %30, %struct.sock_reuseport** %4, align 8
  %31 = load %struct.sock_reuseport*, %struct.sock_reuseport** %4, align 8
  %32 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %35 = call i32 @lockdep_is_held(i32* @reuseport_lock)
  %36 = call i32 @rcu_swap_protected(i32 %33, %struct.bpf_prog* %34, i32 %35)
  %37 = call i32 @spin_unlock_bh(i32* @reuseport_lock)
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %39 = icmp ne %struct.bpf_prog* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %24
  %44 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %45 = call i32 @sk_reuseport_prog_free(%struct.bpf_prog* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %40, %22
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sock_reuseport* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_swap_protected(i32, %struct.bpf_prog*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @sk_reuseport_prog_free(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
