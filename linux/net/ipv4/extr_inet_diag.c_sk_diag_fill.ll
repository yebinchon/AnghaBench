; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_sk_diag_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_sk_diag_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.inet_diag_req_v2 = type { i32 }
%struct.user_namespace = type { i32 }
%struct.nlmsghdr = type { i32 }

@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@TCP_NEW_SYN_RECV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.inet_diag_req_v2*, %struct.user_namespace*, i32, i32, i32, %struct.nlmsghdr*, i32)* @sk_diag_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sk_diag_fill(%struct.sock* %0, %struct.sk_buff* %1, %struct.inet_diag_req_v2* %2, %struct.user_namespace* %3, i32 %4, i32 %5, i32 %6, %struct.nlmsghdr* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.inet_diag_req_v2*, align 8
  %14 = alloca %struct.user_namespace*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nlmsghdr*, align 8
  %19 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %11, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %12, align 8
  store %struct.inet_diag_req_v2* %2, %struct.inet_diag_req_v2** %13, align 8
  store %struct.user_namespace* %3, %struct.user_namespace** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.nlmsghdr* %7, %struct.nlmsghdr** %18, align 8
  store i32 %8, i32* %19, align 4
  %20 = load %struct.sock*, %struct.sock** %11, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TCP_TIME_WAIT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %9
  %26 = load %struct.sock*, %struct.sock** %11, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %17, align 4
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %32 = call i32 @inet_twsk_diag_fill(%struct.sock* %26, %struct.sk_buff* %27, i32 %28, i32 %29, i32 %30, %struct.nlmsghdr* %31)
  store i32 %32, i32* %10, align 4
  br label %59

33:                                               ; preds = %9
  %34 = load %struct.sock*, %struct.sock** %11, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TCP_NEW_SYN_RECV, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.sock*, %struct.sock** %11, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %46 = load i32, i32* %19, align 4
  %47 = call i32 @inet_req_diag_fill(%struct.sock* %40, %struct.sk_buff* %41, i32 %42, i32 %43, i32 %44, %struct.nlmsghdr* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  br label %59

48:                                               ; preds = %33
  %49 = load %struct.sock*, %struct.sock** %11, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %51 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %13, align 8
  %52 = load %struct.user_namespace*, %struct.user_namespace** %14, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %57 = load i32, i32* %19, align 4
  %58 = call i32 @inet_csk_diag_fill(%struct.sock* %49, %struct.sk_buff* %50, %struct.inet_diag_req_v2* %51, %struct.user_namespace* %52, i32 %53, i32 %54, i32 %55, %struct.nlmsghdr* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %48, %39, %25
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local i32 @inet_twsk_diag_fill(%struct.sock*, %struct.sk_buff*, i32, i32, i32, %struct.nlmsghdr*) #1

declare dso_local i32 @inet_req_diag_fill(%struct.sock*, %struct.sk_buff*, i32, i32, i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @inet_csk_diag_fill(%struct.sock*, %struct.sk_buff*, %struct.inet_diag_req_v2*, %struct.user_namespace*, i32, i32, i32, %struct.nlmsghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
