; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_dgram_peer_wake_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_dgram_peer_wake_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.unix_sock = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.sock* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sock*)* @unix_dgram_peer_wake_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unix_dgram_peer_wake_disconnect(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.unix_sock*, align 8
  %6 = alloca %struct.unix_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.unix_sock* @unix_sk(%struct.sock* %7)
  store %struct.unix_sock* %8, %struct.unix_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.unix_sock* @unix_sk(%struct.sock* %9)
  store %struct.unix_sock* %10, %struct.unix_sock** %6, align 8
  %11 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %12 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.unix_sock*, %struct.unix_sock** %5, align 8
  %16 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = icmp eq %struct.sock* %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %23 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %22, i32 0, i32 0
  %24 = load %struct.unix_sock*, %struct.unix_sock** %5, align 8
  %25 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %24, i32 0, i32 1
  %26 = call i32 @__remove_wait_queue(%struct.TYPE_3__* %23, %struct.TYPE_4__* %25)
  %27 = load %struct.unix_sock*, %struct.unix_sock** %5, align 8
  %28 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %29, align 8
  br label %30

30:                                               ; preds = %21, %2
  %31 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %32 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  ret void
}

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__remove_wait_queue(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
