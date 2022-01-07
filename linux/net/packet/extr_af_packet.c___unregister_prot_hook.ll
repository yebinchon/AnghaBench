; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c___unregister_prot_hook.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c___unregister_prot_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.packet_sock = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @__unregister_prot_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__unregister_prot_hook(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.packet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.packet_sock* @pkt_sk(%struct.sock* %6)
  store %struct.packet_sock* %7, %struct.packet_sock** %5, align 8
  %8 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %9 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %8, i32 0, i32 0
  %10 = call i32 @lockdep_assert_held_once(i32* %9)
  %11 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %12 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %14 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %20 = call i32 @__fanout_unlink(%struct.sock* %18, %struct.packet_sock* %19)
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %23 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %22, i32 0, i32 1
  %24 = call i32 @__dev_remove_pack(i32* %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i32 @__sock_put(%struct.sock* %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %32 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = call i32 (...) @synchronize_net()
  %35 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %36 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  br label %38

38:                                               ; preds = %30, %25
  ret void
}

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local i32 @lockdep_assert_held_once(i32*) #1

declare dso_local i32 @__fanout_unlink(%struct.sock*, %struct.packet_sock*) #1

declare dso_local i32 @__dev_remove_pack(i32*) #1

declare dso_local i32 @__sock_put(%struct.sock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
