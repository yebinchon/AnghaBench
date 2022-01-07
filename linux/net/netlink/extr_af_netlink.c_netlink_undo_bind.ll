; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_undo_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_undo_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.netlink_sock = type { i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, %struct.sock*)* @netlink_undo_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netlink_undo_bind(i32 %0, i64 %1, %struct.sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.netlink_sock*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.sock* %2, %struct.sock** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %6, align 8
  %10 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %9)
  store %struct.netlink_sock* %10, %struct.netlink_sock** %7, align 8
  %11 = load %struct.netlink_sock*, %struct.netlink_sock** %7, align 8
  %12 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %11, i32 0, i32 0
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %14 = icmp ne i32 (i32, i32)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %38

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %35, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @test_bit(i32 %22, i64* %5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.netlink_sock*, %struct.netlink_sock** %7, align 8
  %27 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %26, i32 0, i32 0
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = call i32 @sock_net(%struct.sock* %29)
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 %28(i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %25, %21
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %17

38:                                               ; preds = %15, %17
  ret void
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
