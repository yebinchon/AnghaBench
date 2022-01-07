; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_icmp_socket.c_batadv_socket_receive_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_icmp_socket.c_batadv_socket_receive_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_socket_client = type { i32 }
%struct.batadv_icmp_header = type { i64 }

@batadv_socket_client_hash = common dso_local global %struct.batadv_socket_client** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_socket_receive_packet(%struct.batadv_icmp_header* %0, i64 %1) #0 {
  %3 = alloca %struct.batadv_icmp_header*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.batadv_socket_client*, align 8
  store %struct.batadv_icmp_header* %0, %struct.batadv_icmp_header** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.batadv_socket_client**, %struct.batadv_socket_client*** @batadv_socket_client_hash, align 8
  %7 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %3, align 8
  %8 = getelementptr inbounds %struct.batadv_icmp_header, %struct.batadv_icmp_header* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.batadv_socket_client*, %struct.batadv_socket_client** %6, i64 %9
  %11 = load %struct.batadv_socket_client*, %struct.batadv_socket_client** %10, align 8
  store %struct.batadv_socket_client* %11, %struct.batadv_socket_client** %5, align 8
  %12 = load %struct.batadv_socket_client*, %struct.batadv_socket_client** %5, align 8
  %13 = icmp ne %struct.batadv_socket_client* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.batadv_socket_client*, %struct.batadv_socket_client** %5, align 8
  %16 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @batadv_socket_add_packet(%struct.batadv_socket_client* %15, %struct.batadv_icmp_header* %16, i64 %17)
  br label %19

19:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @batadv_socket_add_packet(%struct.batadv_socket_client*, %struct.batadv_icmp_header*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
