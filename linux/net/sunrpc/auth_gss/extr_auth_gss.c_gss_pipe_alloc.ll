; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_pipe_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_pipe_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_pipe = type { i8*, i32, i32, %struct.rpc_clnt*, i32 }
%struct.rpc_clnt = type { i32 }
%struct.rpc_pipe_ops = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RPC_PIPE_WAIT_FOR_OPEN = common dso_local global i32 0, align 4
@gss_pipe_dir_object_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gss_pipe* (%struct.rpc_clnt*, i8*, %struct.rpc_pipe_ops*)* @gss_pipe_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gss_pipe* @gss_pipe_alloc(%struct.rpc_clnt* %0, i8* %1, %struct.rpc_pipe_ops* %2) #0 {
  %4 = alloca %struct.gss_pipe*, align 8
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rpc_pipe_ops*, align 8
  %8 = alloca %struct.gss_pipe*, align 8
  %9 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.rpc_pipe_ops* %2, %struct.rpc_pipe_ops** %7, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gss_pipe* @kmalloc(i32 32, i32 %12)
  store %struct.gss_pipe* %13, %struct.gss_pipe** %8, align 8
  %14 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %15 = icmp eq %struct.gss_pipe* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %51

17:                                               ; preds = %3
  %18 = load %struct.rpc_pipe_ops*, %struct.rpc_pipe_ops** %7, align 8
  %19 = load i32, i32* @RPC_PIPE_WAIT_FOR_OPEN, align 4
  %20 = call i32 @rpc_mkpipe_data(%struct.rpc_pipe_ops* %18, i32 %19)
  %21 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %22 = getelementptr inbounds %struct.gss_pipe, %struct.gss_pipe* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %24 = getelementptr inbounds %struct.gss_pipe, %struct.gss_pipe* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %30 = getelementptr inbounds %struct.gss_pipe, %struct.gss_pipe* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %9, align 4
  br label %48

33:                                               ; preds = %17
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %36 = getelementptr inbounds %struct.gss_pipe, %struct.gss_pipe* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %38 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %39 = getelementptr inbounds %struct.gss_pipe, %struct.gss_pipe* %38, i32 0, i32 3
  store %struct.rpc_clnt* %37, %struct.rpc_clnt** %39, align 8
  %40 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %41 = getelementptr inbounds %struct.gss_pipe, %struct.gss_pipe* %40, i32 0, i32 2
  %42 = call i32 @kref_init(i32* %41)
  %43 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %44 = getelementptr inbounds %struct.gss_pipe, %struct.gss_pipe* %43, i32 0, i32 1
  %45 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %46 = call i32 @rpc_init_pipe_dir_object(i32* %44, i32* @gss_pipe_dir_object_ops, %struct.gss_pipe* %45)
  %47 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  store %struct.gss_pipe* %47, %struct.gss_pipe** %4, align 8
  br label %54

48:                                               ; preds = %28
  %49 = load %struct.gss_pipe*, %struct.gss_pipe** %8, align 8
  %50 = call i32 @kfree(%struct.gss_pipe* %49)
  br label %51

51:                                               ; preds = %48, %16
  %52 = load i32, i32* %9, align 4
  %53 = call %struct.gss_pipe* @ERR_PTR(i32 %52)
  store %struct.gss_pipe* %53, %struct.gss_pipe** %4, align 8
  br label %54

54:                                               ; preds = %51, %33
  %55 = load %struct.gss_pipe*, %struct.gss_pipe** %4, align 8
  ret %struct.gss_pipe* %55
}

declare dso_local %struct.gss_pipe* @kmalloc(i32, i32) #1

declare dso_local i32 @rpc_mkpipe_data(%struct.rpc_pipe_ops*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @rpc_init_pipe_dir_object(i32*, i32*, %struct.gss_pipe*) #1

declare dso_local i32 @kfree(%struct.gss_pipe*) #1

declare dso_local %struct.gss_pipe* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
