; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32* }
%struct.sock = type { i32 }
%struct.nr_sock = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@init_net = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@PF_NETROM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@nr_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nr_proto_ops = common dso_local global i32 0, align 4
@sysctl_netrom_transport_timeout = common dso_local global i32 0, align 4
@sysctl_netrom_transport_acknowledge_delay = common dso_local global i32 0, align 4
@sysctl_netrom_transport_maximum_tries = common dso_local global i32 0, align 4
@sysctl_netrom_transport_busy_delay = common dso_local global i32 0, align 4
@sysctl_netrom_transport_no_activity_timeout = common dso_local global i32 0, align 4
@sysctl_netrom_transport_requested_window_size = common dso_local global i32 0, align 4
@NR_STATE_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @nr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nr_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.nr_sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net*, %struct.net** %6, align 8
  %13 = call i32 @net_eq(%struct.net* %12, i32* @init_net)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EAFNOSUPPORT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %91

18:                                               ; preds = %4
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SOCK_SEQPACKET, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %18
  %28 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %91

30:                                               ; preds = %24
  %31 = load %struct.net*, %struct.net** %6, align 8
  %32 = load i32, i32* @PF_NETROM, align 4
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.sock* @sk_alloc(%struct.net* %31, i32 %32, i32 %33, i32* @nr_proto, i32 %34)
  store %struct.sock* %35, %struct.sock** %10, align 8
  %36 = load %struct.sock*, %struct.sock** %10, align 8
  %37 = icmp eq %struct.sock* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %91

41:                                               ; preds = %30
  %42 = load %struct.sock*, %struct.sock** %10, align 8
  %43 = call %struct.nr_sock* @nr_sk(%struct.sock* %42)
  store %struct.nr_sock* %43, %struct.nr_sock** %11, align 8
  %44 = load %struct.socket*, %struct.socket** %7, align 8
  %45 = load %struct.sock*, %struct.sock** %10, align 8
  %46 = call i32 @sock_init_data(%struct.socket* %44, %struct.sock* %45)
  %47 = load %struct.socket*, %struct.socket** %7, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 1
  store i32* @nr_proto_ops, i32** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.sock*, %struct.sock** %10, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %53 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %52, i32 0, i32 10
  %54 = call i32 @skb_queue_head_init(i32* %53)
  %55 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %56 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %55, i32 0, i32 9
  %57 = call i32 @skb_queue_head_init(i32* %56)
  %58 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %59 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %58, i32 0, i32 8
  %60 = call i32 @skb_queue_head_init(i32* %59)
  %61 = load %struct.sock*, %struct.sock** %10, align 8
  %62 = call i32 @nr_init_timers(%struct.sock* %61)
  %63 = load i32, i32* @sysctl_netrom_transport_timeout, align 4
  %64 = call i8* @msecs_to_jiffies(i32 %63)
  %65 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %66 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %65, i32 0, i32 7
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @sysctl_netrom_transport_acknowledge_delay, align 4
  %68 = call i8* @msecs_to_jiffies(i32 %67)
  %69 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %70 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %69, i32 0, i32 6
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @sysctl_netrom_transport_maximum_tries, align 4
  %72 = call i8* @msecs_to_jiffies(i32 %71)
  %73 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %74 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @sysctl_netrom_transport_busy_delay, align 4
  %76 = call i8* @msecs_to_jiffies(i32 %75)
  %77 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %78 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @sysctl_netrom_transport_no_activity_timeout, align 4
  %80 = call i8* @msecs_to_jiffies(i32 %79)
  %81 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %82 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @sysctl_netrom_transport_requested_window_size, align 4
  %84 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %85 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %87 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load i32, i32* @NR_STATE_0, align 4
  %89 = load %struct.nr_sock*, %struct.nr_sock** %11, align 8
  %90 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %41, %38, %27, %15
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @net_eq(%struct.net*, i32*) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @nr_init_timers(%struct.sock*) #1

declare dso_local i8* @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
