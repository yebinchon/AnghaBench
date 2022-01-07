; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.qrtr_sock = type { %struct.sockaddr_qrtr, %struct.sockaddr_qrtr }
%struct.sockaddr_qrtr = type { i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@AF_QIPCRTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @qrtr_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qrtr_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qrtr_sock*, align 8
  %9 = alloca %struct.sockaddr_qrtr, align 4
  %10 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  %14 = call %struct.qrtr_sock* @qrtr_sk(%struct.sock* %13)
  store %struct.qrtr_sock* %14, %struct.qrtr_sock** %8, align 8
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %10, align 8
  %18 = load %struct.sock*, %struct.sock** %10, align 8
  %19 = call i32 @lock_sock(%struct.sock* %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %3
  %23 = load %struct.sock*, %struct.sock** %10, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TCP_ESTABLISHED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.sock*, %struct.sock** %10, align 8
  %30 = call i32 @release_sock(%struct.sock* %29)
  %31 = load i32, i32* @ENOTCONN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %22
  %34 = load %struct.qrtr_sock*, %struct.qrtr_sock** %8, align 8
  %35 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %34, i32 0, i32 1
  %36 = bitcast %struct.sockaddr_qrtr* %9 to i8*
  %37 = bitcast %struct.sockaddr_qrtr* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  br label %43

38:                                               ; preds = %3
  %39 = load %struct.qrtr_sock*, %struct.qrtr_sock** %8, align 8
  %40 = getelementptr inbounds %struct.qrtr_sock, %struct.qrtr_sock* %39, i32 0, i32 0
  %41 = bitcast %struct.sockaddr_qrtr* %9 to i8*
  %42 = bitcast %struct.sockaddr_qrtr* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.sock*, %struct.sock** %10, align 8
  %45 = call i32 @release_sock(%struct.sock* %44)
  %46 = load i32, i32* @AF_QIPCRTR, align 4
  %47 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %49 = call i32 @memcpy(%struct.sockaddr* %48, %struct.sockaddr_qrtr* %9, i32 4)
  store i32 4, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %28
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.qrtr_sock* @qrtr_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr_qrtr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
