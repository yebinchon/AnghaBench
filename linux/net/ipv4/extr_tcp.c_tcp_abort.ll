; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_abort.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32 (%struct.sock*)* }
%struct.request_sock = type { i32 }

@TCP_NEW_SYN_RECV = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@TCP_CLOSE = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_abort(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call i32 @sk_fullsock(%struct.sock* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TCP_NEW_SYN_RECV, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call %struct.request_sock* @inet_reqsk(%struct.sock* %17)
  store %struct.request_sock* %18, %struct.request_sock** %6, align 8
  %19 = call i32 (...) @local_bh_disable()
  %20 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %21 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %24 = call i32 @inet_csk_reqsk_queue_drop(i32 %22, %struct.request_sock* %23)
  %25 = call i32 (...) @local_bh_enable()
  store i32 0, i32* %3, align 4
  br label %81

26:                                               ; preds = %10
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %81

29:                                               ; preds = %2
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = call i32 @lock_sock(%struct.sock* %30)
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TCP_LISTEN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = load i32, i32* @TCP_CLOSE, align 4
  %40 = call i32 @tcp_set_state(%struct.sock* %38, i32 %39)
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = call i32 @inet_csk_listen_stop(%struct.sock* %41)
  br label %43

43:                                               ; preds = %37, %29
  %44 = call i32 (...) @local_bh_disable()
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = call i32 @bh_lock_sock(%struct.sock* %45)
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = load i32, i32* @SOCK_DEAD, align 4
  %49 = call i32 @sock_flag(%struct.sock* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %73, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = call i32 (...) @smp_wmb()
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 2
  %58 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %57, align 8
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = call i32 %58(%struct.sock* %59)
  %61 = load %struct.sock*, %struct.sock** %4, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @tcp_need_reset(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %51
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = call i32 @tcp_send_active_reset(%struct.sock* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %51
  %71 = load %struct.sock*, %struct.sock** %4, align 8
  %72 = call i32 @tcp_done(%struct.sock* %71)
  br label %73

73:                                               ; preds = %70, %43
  %74 = load %struct.sock*, %struct.sock** %4, align 8
  %75 = call i32 @bh_unlock_sock(%struct.sock* %74)
  %76 = call i32 (...) @local_bh_enable()
  %77 = load %struct.sock*, %struct.sock** %4, align 8
  %78 = call i32 @tcp_write_queue_purge(%struct.sock* %77)
  %79 = load %struct.sock*, %struct.sock** %4, align 8
  %80 = call i32 @release_sock(%struct.sock* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %73, %26, %16
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @sk_fullsock(%struct.sock*) #1

declare dso_local %struct.request_sock* @inet_reqsk(%struct.sock*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop(i32, %struct.request_sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_listen_stop(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i64 @tcp_need_reset(i64) #1

declare dso_local i32 @tcp_send_active_reset(%struct.sock*, i32) #1

declare dso_local i32 @tcp_done(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @tcp_write_queue_purge(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
