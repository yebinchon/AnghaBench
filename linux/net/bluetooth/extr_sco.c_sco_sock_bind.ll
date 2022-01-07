; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_sock_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_sock_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i64 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_sco = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AF_BLUETOOTH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sk %p %pMR\00", align 1
@BT_OPEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@BT_BOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @sco_sock_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_sock_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_sco*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_sco*
  store %struct.sockaddr_sco* %12, %struct.sockaddr_sco** %8, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = icmp ne %struct.sockaddr* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %24 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_BLUETOOTH, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %18, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %69

31:                                               ; preds = %22
  %32 = load %struct.sock*, %struct.sock** %9, align 8
  %33 = load %struct.sockaddr_sco*, %struct.sockaddr_sco** %8, align 8
  %34 = getelementptr inbounds %struct.sockaddr_sco, %struct.sockaddr_sco* %33, i32 0, i32 0
  %35 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.sock* %32, i32* %34)
  %36 = load %struct.sock*, %struct.sock** %9, align 8
  %37 = call i32 @lock_sock(%struct.sock* %36)
  %38 = load %struct.sock*, %struct.sock** %9, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BT_OPEN, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i32, i32* @EBADFD, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %65

46:                                               ; preds = %31
  %47 = load %struct.sock*, %struct.sock** %9, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SOCK_SEQPACKET, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %65

55:                                               ; preds = %46
  %56 = load %struct.sock*, %struct.sock** %9, align 8
  %57 = call %struct.TYPE_2__* @sco_pi(%struct.sock* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.sockaddr_sco*, %struct.sockaddr_sco** %8, align 8
  %60 = getelementptr inbounds %struct.sockaddr_sco, %struct.sockaddr_sco* %59, i32 0, i32 0
  %61 = call i32 @bacpy(i32* %58, i32* %60)
  %62 = load i64, i64* @BT_BOUND, align 8
  %63 = load %struct.sock*, %struct.sock** %9, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %55, %52, %43
  %66 = load %struct.sock*, %struct.sock** %9, align 8
  %67 = call i32 @release_sock(%struct.sock* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %28
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @sco_pi(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
