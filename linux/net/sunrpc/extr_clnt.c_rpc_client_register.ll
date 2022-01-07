; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_client_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_client_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.rpc_auth_create_args = type { i8*, i32 }
%struct.rpc_auth = type { i32 }
%struct.net = type { i32 }
%struct.super_block = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"RPC:       Couldn't create auth handle (flavor %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_clnt*, i32, i8*)* @rpc_client_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_client_register(%struct.rpc_clnt* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rpc_auth_create_args, align 8
  %9 = alloca %struct.rpc_auth*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = getelementptr inbounds %struct.rpc_auth_create_args, %struct.rpc_auth_create_args* %8, i32 0, i32 0
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds %struct.rpc_auth_create_args, %struct.rpc_auth_create_args* %8, i32 0, i32 1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %15, align 8
  %17 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %18 = call %struct.net* @rpc_net_ns(%struct.rpc_clnt* %17)
  store %struct.net* %18, %struct.net** %10, align 8
  %19 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %20 = call i32 @rpc_clnt_debugfs_register(%struct.rpc_clnt* %19)
  %21 = load %struct.net*, %struct.net** %10, align 8
  %22 = call %struct.super_block* @rpc_get_sb_net(%struct.net* %21)
  store %struct.super_block* %22, %struct.super_block** %11, align 8
  %23 = load %struct.super_block*, %struct.super_block** %11, align 8
  %24 = icmp ne %struct.super_block* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.super_block*, %struct.super_block** %11, align 8
  %27 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %28 = call i32 @rpc_setup_pipedir(%struct.super_block* %26, %struct.rpc_clnt* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %60

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %35 = call i32 @rpc_register_client(%struct.rpc_clnt* %34)
  %36 = load %struct.super_block*, %struct.super_block** %11, align 8
  %37 = icmp ne %struct.super_block* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.net*, %struct.net** %10, align 8
  %40 = call i32 @rpc_put_sb_net(%struct.net* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %43 = call %struct.rpc_auth* @rpcauth_create(%struct.rpc_auth_create_args* %8, %struct.rpc_clnt* %42)
  store %struct.rpc_auth* %43, %struct.rpc_auth** %9, align 8
  %44 = load %struct.rpc_auth*, %struct.rpc_auth** %9, align 8
  %45 = call i64 @IS_ERR(%struct.rpc_auth* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.rpc_auth*, %struct.rpc_auth** %9, align 8
  %51 = call i32 @PTR_ERR(%struct.rpc_auth* %50)
  store i32 %51, i32* %12, align 4
  br label %53

52:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %70

53:                                               ; preds = %47
  %54 = load %struct.net*, %struct.net** %10, align 8
  %55 = call %struct.super_block* @rpc_get_sb_net(%struct.net* %54)
  store %struct.super_block* %55, %struct.super_block** %11, align 8
  %56 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %57 = call i32 @rpc_unregister_client(%struct.rpc_clnt* %56)
  %58 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %59 = call i32 @__rpc_clnt_remove_pipedir(%struct.rpc_clnt* %58)
  br label %60

60:                                               ; preds = %53, %31
  %61 = load %struct.super_block*, %struct.super_block** %11, align 8
  %62 = icmp ne %struct.super_block* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.net*, %struct.net** %10, align 8
  %65 = call i32 @rpc_put_sb_net(%struct.net* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %68 = call i32 @rpc_clnt_debugfs_unregister(%struct.rpc_clnt* %67)
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %52
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.net* @rpc_net_ns(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_clnt_debugfs_register(%struct.rpc_clnt*) #1

declare dso_local %struct.super_block* @rpc_get_sb_net(%struct.net*) #1

declare dso_local i32 @rpc_setup_pipedir(%struct.super_block*, %struct.rpc_clnt*) #1

declare dso_local i32 @rpc_register_client(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_put_sb_net(%struct.net*) #1

declare dso_local %struct.rpc_auth* @rpcauth_create(%struct.rpc_auth_create_args*, %struct.rpc_clnt*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_auth*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_auth*) #1

declare dso_local i32 @rpc_unregister_client(%struct.rpc_clnt*) #1

declare dso_local i32 @__rpc_clnt_remove_pipedir(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_clnt_debugfs_unregister(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
