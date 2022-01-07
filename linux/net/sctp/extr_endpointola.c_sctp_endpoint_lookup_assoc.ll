; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_endpointola.c_sctp_endpoint_lookup_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_endpointola.c_sctp_endpoint_lookup_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%union.sctp_addr = type { i32 }
%struct.sctp_transport = type { %struct.sctp_association* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_association* @sctp_endpoint_lookup_assoc(%struct.sctp_endpoint* %0, %union.sctp_addr* %1, %struct.sctp_transport** %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_endpoint*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca %struct.sctp_transport**, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca %struct.sctp_transport*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store %struct.sctp_transport** %2, %struct.sctp_transport*** %7, align 8
  store %struct.sctp_association* null, %struct.sctp_association** %8, align 8
  %10 = load %struct.sctp_transport**, %struct.sctp_transport*** %7, align 8
  store %struct.sctp_transport* null, %struct.sctp_transport** %10, align 8
  %11 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %12 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.sctp_association* null, %struct.sctp_association** %4, align 8
  br label %35

18:                                               ; preds = %3
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %21 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %22 = call %struct.sctp_transport* @sctp_epaddr_lookup_transport(%struct.sctp_endpoint* %20, %union.sctp_addr* %21)
  store %struct.sctp_transport* %22, %struct.sctp_transport** %9, align 8
  %23 = load %struct.sctp_transport*, %struct.sctp_transport** %9, align 8
  %24 = icmp ne %struct.sctp_transport* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %32

26:                                               ; preds = %18
  %27 = load %struct.sctp_transport*, %struct.sctp_transport** %9, align 8
  %28 = load %struct.sctp_transport**, %struct.sctp_transport*** %7, align 8
  store %struct.sctp_transport* %27, %struct.sctp_transport** %28, align 8
  %29 = load %struct.sctp_transport*, %struct.sctp_transport** %9, align 8
  %30 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %29, i32 0, i32 0
  %31 = load %struct.sctp_association*, %struct.sctp_association** %30, align 8
  store %struct.sctp_association* %31, %struct.sctp_association** %8, align 8
  br label %32

32:                                               ; preds = %26, %25
  %33 = call i32 (...) @rcu_read_unlock()
  %34 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  store %struct.sctp_association* %34, %struct.sctp_association** %4, align 8
  br label %35

35:                                               ; preds = %32, %17
  %36 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  ret %struct.sctp_association* %36
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sctp_transport* @sctp_epaddr_lookup_transport(%struct.sctp_endpoint*, %union.sctp_addr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
