; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vsock_addr.c_vsock_addr_bound.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vsock_addr.c_vsock_addr_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_vm = type { i64 }

@VMADDR_PORT_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsock_addr_bound(%struct.sockaddr_vm* %0) #0 {
  %2 = alloca %struct.sockaddr_vm*, align 8
  store %struct.sockaddr_vm* %0, %struct.sockaddr_vm** %2, align 8
  %3 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %2, align 8
  %4 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @VMADDR_PORT_ANY, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
