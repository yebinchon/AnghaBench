; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_ip_options_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_ip_options_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_sock = type { i32 }
%struct.ip_options_rcu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @sctp_v4_ip_options_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v4_ip_options_len(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_sock*, align 8
  %4 = alloca %struct.ip_options_rcu*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.inet_sock* @inet_sk(%struct.sock* %6)
  store %struct.inet_sock* %7, %struct.inet_sock** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %10 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ip_options_rcu* @rcu_dereference(i32 %11)
  store %struct.ip_options_rcu* %12, %struct.ip_options_rcu** %4, align 8
  %13 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %4, align 8
  %14 = icmp ne %struct.ip_options_rcu* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %4, align 8
  %17 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %15, %1
  %21 = call i32 (...) @rcu_read_unlock()
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip_options_rcu* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
