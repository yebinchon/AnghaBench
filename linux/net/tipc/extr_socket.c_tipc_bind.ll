; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_tipc = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.tipc_sock = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@AF_TIPC = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@TIPC_ADDR_NAME = common dso_local global i64 0, align 8
@TIPC_ADDR_NAMESEQ = common dso_local global i64 0, align 8
@TIPC_RESERVED_TYPES = common dso_local global i64 0, align 8
@TIPC_TOP_SRV = common dso_local global i64 0, align 8
@TIPC_CFG_SRV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @tipc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sockaddr_tipc*, align 8
  %9 = alloca %struct.tipc_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %7, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_tipc*
  store %struct.sockaddr_tipc* %15, %struct.sockaddr_tipc** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %16)
  store %struct.tipc_sock* %17, %struct.tipc_sock** %9, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = call i32 @lock_sock(%struct.sock* %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.tipc_sock*, %struct.tipc_sock** %9, align 8
  %30 = call i32 @tipc_sk_withdraw(%struct.tipc_sock* %29, i32 0, %struct.TYPE_5__* null)
  store i32 %30, i32* %10, align 4
  br label %134

31:                                               ; preds = %3
  %32 = load %struct.tipc_sock*, %struct.tipc_sock** %9, align 8
  %33 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EACCES, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %134

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 40
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %134

46:                                               ; preds = %39
  %47 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %48 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AF_TIPC, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EAFNOSUPPORT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %134

55:                                               ; preds = %46
  %56 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %57 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TIPC_ADDR_NAME, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %63 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %68 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i32 %66, i32* %70, align 4
  br label %81

71:                                               ; preds = %55
  %72 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %73 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TIPC_ADDR_NAMESEQ, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @EAFNOSUPPORT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  br label %134

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %83 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TIPC_RESERVED_TYPES, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %81
  %90 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %91 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TIPC_TOP_SRV, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %89
  %98 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %99 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TIPC_CFG_SRV, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @EACCES, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %10, align 4
  br label %134

108:                                              ; preds = %97, %89, %81
  %109 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %110 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load %struct.tipc_sock*, %struct.tipc_sock** %9, align 8
  %115 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %116 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %119 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = call i32 @tipc_sk_publish(%struct.tipc_sock* %114, i32 %117, %struct.TYPE_5__* %120)
  br label %132

122:                                              ; preds = %108
  %123 = load %struct.tipc_sock*, %struct.tipc_sock** %9, align 8
  %124 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %125 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 0, %126
  %128 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %129 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = call i32 @tipc_sk_withdraw(%struct.tipc_sock* %123, i32 %127, %struct.TYPE_5__* %130)
  br label %132

132:                                              ; preds = %122, %113
  %133 = phi i32 [ %121, %113 ], [ %131, %122 ]
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %132, %105, %77, %52, %43, %36, %28
  %135 = load %struct.sock*, %struct.sock** %7, align 8
  %136 = call i32 @release_sock(%struct.sock* %135)
  %137 = load i32, i32* %10, align 4
  ret i32 %137
}

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tipc_sk_withdraw(%struct.tipc_sock*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @tipc_sk_publish(%struct.tipc_sock*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
