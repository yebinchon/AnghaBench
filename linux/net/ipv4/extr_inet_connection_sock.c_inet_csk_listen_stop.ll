; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_listen_stop.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_listen_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { %struct.request_sock_queue }
%struct.request_sock_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.request_sock* }
%struct.request_sock = type { %struct.request_sock*, %struct.sock* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_csk_listen_stop(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.request_sock_queue*, align 8
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca %struct.request_sock*, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %8)
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %3, align 8
  %10 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %11 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %10, i32 0, i32 0
  store %struct.request_sock_queue* %11, %struct.request_sock_queue** %4, align 8
  br label %12

12:                                               ; preds = %17, %1
  %13 = load %struct.request_sock_queue*, %struct.request_sock_queue** %4, align 8
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call %struct.request_sock* @reqsk_queue_remove(%struct.request_sock_queue* %13, %struct.sock* %14)
  store %struct.request_sock* %15, %struct.request_sock** %6, align 8
  %16 = icmp ne %struct.request_sock* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %19 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %18, i32 0, i32 1
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  store %struct.sock* %20, %struct.sock** %7, align 8
  %21 = call i32 (...) @local_bh_disable()
  %22 = load %struct.sock*, %struct.sock** %7, align 8
  %23 = call i32 @bh_lock_sock(%struct.sock* %22)
  %24 = load %struct.sock*, %struct.sock** %7, align 8
  %25 = call i32 @sock_owned_by_user(%struct.sock* %24)
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.sock*, %struct.sock** %7, align 8
  %28 = call i32 @sock_hold(%struct.sock* %27)
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %31 = load %struct.sock*, %struct.sock** %7, align 8
  %32 = call i32 @inet_child_forget(%struct.sock* %29, %struct.request_sock* %30, %struct.sock* %31)
  %33 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %34 = call i32 @reqsk_put(%struct.request_sock* %33)
  %35 = load %struct.sock*, %struct.sock** %7, align 8
  %36 = call i32 @bh_unlock_sock(%struct.sock* %35)
  %37 = call i32 (...) @local_bh_enable()
  %38 = load %struct.sock*, %struct.sock** %7, align 8
  %39 = call i32 @sock_put(%struct.sock* %38)
  %40 = call i32 (...) @cond_resched()
  br label %12

41:                                               ; preds = %12
  %42 = load %struct.request_sock_queue*, %struct.request_sock_queue** %4, align 8
  %43 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load %struct.request_sock*, %struct.request_sock** %44, align 8
  %46 = icmp ne %struct.request_sock* %45, null
  br i1 %46, label %47, label %74

47:                                               ; preds = %41
  %48 = load %struct.request_sock_queue*, %struct.request_sock_queue** %4, align 8
  %49 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @spin_lock_bh(i32* %50)
  %52 = load %struct.request_sock_queue*, %struct.request_sock_queue** %4, align 8
  %53 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load %struct.request_sock*, %struct.request_sock** %54, align 8
  store %struct.request_sock* %55, %struct.request_sock** %6, align 8
  %56 = load %struct.request_sock_queue*, %struct.request_sock_queue** %4, align 8
  %57 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store %struct.request_sock* null, %struct.request_sock** %58, align 8
  %59 = load %struct.request_sock_queue*, %struct.request_sock_queue** %4, align 8
  %60 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock_bh(i32* %61)
  br label %63

63:                                               ; preds = %66, %47
  %64 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %65 = icmp ne %struct.request_sock* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %68 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %67, i32 0, i32 0
  %69 = load %struct.request_sock*, %struct.request_sock** %68, align 8
  store %struct.request_sock* %69, %struct.request_sock** %5, align 8
  %70 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %71 = call i32 @reqsk_put(%struct.request_sock* %70)
  %72 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  store %struct.request_sock* %72, %struct.request_sock** %6, align 8
  br label %63

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %41
  %75 = load %struct.sock*, %struct.sock** %2, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @WARN_ON_ONCE(i32 %77)
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.request_sock* @reqsk_queue_remove(%struct.request_sock_queue*, %struct.sock*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @inet_child_forget(%struct.sock*, %struct.request_sock*, %struct.sock*) #1

declare dso_local i32 @reqsk_put(%struct.request_sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
