; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_reuseport.c_reuseport_detach_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_reuseport.c_reuseport_detach_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sock_reuseport = type { i32, i32, %struct.sock**, i64 }

@reuseport_lock = common dso_local global i32 0, align 4
@reuseport_free_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reuseport_detach_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sock_reuseport*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = call i32 @spin_lock_bh(i32* @reuseport_lock)
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @lockdep_is_held(i32* @reuseport_lock)
  %10 = call %struct.sock_reuseport* @rcu_dereference_protected(i32 %8, i32 %9)
  store %struct.sock_reuseport* %10, %struct.sock_reuseport** %3, align 8
  %11 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %12 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = call i32 @bpf_sk_reuseport_detach(%struct.sock* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rcu_assign_pointer(i32 %21, i32* null)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %71, %18
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %26 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %23
  %30 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %31 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %30, i32 0, i32 2
  %32 = load %struct.sock**, %struct.sock*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sock*, %struct.sock** %32, i64 %34
  %36 = load %struct.sock*, %struct.sock** %35, align 8
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = icmp eq %struct.sock* %36, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %29
  %40 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %41 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %40, i32 0, i32 2
  %42 = load %struct.sock**, %struct.sock*** %41, align 8
  %43 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %44 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sock*, %struct.sock** %42, i64 %47
  %49 = load %struct.sock*, %struct.sock** %48, align 8
  %50 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %51 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %50, i32 0, i32 2
  %52 = load %struct.sock**, %struct.sock*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sock*, %struct.sock** %52, i64 %54
  store %struct.sock* %49, %struct.sock** %55, align 8
  %56 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %57 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %61 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %39
  %65 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %66 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %65, i32 0, i32 1
  %67 = load i32, i32* @reuseport_free_rcu, align 4
  %68 = call i32 @call_rcu(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %39
  br label %74

70:                                               ; preds = %29
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %23

74:                                               ; preds = %69, %23
  %75 = call i32 @spin_unlock_bh(i32* @reuseport_lock)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sock_reuseport* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @bpf_sk_reuseport_detach(%struct.sock*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
