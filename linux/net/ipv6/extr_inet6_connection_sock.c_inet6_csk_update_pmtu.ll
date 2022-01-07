; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_update_pmtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_update_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dst_entry*, %struct.sock*, i32*, i32)* }
%struct.sock = type { i32 }
%struct.flowi6 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @inet6_csk_update_pmtu(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flowi6, align 4
  %7 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.dst_entry* @inet6_csk_route_socket(%struct.sock* %8, %struct.flowi6* %6)
  store %struct.dst_entry* %9, %struct.dst_entry** %7, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %11 = call i64 @IS_ERR(%struct.dst_entry* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.dst_entry* null, %struct.dst_entry** %3, align 8
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %16 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.dst_entry*, %struct.sock*, i32*, i32)*, i32 (%struct.dst_entry*, %struct.sock*, i32*, i32)** %18, align 8
  %20 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 %19(%struct.dst_entry* %20, %struct.sock* %21, i32* null, i32 %22)
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = call %struct.dst_entry* @inet6_csk_route_socket(%struct.sock* %24, %struct.flowi6* %6)
  store %struct.dst_entry* %25, %struct.dst_entry** %7, align 8
  %26 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %27 = call i64 @IS_ERR(%struct.dst_entry* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  br label %32

30:                                               ; preds = %14
  %31 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi %struct.dst_entry* [ null, %29 ], [ %31, %30 ]
  store %struct.dst_entry* %33, %struct.dst_entry** %3, align 8
  br label %34

34:                                               ; preds = %32, %13
  %35 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  ret %struct.dst_entry* %35
}

declare dso_local %struct.dst_entry* @inet6_csk_route_socket(%struct.sock*, %struct.flowi6*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
