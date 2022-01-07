; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i32, %struct.sock* }
%struct.sock = type { i64 }
%struct.sk_buff = type { %struct.sock* }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @unix_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 2
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %10, align 8
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.socket*, %struct.socket** %6, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SOCK_STREAM, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.socket*, %struct.socket** %6, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SOCK_SEQPACKET, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %79

31:                                               ; preds = %24, %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  %34 = load %struct.sock*, %struct.sock** %10, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TCP_LISTEN, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %79

40:                                               ; preds = %31
  %41 = load %struct.sock*, %struct.sock** %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @O_NONBLOCK, align 4
  %44 = and i32 %42, %43
  %45 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %41, i32 0, i32 %44, i32* %13)
  store %struct.sk_buff* %45, %struct.sk_buff** %12, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %79

55:                                               ; preds = %40
  %56 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load %struct.sock*, %struct.sock** %57, align 8
  store %struct.sock* %58, %struct.sock** %11, align 8
  %59 = load %struct.sock*, %struct.sock** %10, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %61 = call i32 @skb_free_datagram(%struct.sock* %59, %struct.sk_buff* %60)
  %62 = load %struct.sock*, %struct.sock** %10, align 8
  %63 = call %struct.TYPE_2__* @unix_sk(%struct.sock* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @wake_up_interruptible(i32* %64)
  %66 = load %struct.sock*, %struct.sock** %11, align 8
  %67 = call i32 @unix_state_lock(%struct.sock* %66)
  %68 = load i32, i32* @SS_CONNECTED, align 4
  %69 = load %struct.socket*, %struct.socket** %7, align 8
  %70 = getelementptr inbounds %struct.socket, %struct.socket* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.socket*, %struct.socket** %6, align 8
  %72 = load %struct.socket*, %struct.socket** %7, align 8
  %73 = call i32 @unix_sock_inherit_flags(%struct.socket* %71, %struct.socket* %72)
  %74 = load %struct.sock*, %struct.sock** %11, align 8
  %75 = load %struct.socket*, %struct.socket** %7, align 8
  %76 = call i32 @sock_graft(%struct.sock* %74, %struct.socket* %75)
  %77 = load %struct.sock*, %struct.sock** %11, align 8
  %78 = call i32 @unix_state_unlock(%struct.sock* %77)
  store i32 0, i32* %5, align 4
  br label %81

79:                                               ; preds = %54, %39, %30
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %55
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local %struct.TYPE_2__* @unix_sk(%struct.sock*) #1

declare dso_local i32 @unix_state_lock(%struct.sock*) #1

declare dso_local i32 @unix_sock_inherit_flags(%struct.socket*, %struct.socket*) #1

declare dso_local i32 @sock_graft(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @unix_state_unlock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
