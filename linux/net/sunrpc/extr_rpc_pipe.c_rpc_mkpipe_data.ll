; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_mkpipe_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_mkpipe_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_pipe = type { i32, %struct.rpc_pipe_ops* }
%struct.rpc_pipe_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_pipe* @rpc_mkpipe_data(%struct.rpc_pipe_ops* %0, i32 %1) #0 {
  %3 = alloca %struct.rpc_pipe*, align 8
  %4 = alloca %struct.rpc_pipe_ops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_pipe*, align 8
  store %struct.rpc_pipe_ops* %0, %struct.rpc_pipe_ops** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.rpc_pipe* @kzalloc(i32 16, i32 %7)
  store %struct.rpc_pipe* %8, %struct.rpc_pipe** %6, align 8
  %9 = load %struct.rpc_pipe*, %struct.rpc_pipe** %6, align 8
  %10 = icmp ne %struct.rpc_pipe* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.rpc_pipe* @ERR_PTR(i32 %13)
  store %struct.rpc_pipe* %14, %struct.rpc_pipe** %3, align 8
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.rpc_pipe*, %struct.rpc_pipe** %6, align 8
  %17 = call i32 @init_pipe(%struct.rpc_pipe* %16)
  %18 = load %struct.rpc_pipe_ops*, %struct.rpc_pipe_ops** %4, align 8
  %19 = load %struct.rpc_pipe*, %struct.rpc_pipe** %6, align 8
  %20 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %19, i32 0, i32 1
  store %struct.rpc_pipe_ops* %18, %struct.rpc_pipe_ops** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.rpc_pipe*, %struct.rpc_pipe** %6, align 8
  %23 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.rpc_pipe*, %struct.rpc_pipe** %6, align 8
  store %struct.rpc_pipe* %24, %struct.rpc_pipe** %3, align 8
  br label %25

25:                                               ; preds = %15, %11
  %26 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  ret %struct.rpc_pipe* %26
}

declare dso_local %struct.rpc_pipe* @kzalloc(i32, i32) #1

declare dso_local %struct.rpc_pipe* @ERR_PTR(i32) #1

declare dso_local i32 @init_pipe(%struct.rpc_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
