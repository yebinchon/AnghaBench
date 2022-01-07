; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_reuseport.c_reuseport_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_reuseport.c_reuseport_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sock_reuseport = type { i32, i32, %struct.sock** }

@reuseport_lock = common dso_local global i32 0, align 4
@INIT_SOCKS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reuseport_alloc(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock_reuseport*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 @spin_lock_bh(i32* @reuseport_lock)
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @lockdep_is_held(i32* @reuseport_lock)
  %12 = call %struct.sock_reuseport* @rcu_dereference_protected(i32 %10, i32 %11)
  store %struct.sock_reuseport* %12, %struct.sock_reuseport** %6, align 8
  %13 = load %struct.sock_reuseport*, %struct.sock_reuseport** %6, align 8
  %14 = icmp ne %struct.sock_reuseport* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.sock_reuseport*, %struct.sock_reuseport** %6, align 8
  %21 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %18, %15
  br label %48

23:                                               ; preds = %2
  %24 = load i32, i32* @INIT_SOCKS, align 4
  %25 = call %struct.sock_reuseport* @__reuseport_alloc(i32 %24)
  store %struct.sock_reuseport* %25, %struct.sock_reuseport** %6, align 8
  %26 = load %struct.sock_reuseport*, %struct.sock_reuseport** %6, align 8
  %27 = icmp ne %struct.sock_reuseport* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = call i32 @spin_unlock_bh(i32* @reuseport_lock)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %50

32:                                               ; preds = %23
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = load %struct.sock_reuseport*, %struct.sock_reuseport** %6, align 8
  %35 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %34, i32 0, i32 2
  %36 = load %struct.sock**, %struct.sock*** %35, align 8
  %37 = getelementptr inbounds %struct.sock*, %struct.sock** %36, i64 0
  store %struct.sock* %33, %struct.sock** %37, align 8
  %38 = load %struct.sock_reuseport*, %struct.sock_reuseport** %6, align 8
  %39 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.sock_reuseport*, %struct.sock_reuseport** %6, align 8
  %42 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sock_reuseport*, %struct.sock_reuseport** %6, align 8
  %47 = call i32 @rcu_assign_pointer(i32 %45, %struct.sock_reuseport* %46)
  br label %48

48:                                               ; preds = %32, %22
  %49 = call i32 @spin_unlock_bh(i32* @reuseport_lock)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %28
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sock_reuseport* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.sock_reuseport* @__reuseport_alloc(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.sock_reuseport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
