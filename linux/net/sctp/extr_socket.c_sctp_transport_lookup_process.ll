; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_transport_lookup_process.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_transport_lookup_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type opaque
%struct.net = type { i32 }
%union.sctp_addr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_transport_lookup_process(i32 (%struct.sctp_transport*, i8*)* %0, %struct.net* %1, %union.sctp_addr* %2, %union.sctp_addr* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.sctp_transport*, i8*)*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %union.sctp_addr*, align 8
  %10 = alloca %union.sctp_addr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sctp_transport*, align 8
  %13 = alloca i32, align 4
  store i32 (%struct.sctp_transport*, i8*)* %0, i32 (%struct.sctp_transport*, i8*)** %7, align 8
  store %struct.net* %1, %struct.net** %8, align 8
  store %union.sctp_addr* %2, %union.sctp_addr** %9, align 8
  store %union.sctp_addr* %3, %union.sctp_addr** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.net*, %struct.net** %8, align 8
  %16 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %17 = load %union.sctp_addr*, %union.sctp_addr** %10, align 8
  %18 = call %struct.sctp_transport* @sctp_addrs_lookup_transport(%struct.net* %15, %union.sctp_addr* %16, %union.sctp_addr* %17)
  store %struct.sctp_transport* %18, %struct.sctp_transport** %12, align 8
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %21 = icmp ne %struct.sctp_transport* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %33

25:                                               ; preds = %5
  %26 = load i32 (%struct.sctp_transport*, i8*)*, i32 (%struct.sctp_transport*, i8*)** %7, align 8
  %27 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 %26(%struct.sctp_transport* %27, i8* %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %31 = call i32 @sctp_transport_put(%struct.sctp_transport* %30)
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %25, %22
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sctp_transport* @sctp_addrs_lookup_transport(%struct.net*, %union.sctp_addr*, %union.sctp_addr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
