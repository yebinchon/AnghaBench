; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_sk_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_sk_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.vsock_sock*)* }
%struct.vsock_sock = type { i32, i32, i32 }
%struct.sock = type { i32 }

@transport = common dso_local global %struct.TYPE_2__* null, align 8
@VMADDR_CID_ANY = common dso_local global i32 0, align 4
@VMADDR_PORT_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @vsock_sk_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsock_sk_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.vsock_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %4)
  store %struct.vsock_sock* %5, %struct.vsock_sock** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.vsock_sock*)*, i32 (%struct.vsock_sock*)** %7, align 8
  %9 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %10 = call i32 %8(%struct.vsock_sock* %9)
  %11 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %12 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %11, i32 0, i32 2
  %13 = load i32, i32* @VMADDR_CID_ANY, align 4
  %14 = load i32, i32* @VMADDR_PORT_ANY, align 4
  %15 = call i32 @vsock_addr_init(i32* %12, i32 %13, i32 %14)
  %16 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %17 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %16, i32 0, i32 1
  %18 = load i32, i32* @VMADDR_CID_ANY, align 4
  %19 = load i32, i32* @VMADDR_PORT_ANY, align 4
  %20 = call i32 @vsock_addr_init(i32* %17, i32 %18, i32 %19)
  %21 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %22 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @put_cred(i32 %23)
  ret void
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @vsock_addr_init(i32*, i32, i32) #1

declare dso_local i32 @put_cred(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
