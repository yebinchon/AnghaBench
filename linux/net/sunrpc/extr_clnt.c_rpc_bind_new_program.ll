; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_bind_new_program.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_bind_new_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_program = type { i32 }
%struct.rpc_create_args = type { i32, i32, i32, i32, %struct.rpc_program* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_clnt* @rpc_bind_new_program(%struct.rpc_clnt* %0, %struct.rpc_program* %1, i32 %2) #0 {
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.rpc_program*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_create_args, align 8
  %8 = alloca %struct.rpc_clnt*, align 8
  %9 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %4, align 8
  store %struct.rpc_program* %1, %struct.rpc_program** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %7, i32 0, i32 0
  %11 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 8
  %14 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %7, i32 0, i32 1
  %15 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %16 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %7, i32 0, i32 2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %7, i32 0, i32 3
  %23 = load %struct.rpc_program*, %struct.rpc_program** %5, align 8
  %24 = getelementptr inbounds %struct.rpc_program, %struct.rpc_program* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %7, i32 0, i32 4
  %27 = load %struct.rpc_program*, %struct.rpc_program** %5, align 8
  store %struct.rpc_program* %27, %struct.rpc_program** %26, align 8
  %28 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %29 = call %struct.rpc_clnt* @__rpc_clone_client(%struct.rpc_create_args* %7, %struct.rpc_clnt* %28)
  store %struct.rpc_clnt* %29, %struct.rpc_clnt** %8, align 8
  %30 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  %31 = call i64 @IS_ERR(%struct.rpc_clnt* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %45

34:                                               ; preds = %3
  %35 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  %36 = call i32 @rpc_ping(%struct.rpc_clnt* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  %41 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %40)
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.rpc_clnt* @ERR_PTR(i32 %42)
  store %struct.rpc_clnt* %43, %struct.rpc_clnt** %8, align 8
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %44, %33
  %46 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  ret %struct.rpc_clnt* %46
}

declare dso_local %struct.rpc_clnt* @__rpc_clone_client(%struct.rpc_create_args*, %struct.rpc_clnt*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_ping(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

declare dso_local %struct.rpc_clnt* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
