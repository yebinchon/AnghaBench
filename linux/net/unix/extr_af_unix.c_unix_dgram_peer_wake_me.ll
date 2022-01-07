; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_dgram_peer_wake_me.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_dgram_peer_wake_me.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sock*)* @unix_dgram_peer_wake_me to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_dgram_peer_wake_me(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %5, align 8
  %9 = call i32 @unix_dgram_peer_wake_connect(%struct.sock* %7, %struct.sock* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call i64 @unix_recvq_full(%struct.sock* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = load i32, i32* @SOCK_DEAD, align 4
  %16 = call i32 @sock_flag(%struct.sock* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %27

19:                                               ; preds = %13, %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = call i32 @unix_dgram_peer_wake_disconnect(%struct.sock* %23, %struct.sock* %24)
  br label %26

26:                                               ; preds = %22, %19
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @unix_dgram_peer_wake_connect(%struct.sock*, %struct.sock*) #1

declare dso_local i64 @unix_recvq_full(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @unix_dgram_peer_wake_disconnect(%struct.sock*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
