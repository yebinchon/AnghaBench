; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_af_rose.c_rose_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_af_rose.c_rose_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32* }
%struct.sock = type { i32 }
%struct.rose_sock = type { i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i64, i32, i32 }

@init_net = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@PF_ROSE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@rose_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rose_proto_ops = common dso_local global i32 0, align 4
@sysctl_rose_call_request_timeout = common dso_local global i32 0, align 4
@sysctl_rose_reset_request_timeout = common dso_local global i32 0, align 4
@sysctl_rose_clear_request_timeout = common dso_local global i32 0, align 4
@sysctl_rose_ack_hold_back_timeout = common dso_local global i32 0, align 4
@sysctl_rose_no_activity_timeout = common dso_local global i32 0, align 4
@ROSE_STATE_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @rose_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.rose_sock*, align 8
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
  br label %84

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
  br label %84

30:                                               ; preds = %24
  %31 = load %struct.net*, %struct.net** %6, align 8
  %32 = load i32, i32* @PF_ROSE, align 4
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.sock* @sk_alloc(%struct.net* %31, i32 %32, i32 %33, i32* @rose_proto, i32 %34)
  store %struct.sock* %35, %struct.sock** %10, align 8
  %36 = load %struct.sock*, %struct.sock** %10, align 8
  %37 = icmp eq %struct.sock* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %84

41:                                               ; preds = %30
  %42 = load %struct.sock*, %struct.sock** %10, align 8
  %43 = call %struct.rose_sock* @rose_sk(%struct.sock* %42)
  store %struct.rose_sock* %43, %struct.rose_sock** %11, align 8
  %44 = load %struct.socket*, %struct.socket** %7, align 8
  %45 = load %struct.sock*, %struct.sock** %10, align 8
  %46 = call i32 @sock_init_data(%struct.socket* %44, %struct.sock* %45)
  %47 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %48 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %47, i32 0, i32 10
  %49 = call i32 @skb_queue_head_init(i32* %48)
  %50 = load %struct.socket*, %struct.socket** %7, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 1
  store i32* @rose_proto_ops, i32** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.sock*, %struct.sock** %10, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %56 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %55, i32 0, i32 7
  %57 = call i32 @timer_setup(i32* %56, i32* null, i32 0)
  %58 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %59 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %58, i32 0, i32 6
  %60 = call i32 @timer_setup(i32* %59, i32* null, i32 0)
  %61 = load i32, i32* @sysctl_rose_call_request_timeout, align 4
  %62 = call i8* @msecs_to_jiffies(i32 %61)
  %63 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %64 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @sysctl_rose_reset_request_timeout, align 4
  %66 = call i8* @msecs_to_jiffies(i32 %65)
  %67 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %68 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @sysctl_rose_clear_request_timeout, align 4
  %70 = call i8* @msecs_to_jiffies(i32 %69)
  %71 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %72 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @sysctl_rose_ack_hold_back_timeout, align 4
  %74 = call i8* @msecs_to_jiffies(i32 %73)
  %75 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %76 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @sysctl_rose_no_activity_timeout, align 4
  %78 = call i8* @msecs_to_jiffies(i32 %77)
  %79 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %80 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @ROSE_STATE_0, align 4
  %82 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %83 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %41, %38, %27, %15
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @net_eq(%struct.net*, i32*) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32*, i32) #1

declare dso_local i8* @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
