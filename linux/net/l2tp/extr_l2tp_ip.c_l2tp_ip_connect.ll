; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip.c_l2tp_ip_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip.c_l2tp_ip_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_l2tpip = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@l2tp_ip_lock = common dso_local global i32 0, align 4
@l2tp_ip_bind_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @l2tp_ip_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_ip_connect(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_l2tpip*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %11 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_l2tpip*
  store %struct.sockaddr_l2tpip* %11, %struct.sockaddr_l2tpip** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %8, align 8
  %20 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ipv4_is_multicast(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %64

28:                                               ; preds = %18
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = call i32 @lock_sock(%struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = load i32, i32* @SOCK_ZAPPED, align 4
  %33 = call i64 @sock_flag(%struct.sock* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %60

38:                                               ; preds = %28
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @__ip4_datagram_connect(%struct.sock* %39, %struct.sockaddr* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %60

46:                                               ; preds = %38
  %47 = load %struct.sockaddr_l2tpip*, %struct.sockaddr_l2tpip** %8, align 8
  %48 = getelementptr inbounds %struct.sockaddr_l2tpip, %struct.sockaddr_l2tpip* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sock*, %struct.sock** %5, align 8
  %51 = call %struct.TYPE_4__* @l2tp_ip_sk(%struct.sock* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = call i32 @write_lock_bh(i32* @l2tp_ip_lock)
  %54 = load %struct.sock*, %struct.sock** %5, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = call i32 @hlist_del_init(i32* %55)
  %57 = load %struct.sock*, %struct.sock** %5, align 8
  %58 = call i32 @sk_add_bind_node(%struct.sock* %57, i32* @l2tp_ip_bind_table)
  %59 = call i32 @write_unlock_bh(i32* @l2tp_ip_lock)
  br label %60

60:                                               ; preds = %46, %45, %35
  %61 = load %struct.sock*, %struct.sock** %5, align 8
  %62 = call i32 @release_sock(%struct.sock* %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %25, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @__ip4_datagram_connect(%struct.sock*, %struct.sockaddr*, i32) #1

declare dso_local %struct.TYPE_4__* @l2tp_ip_sk(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @sk_add_bind_node(%struct.sock*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
