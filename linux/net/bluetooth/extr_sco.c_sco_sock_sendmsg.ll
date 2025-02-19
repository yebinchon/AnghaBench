; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_sock_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_sock_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.msghdr = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"sock %p, sk %p\00", align 1
@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64)* @sco_sock_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_sock_sendmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %8, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.socket* %13, %struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = call i32 @sock_error(%struct.sock* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %52

22:                                               ; preds = %3
  %23 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MSG_OOB, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %52

32:                                               ; preds = %22
  %33 = load %struct.sock*, %struct.sock** %8, align 8
  %34 = call i32 @lock_sock(%struct.sock* %33)
  %35 = load %struct.sock*, %struct.sock** %8, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BT_CONNECTED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.sock*, %struct.sock** %8, align 8
  %42 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @sco_send_frame(%struct.sock* %41, %struct.msghdr* %42, i64 %43)
  store i32 %44, i32* %9, align 4
  br label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @ENOTCONN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.sock*, %struct.sock** %8, align 8
  %50 = call i32 @release_sock(%struct.sock* %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %29, %20
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sco_send_frame(%struct.sock*, %struct.msghdr*, i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
