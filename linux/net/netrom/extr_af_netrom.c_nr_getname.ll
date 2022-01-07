; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.full_sockaddr_ax25 = type { %struct.TYPE_2__, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i8* }
%struct.nr_sock = type { i32, %struct.TYPE_2__, i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@AF_NETROM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @nr_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nr_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.full_sockaddr_ax25*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.nr_sock*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.full_sockaddr_ax25*
  store %struct.full_sockaddr_ax25* %13, %struct.full_sockaddr_ax25** %8, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %9, align 8
  %17 = load %struct.sock*, %struct.sock** %9, align 8
  %18 = call %struct.nr_sock* @nr_sk(%struct.sock* %17)
  store %struct.nr_sock* %18, %struct.nr_sock** %10, align 8
  %19 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %8, align 8
  %20 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %19, i32 0, i32 0
  %21 = call i32 @memset(%struct.TYPE_2__* %20, i32 0, i32 4)
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = call i32 @lock_sock(%struct.sock* %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %3
  %27 = load %struct.sock*, %struct.sock** %9, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TCP_ESTABLISHED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.sock*, %struct.sock** %9, align 8
  %34 = call i32 @release_sock(%struct.sock* %33)
  %35 = load i32, i32* @ENOTCONN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %81

37:                                               ; preds = %26
  %38 = load i8*, i8** @AF_NETROM, align 8
  %39 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %8, align 8
  %40 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i8* %38, i8** %41, align 8
  %42 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %8, align 8
  %43 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %46 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %8, align 8
  %49 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %8, align 8
  %52 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = call i32 @memset(%struct.TYPE_2__* %53, i32 0, i32 8)
  %55 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %8, align 8
  %56 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 0
  %59 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %60 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %59, i32 0, i32 1
  %61 = bitcast %struct.TYPE_2__* %58 to i8*
  %62 = bitcast %struct.TYPE_2__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  store i32 24, i32* %11, align 4
  br label %77

63:                                               ; preds = %3
  %64 = load i8*, i8** @AF_NETROM, align 8
  %65 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %8, align 8
  %66 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i8* %64, i8** %67, align 8
  %68 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %8, align 8
  %69 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %72 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %8, align 8
  %75 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  store i32 4, i32* %11, align 4
  br label %77

77:                                               ; preds = %63, %37
  %78 = load %struct.sock*, %struct.sock** %9, align 8
  %79 = call i32 @release_sock(%struct.sock* %78)
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %77, %32
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
