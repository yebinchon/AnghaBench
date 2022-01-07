; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32* }
%struct.qrtr_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.sock = type { i32 }

@SOCK_DGRAM = common dso_local global i64 0, align 8
@EPROTOTYPE = common dso_local global i32 0, align 4
@AF_QIPCRTR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@qrtr_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@qrtr_proto_ops = common dso_local global i32 0, align 4
@qrtr_local_nid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @qrtr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qrtr_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qrtr_sock*, align 8
  %11 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.socket*, %struct.socket** %7, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SOCK_DGRAM, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EPROTOTYPE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %53

20:                                               ; preds = %4
  %21 = load %struct.net*, %struct.net** %6, align 8
  %22 = load i32, i32* @AF_QIPCRTR, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.sock* @sk_alloc(%struct.net* %21, i32 %22, i32 %23, i32* @qrtr_proto, i32 %24)
  store %struct.sock* %25, %struct.sock** %11, align 8
  %26 = load %struct.sock*, %struct.sock** %11, align 8
  %27 = icmp ne %struct.sock* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %53

31:                                               ; preds = %20
  %32 = load %struct.sock*, %struct.sock** %11, align 8
  %33 = load i32, i32* @SOCK_ZAPPED, align 4
  %34 = call i32 @sock_set_flag(%struct.sock* %32, i32 %33)
  %35 = load %struct.socket*, %struct.socket** %7, align 8
  %36 = load %struct.sock*, %struct.sock** %11, align 8
  %37 = call i32 @sock_init_data(%struct.socket* %35, %struct.sock* %36)
  %38 = load %struct.socket*, %struct.socket** %7, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 1
  store i32* @qrtr_proto_ops, i32** %39, align 8
  %40 = load %struct.sock*, %struct.sock** %11, align 8
  %41 = call %struct.qrtr_sock* @qrtr_sk(%struct.sock* %40)
  store %struct.qrtr_sock* %41, %struct.qrtr_sock** %10, align 8
  %42 = load i32, i32* @AF_QIPCRTR, align 4
  %43 = load %struct.qrtr_sock*, %struct.qrtr_sock** %10, align 8
  %44 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @qrtr_local_nid, align 4
  %47 = load %struct.qrtr_sock*, %struct.qrtr_sock** %10, align 8
  %48 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  %50 = load %struct.qrtr_sock*, %struct.qrtr_sock** %10, align 8
  %51 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %31, %28, %17
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.qrtr_sock* @qrtr_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
