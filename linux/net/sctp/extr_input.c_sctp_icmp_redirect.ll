; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_icmp_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_icmp_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sctp_transport = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dst_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_icmp_redirect(%struct.sock* %0, %struct.sctp_transport* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sctp_transport*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call i64 @sock_owned_by_user(%struct.sock* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %13 = icmp ne %struct.sctp_transport* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  br label %30

15:                                               ; preds = %11
  %16 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %17 = call %struct.dst_entry* @sctp_transport_dst_check(%struct.sctp_transport* %16)
  store %struct.dst_entry* %17, %struct.dst_entry** %7, align 8
  %18 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %19 = icmp ne %struct.dst_entry* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %22 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)** %24, align 8
  %26 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i32 %25(%struct.dst_entry* %26, %struct.sock* %27, %struct.sk_buff* %28)
  br label %30

30:                                               ; preds = %14, %20, %15
  ret void
}

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local %struct.dst_entry* @sctp_transport_dst_check(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
