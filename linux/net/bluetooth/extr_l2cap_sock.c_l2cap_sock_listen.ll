; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_listen.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i64, i32, i64 }
%struct.l2cap_chan = type { i32, i8*, i32 }
%struct.TYPE_2__ = type { %struct.l2cap_chan* }

@.str = private unnamed_addr constant [17 x i8] c"sk %p backlog %d\00", align 1
@BT_BOUND = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@disable_ertm = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@L2CAP_NESTING_PARENT = common dso_local global i32 0, align 4
@BT_LISTEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @l2cap_sock_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_sock_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.l2cap_chan*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %13, align 8
  store %struct.l2cap_chan* %14, %struct.l2cap_chan** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.sock* %15, i32 %16)
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = call i32 @lock_sock(%struct.sock* %18)
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BT_BOUND, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EBADFD, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %73

28:                                               ; preds = %2
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SOCK_SEQPACKET, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SOCK_STREAM, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %73

43:                                               ; preds = %34, %28
  %44 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %45 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %53 [
    i32 131, label %47
    i32 129, label %47
    i32 130, label %48
    i32 128, label %48
  ]

47:                                               ; preds = %43, %43
  br label %56

48:                                               ; preds = %43, %43
  %49 = load i32, i32* @disable_ertm, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %56

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %43, %52
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %73

56:                                               ; preds = %51, %47
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.sock*, %struct.sock** %5, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.sock*, %struct.sock** %5, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %63 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %62, i32 0, i32 2
  %64 = load i32, i32* @L2CAP_NESTING_PARENT, align 4
  %65 = call i32 @atomic_set(i32* %63, i32 %64)
  %66 = load i8*, i8** @BT_LISTEN, align 8
  %67 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %68 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @BT_LISTEN, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.sock*, %struct.sock** %5, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %56, %53, %40, %25
  %74 = load %struct.sock*, %struct.sock** %5, align 8
  %75 = call i32 @release_sock(%struct.sock* %74)
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
