; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_diag.c_sk_diag_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_diag.c_sk_diag_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.vsock_sock = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vsock_diag_msg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@SOCK_DIAG_BY_FAMILY = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_VSOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32, i32, i32)* @sk_diag_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sk_diag_fill(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vsock_sock*, align 8
  %13 = alloca %struct.vsock_diag_msg*, align 8
  %14 = alloca %struct.nlmsghdr*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %15)
  store %struct.vsock_sock* %16, %struct.vsock_sock** %12, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @SOCK_DIAG_BY_FAMILY, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %17, i32 %18, i32 %19, i32 %20, i32 40, i32 %21)
  store %struct.nlmsghdr* %22, %struct.nlmsghdr** %14, align 8
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %24 = icmp ne %struct.nlmsghdr* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @EMSGSIZE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %82

28:                                               ; preds = %5
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %30 = call %struct.vsock_diag_msg* @nlmsg_data(%struct.nlmsghdr* %29)
  store %struct.vsock_diag_msg* %30, %struct.vsock_diag_msg** %13, align 8
  %31 = load i32, i32* @AF_VSOCK, align 4
  %32 = load %struct.vsock_diag_msg*, %struct.vsock_diag_msg** %13, align 8
  %33 = getelementptr inbounds %struct.vsock_diag_msg, %struct.vsock_diag_msg* %32, i32 0, i32 9
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sock*, %struct.sock** %7, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vsock_diag_msg*, %struct.vsock_diag_msg** %13, align 8
  %38 = getelementptr inbounds %struct.vsock_diag_msg, %struct.vsock_diag_msg* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sock*, %struct.sock** %7, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vsock_diag_msg*, %struct.vsock_diag_msg** %13, align 8
  %43 = getelementptr inbounds %struct.vsock_diag_msg, %struct.vsock_diag_msg* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 4
  %44 = load %struct.sock*, %struct.sock** %7, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vsock_diag_msg*, %struct.vsock_diag_msg** %13, align 8
  %48 = getelementptr inbounds %struct.vsock_diag_msg, %struct.vsock_diag_msg* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load %struct.vsock_sock*, %struct.vsock_sock** %12, align 8
  %50 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vsock_diag_msg*, %struct.vsock_diag_msg** %13, align 8
  %54 = getelementptr inbounds %struct.vsock_diag_msg, %struct.vsock_diag_msg* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.vsock_sock*, %struct.vsock_sock** %12, align 8
  %56 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vsock_diag_msg*, %struct.vsock_diag_msg** %13, align 8
  %60 = getelementptr inbounds %struct.vsock_diag_msg, %struct.vsock_diag_msg* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.vsock_sock*, %struct.vsock_sock** %12, align 8
  %62 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vsock_diag_msg*, %struct.vsock_diag_msg** %13, align 8
  %66 = getelementptr inbounds %struct.vsock_diag_msg, %struct.vsock_diag_msg* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.vsock_sock*, %struct.vsock_sock** %12, align 8
  %68 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vsock_diag_msg*, %struct.vsock_diag_msg** %13, align 8
  %72 = getelementptr inbounds %struct.vsock_diag_msg, %struct.vsock_diag_msg* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sock*, %struct.sock** %7, align 8
  %74 = call i32 @sock_i_ino(%struct.sock* %73)
  %75 = load %struct.vsock_diag_msg*, %struct.vsock_diag_msg** %13, align 8
  %76 = getelementptr inbounds %struct.vsock_diag_msg, %struct.vsock_diag_msg* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.sock*, %struct.sock** %7, align 8
  %78 = load %struct.vsock_diag_msg*, %struct.vsock_diag_msg** %13, align 8
  %79 = getelementptr inbounds %struct.vsock_diag_msg, %struct.vsock_diag_msg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @sock_diag_save_cookie(%struct.sock* %77, i32 %80)
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %28, %25
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.vsock_diag_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @sock_i_ino(%struct.sock*) #1

declare dso_local i32 @sock_diag_save_cookie(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
