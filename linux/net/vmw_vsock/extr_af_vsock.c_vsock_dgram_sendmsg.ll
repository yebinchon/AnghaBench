; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_dgram_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_dgram_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)*, i32 (%struct.vsock_sock*, %struct.sockaddr_vm*, %struct.msghdr*, i64)*, i32 (i64, i32)* }
%struct.vsock_sock = type { %struct.sockaddr_vm }
%struct.sockaddr_vm = type { i64, i32 }
%struct.msghdr = type { i32, i32, i64 }
%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32 }

@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VMADDR_CID_ANY = common dso_local global i64 0, align 8
@transport = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64)* @vsock_dgram_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsock_dgram_sendmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.vsock_sock*, align 8
  %11 = alloca %struct.sockaddr_vm*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %13 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MSG_OOB, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %131

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 1
  %24 = load %struct.sock*, %struct.sock** %23, align 8
  store %struct.sock* %24, %struct.sock** %9, align 8
  %25 = load %struct.sock*, %struct.sock** %9, align 8
  %26 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %25)
  store %struct.vsock_sock* %26, %struct.vsock_sock** %10, align 8
  %27 = load %struct.sock*, %struct.sock** %9, align 8
  %28 = call i32 @lock_sock(%struct.sock* %27)
  %29 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %30 = call i32 @vsock_auto_bind(%struct.vsock_sock* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %127

34:                                               ; preds = %21
  %35 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %34
  %40 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %41 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %44 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @vsock_addr_cast(i64 %42, i32 %45, %struct.sockaddr_vm** %11)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %39
  %49 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %11, align 8
  %50 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VMADDR_CID_ANY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64 (...)*, i64 (...)** %56, align 8
  %58 = call i64 (...) %57()
  %59 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %11, align 8
  %60 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %11, align 8
  %63 = call i32 @vsock_addr_bound(%struct.sockaddr_vm* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %127

68:                                               ; preds = %61
  br label %103

69:                                               ; preds = %39, %34
  %70 = load %struct.socket*, %struct.socket** %5, align 8
  %71 = getelementptr inbounds %struct.socket, %struct.socket* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SS_CONNECTED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %69
  %76 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %77 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %76, i32 0, i32 0
  store %struct.sockaddr_vm* %77, %struct.sockaddr_vm** %11, align 8
  %78 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %11, align 8
  %79 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @VMADDR_CID_ANY, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64 (...)*, i64 (...)** %85, align 8
  %87 = call i64 (...) %86()
  %88 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %11, align 8
  %89 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %75
  %91 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %92 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %91, i32 0, i32 0
  %93 = call i32 @vsock_addr_bound(%struct.sockaddr_vm* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %8, align 4
  br label %127

98:                                               ; preds = %90
  br label %102

99:                                               ; preds = %69
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %8, align 4
  br label %127

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %68
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32 (i64, i32)*, i32 (i64, i32)** %105, align 8
  %107 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %11, align 8
  %108 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %11, align 8
  %111 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 %106(i64 %109, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %103
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %127

118:                                              ; preds = %103
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32 (%struct.vsock_sock*, %struct.sockaddr_vm*, %struct.msghdr*, i64)*, i32 (%struct.vsock_sock*, %struct.sockaddr_vm*, %struct.msghdr*, i64)** %120, align 8
  %122 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %123 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %11, align 8
  %124 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i32 %121(%struct.vsock_sock* %122, %struct.sockaddr_vm* %123, %struct.msghdr* %124, i64 %125)
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %118, %115, %99, %95, %65, %33
  %128 = load %struct.sock*, %struct.sock** %9, align 8
  %129 = call i32 @release_sock(%struct.sock* %128)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %127, %18
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @vsock_auto_bind(%struct.vsock_sock*) #1

declare dso_local i64 @vsock_addr_cast(i64, i32, %struct.sockaddr_vm**) #1

declare dso_local i32 @vsock_addr_bound(%struct.sockaddr_vm*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
