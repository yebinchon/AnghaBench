; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_auto_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_auto_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { i32 }
%struct.sock = type { i32 }
%struct.sockaddr_vm = type { i32 }

@VMADDR_CID_ANY = common dso_local global i32 0, align 4
@VMADDR_PORT_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*)* @vsock_auto_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsock_auto_bind(%struct.vsock_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsock_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sockaddr_vm, align 4
  store %struct.vsock_sock* %0, %struct.vsock_sock** %3, align 8
  %6 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %7 = call %struct.sock* @sk_vsock(%struct.vsock_sock* %6)
  store %struct.sock* %7, %struct.sock** %4, align 8
  %8 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %9 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %8, i32 0, i32 0
  %10 = call i64 @vsock_addr_bound(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @VMADDR_CID_ANY, align 4
  %15 = load i32, i32* @VMADDR_PORT_ANY, align 4
  %16 = call i32 @vsock_addr_init(%struct.sockaddr_vm* %5, i32 %14, i32 %15)
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @__vsock_bind(%struct.sock* %17, %struct.sockaddr_vm* %5)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %13, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.sock* @sk_vsock(%struct.vsock_sock*) #1

declare dso_local i64 @vsock_addr_bound(i32*) #1

declare dso_local i32 @vsock_addr_init(%struct.sockaddr_vm*, i32, i32) #1

declare dso_local i32 @__vsock_bind(%struct.sock*, %struct.sockaddr_vm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
