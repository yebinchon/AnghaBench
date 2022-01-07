; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_ll = type { i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @packet_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_ll*, align 8
  %9 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %11 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_ll*
  store %struct.sockaddr_ll* %11, %struct.sockaddr_ll** %8, align 8
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 24
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %50

21:                                               ; preds = %3
  %22 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %8, align 8
  %23 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_PACKET, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %50

30:                                               ; preds = %21
  %31 = load %struct.sock*, %struct.sock** %9, align 8
  %32 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %8, align 8
  %33 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %8, align 8
  %36 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %46

40:                                               ; preds = %30
  %41 = load %struct.sock*, %struct.sock** %9, align 8
  %42 = call %struct.TYPE_2__* @pkt_sk(%struct.sock* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  br label %46

46:                                               ; preds = %40, %39
  %47 = phi i64 [ %37, %39 ], [ %45, %40 ]
  %48 = trunc i64 %47 to i32
  %49 = call i32 @packet_do_bind(%struct.sock* %31, i32* null, i32 %34, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %27, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @packet_do_bind(%struct.sock*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @pkt_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
