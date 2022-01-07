; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_find_bound_socket.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_find_bound_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sockaddr_vm = type { i32 }

@vsock_table_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @vsock_find_bound_socket(%struct.sockaddr_vm* %0) #0 {
  %2 = alloca %struct.sockaddr_vm*, align 8
  %3 = alloca %struct.sock*, align 8
  store %struct.sockaddr_vm* %0, %struct.sockaddr_vm** %2, align 8
  %4 = call i32 @spin_lock_bh(i32* @vsock_table_lock)
  %5 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %2, align 8
  %6 = call %struct.sock* @__vsock_find_bound_socket(%struct.sockaddr_vm* %5)
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = icmp ne %struct.sock* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call i32 @sock_hold(%struct.sock* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = call i32 @spin_unlock_bh(i32* @vsock_table_lock)
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  ret %struct.sock* %14
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sock* @__vsock_find_bound_socket(%struct.sockaddr_vm*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
