; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c___xsk_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c___xsk_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.xdp_sock = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @__xsk_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xsk_sendmsg(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.xdp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = call %struct.xdp_sock* @xdp_sk(%struct.sock* %5)
  store %struct.xdp_sock* %6, %struct.xdp_sock** %4, align 8
  %7 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %8 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFF_UP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENETDOWN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %47

22:                                               ; preds = %1
  %23 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %24 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @ENOBUFS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %47

34:                                               ; preds = %22
  %35 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %36 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %41 = call i32 @xsk_zc_xmit(%struct.xdp_sock* %40)
  br label %45

42:                                               ; preds = %34
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = call i32 @xsk_generic_xmit(%struct.sock* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i32 [ %41, %39 ], [ %44, %42 ]
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %31, %19
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.xdp_sock* @xdp_sk(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xsk_zc_xmit(%struct.xdp_sock*) #1

declare dso_local i32 @xsk_generic_xmit(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
