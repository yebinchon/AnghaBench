; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_add_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_add_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_upcall_msg = type { i32, i32, i32, i32, %struct.rpc_pipe* }
%struct.rpc_pipe = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gss_upcall_msg* (%struct.gss_upcall_msg*)* @gss_add_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gss_upcall_msg* @gss_add_msg(%struct.gss_upcall_msg* %0) #0 {
  %2 = alloca %struct.gss_upcall_msg*, align 8
  %3 = alloca %struct.rpc_pipe*, align 8
  %4 = alloca %struct.gss_upcall_msg*, align 8
  store %struct.gss_upcall_msg* %0, %struct.gss_upcall_msg** %2, align 8
  %5 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %6 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %5, i32 0, i32 4
  %7 = load %struct.rpc_pipe*, %struct.rpc_pipe** %6, align 8
  store %struct.rpc_pipe* %7, %struct.rpc_pipe** %3, align 8
  %8 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %12 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %13 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %16 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.gss_upcall_msg* @__gss_find_upcall(%struct.rpc_pipe* %11, i32 %14, i32 %17)
  store %struct.gss_upcall_msg* %18, %struct.gss_upcall_msg** %4, align 8
  %19 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  %20 = icmp eq %struct.gss_upcall_msg* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %23 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %22, i32 0, i32 1
  %24 = call i32 @refcount_inc(i32* %23)
  %25 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %26 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %25, i32 0, i32 0
  %27 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %28 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %27, i32 0, i32 1
  %29 = call i32 @list_add(i32* %26, i32* %28)
  br label %32

30:                                               ; preds = %1
  %31 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  store %struct.gss_upcall_msg* %31, %struct.gss_upcall_msg** %2, align 8
  br label %32

32:                                               ; preds = %30, %21
  %33 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %34 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  ret %struct.gss_upcall_msg* %36
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.gss_upcall_msg* @__gss_find_upcall(%struct.rpc_pipe*, i32, i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
