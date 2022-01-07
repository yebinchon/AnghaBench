; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vsock_addr.c_vsock_addr_cast.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vsock_addr.c_vsock_addr_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_vm = type { i32 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsock_addr_cast(%struct.sockaddr* %0, i64 %1, %struct.sockaddr_vm** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_vm**, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sockaddr_vm** %2, %struct.sockaddr_vm*** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ult i64 %8, 4
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @EFAULT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %20

13:                                               ; preds = %3
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_vm*
  %16 = load %struct.sockaddr_vm**, %struct.sockaddr_vm*** %7, align 8
  store %struct.sockaddr_vm* %15, %struct.sockaddr_vm** %16, align 8
  %17 = load %struct.sockaddr_vm**, %struct.sockaddr_vm*** %7, align 8
  %18 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %17, align 8
  %19 = call i32 @vsock_addr_validate(%struct.sockaddr_vm* %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %13, %10
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @vsock_addr_validate(%struct.sockaddr_vm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
