; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inet_conn_request.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inet_conn_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)* @selinux_inet_conn_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_inet_conn_request(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca %struct.sk_security_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.request_sock* %2, %struct.request_sock** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load %struct.sk_security_struct*, %struct.sk_security_struct** %14, align 8
  store %struct.sk_security_struct* %15, %struct.sk_security_struct** %8, align 8
  %16 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %17 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @selinux_skb_peerlbl_sid(%struct.sk_buff* %21, i32 %22, i8** %12)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %48

28:                                               ; preds = %3
  %29 = load %struct.sk_security_struct*, %struct.sk_security_struct** %8, align 8
  %30 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @selinux_conn_sid(i32 %31, i8* %32, i8** %11)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %28
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %41 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %44 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @selinux_netlbl_inet_conn_request(%struct.request_sock* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %38, %36, %26
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @selinux_skb_peerlbl_sid(%struct.sk_buff*, i32, i8**) #1

declare dso_local i32 @selinux_conn_sid(i32, i8*, i8**) #1

declare dso_local i32 @selinux_netlbl_inet_conn_request(%struct.request_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
