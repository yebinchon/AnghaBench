; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_get_authops.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_get_authops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_authops = type { i32 }

@RPC_AUTH_MAXFLAVOR = common dso_local global i64 0, align 8
@auth_flavors = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"rpc-auth-%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_authops* (i64)* @rpcauth_get_authops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_authops* @rpcauth_get_authops(i64 %0) #0 {
  %2 = alloca %struct.rpc_authops*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.rpc_authops*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @RPC_AUTH_MAXFLAVOR, align 8
  %7 = icmp uge i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.rpc_authops* null, %struct.rpc_authops** %2, align 8
  br label %43

9:                                                ; preds = %1
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load i32*, i32** @auth_flavors, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.rpc_authops* @rcu_dereference(i32 %14)
  store %struct.rpc_authops* %15, %struct.rpc_authops** %4, align 8
  %16 = load %struct.rpc_authops*, %struct.rpc_authops** %4, align 8
  %17 = icmp eq %struct.rpc_authops* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %9
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @request_module(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load i32*, i32** @auth_flavors, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.rpc_authops* @rcu_dereference(i32 %26)
  store %struct.rpc_authops* %27, %struct.rpc_authops** %4, align 8
  %28 = load %struct.rpc_authops*, %struct.rpc_authops** %4, align 8
  %29 = icmp eq %struct.rpc_authops* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %40

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %9
  %33 = load %struct.rpc_authops*, %struct.rpc_authops** %4, align 8
  %34 = getelementptr inbounds %struct.rpc_authops, %struct.rpc_authops* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @try_module_get(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store %struct.rpc_authops* null, %struct.rpc_authops** %4, align 8
  br label %39

39:                                               ; preds = %38, %32
  br label %40

40:                                               ; preds = %39, %30
  %41 = call i32 (...) @rcu_read_unlock()
  %42 = load %struct.rpc_authops*, %struct.rpc_authops** %4, align 8
  store %struct.rpc_authops* %42, %struct.rpc_authops** %2, align 8
  br label %43

43:                                               ; preds = %40, %8
  %44 = load %struct.rpc_authops*, %struct.rpc_authops** %2, align 8
  ret %struct.rpc_authops* %44
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rpc_authops* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @request_module(i8*, i64) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
