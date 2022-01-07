; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_create_hashed.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_create_hashed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_auth = type { i32 }
%struct.rpc_auth_create_args = type { i32 }
%struct.rpc_clnt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gss_auth* (%struct.rpc_auth_create_args*, %struct.rpc_clnt*)* @gss_create_hashed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gss_auth* @gss_create_hashed(%struct.rpc_auth_create_args* %0, %struct.rpc_clnt* %1) #0 {
  %3 = alloca %struct.gss_auth*, align 8
  %4 = alloca %struct.rpc_auth_create_args*, align 8
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.gss_auth*, align 8
  %7 = alloca %struct.gss_auth*, align 8
  store %struct.rpc_auth_create_args* %0, %struct.rpc_auth_create_args** %4, align 8
  store %struct.rpc_clnt* %1, %struct.rpc_clnt** %5, align 8
  %8 = load %struct.rpc_auth_create_args*, %struct.rpc_auth_create_args** %4, align 8
  %9 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %10 = call %struct.gss_auth* @gss_auth_find_or_add_hashed(%struct.rpc_auth_create_args* %8, %struct.rpc_clnt* %9, %struct.gss_auth* null)
  store %struct.gss_auth* %10, %struct.gss_auth** %6, align 8
  %11 = load %struct.gss_auth*, %struct.gss_auth** %6, align 8
  %12 = icmp ne %struct.gss_auth* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.rpc_auth_create_args*, %struct.rpc_auth_create_args** %4, align 8
  %16 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %17 = call %struct.gss_auth* @gss_create_new(%struct.rpc_auth_create_args* %15, %struct.rpc_clnt* %16)
  store %struct.gss_auth* %17, %struct.gss_auth** %7, align 8
  %18 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %19 = call i64 @IS_ERR(%struct.gss_auth* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  store %struct.gss_auth* %22, %struct.gss_auth** %3, align 8
  br label %38

23:                                               ; preds = %14
  %24 = load %struct.rpc_auth_create_args*, %struct.rpc_auth_create_args** %4, align 8
  %25 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %26 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %27 = call %struct.gss_auth* @gss_auth_find_or_add_hashed(%struct.rpc_auth_create_args* %24, %struct.rpc_clnt* %25, %struct.gss_auth* %26)
  store %struct.gss_auth* %27, %struct.gss_auth** %6, align 8
  %28 = load %struct.gss_auth*, %struct.gss_auth** %6, align 8
  %29 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %30 = icmp ne %struct.gss_auth* %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.gss_auth*, %struct.gss_auth** %7, align 8
  %33 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %32, i32 0, i32 0
  %34 = call i32 @gss_destroy(i32* %33)
  br label %35

35:                                               ; preds = %31, %23
  br label %36

36:                                               ; preds = %35, %13
  %37 = load %struct.gss_auth*, %struct.gss_auth** %6, align 8
  store %struct.gss_auth* %37, %struct.gss_auth** %3, align 8
  br label %38

38:                                               ; preds = %36, %21
  %39 = load %struct.gss_auth*, %struct.gss_auth** %3, align 8
  ret %struct.gss_auth* %39
}

declare dso_local %struct.gss_auth* @gss_auth_find_or_add_hashed(%struct.rpc_auth_create_args*, %struct.rpc_clnt*, %struct.gss_auth*) #1

declare dso_local %struct.gss_auth* @gss_create_new(%struct.rpc_auth_create_args*, %struct.rpc_clnt*) #1

declare dso_local i64 @IS_ERR(%struct.gss_auth*) #1

declare dso_local i32 @gss_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
