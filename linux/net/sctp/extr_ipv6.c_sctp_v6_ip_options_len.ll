; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_ip_options_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_ip_options_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.ipv6_txoptions = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @sctp_v6_ip_options_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v6_ip_options_len(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.ipv6_pinfo*, align 8
  %4 = alloca %struct.ipv6_txoptions*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %6)
  store %struct.ipv6_pinfo* %7, %struct.ipv6_pinfo** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %3, align 8
  %10 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ipv6_txoptions* @rcu_dereference(i32 %11)
  store %struct.ipv6_txoptions* %12, %struct.ipv6_txoptions** %4, align 8
  %13 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %14 = icmp ne %struct.ipv6_txoptions* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %17 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %20 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %15, %1
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ipv6_txoptions* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
