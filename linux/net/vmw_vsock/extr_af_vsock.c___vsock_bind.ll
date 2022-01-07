; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c___vsock_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c___vsock_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (...)* }
%struct.sock = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_vm = type { i64 }
%struct.vsock_sock = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@transport = common dso_local global %struct.TYPE_4__* null, align 8
@VMADDR_CID_ANY = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@vsock_table_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr_vm*)* @__vsock_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vsock_bind(%struct.sock* %0, %struct.sockaddr_vm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sockaddr_vm*, align 8
  %6 = alloca %struct.vsock_sock*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sockaddr_vm* %1, %struct.sockaddr_vm** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %9)
  store %struct.vsock_sock* %10, %struct.vsock_sock** %6, align 8
  %11 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %12 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %11, i32 0, i32 0
  %13 = call i64 @vsock_addr_bound(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %58

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @transport, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64 (...)*, i64 (...)** %20, align 8
  %22 = call i64 (...) %21()
  store i64 %22, i64* %7, align 8
  %23 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %5, align 8
  %24 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %5, align 8
  %30 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VMADDR_CID_ANY, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EADDRNOTAVAIL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %58

37:                                               ; preds = %28, %18
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %53 [
    i32 128, label %43
    i32 129, label %49
  ]

43:                                               ; preds = %37
  %44 = call i32 @spin_lock_bh(i32* @vsock_table_lock)
  %45 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %46 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %5, align 8
  %47 = call i32 @__vsock_bind_stream(%struct.vsock_sock* %45, %struct.sockaddr_vm* %46)
  store i32 %47, i32* %8, align 4
  %48 = call i32 @spin_unlock_bh(i32* @vsock_table_lock)
  br label %56

49:                                               ; preds = %37
  %50 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %51 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %5, align 8
  %52 = call i32 @__vsock_bind_dgram(%struct.vsock_sock* %50, %struct.sockaddr_vm* %51)
  store i32 %52, i32* %8, align 4
  br label %56

53:                                               ; preds = %37
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %49, %43
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %34, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i64 @vsock_addr_bound(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__vsock_bind_stream(%struct.vsock_sock*, %struct.sockaddr_vm*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__vsock_bind_dgram(%struct.vsock_sock*, %struct.sockaddr_vm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
