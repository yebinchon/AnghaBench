; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vsock_addr.c_vsock_addr_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vsock_addr.c_vsock_addr_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_vm = type { i64, i64* }

@EFAULT = common dso_local global i32 0, align 4
@AF_VSOCK = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsock_addr_validate(%struct.sockaddr_vm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_vm*, align 8
  store %struct.sockaddr_vm* %0, %struct.sockaddr_vm** %3, align 8
  %4 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %3, align 8
  %5 = icmp ne %struct.sockaddr_vm* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EFAULT, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %3, align 8
  %11 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_VSOCK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @EAFNOSUPPORT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %9
  %19 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %3, align 8
  %20 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25, %15, %6
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
