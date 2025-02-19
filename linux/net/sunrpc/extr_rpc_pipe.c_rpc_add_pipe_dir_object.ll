; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_add_pipe_dir_object.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_add_pipe_dir_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.rpc_pipe_dir_head = type { i32 }
%struct.rpc_pipe_dir_object = type { i32 }
%struct.sunrpc_net = type { i32 }

@sunrpc_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_add_pipe_dir_object(%struct.net* %0, %struct.rpc_pipe_dir_head* %1, %struct.rpc_pipe_dir_object* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.rpc_pipe_dir_head*, align 8
  %6 = alloca %struct.rpc_pipe_dir_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sunrpc_net*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.rpc_pipe_dir_head* %1, %struct.rpc_pipe_dir_head** %5, align 8
  store %struct.rpc_pipe_dir_object* %2, %struct.rpc_pipe_dir_object** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.rpc_pipe_dir_object*, %struct.rpc_pipe_dir_object** %6, align 8
  %10 = getelementptr inbounds %struct.rpc_pipe_dir_object, %struct.rpc_pipe_dir_object* %9, i32 0, i32 0
  %11 = call i64 @list_empty(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.net*, %struct.net** %4, align 8
  %15 = load i32, i32* @sunrpc_net_id, align 4
  %16 = call %struct.sunrpc_net* @net_generic(%struct.net* %14, i32 %15)
  store %struct.sunrpc_net* %16, %struct.sunrpc_net** %8, align 8
  %17 = load %struct.sunrpc_net*, %struct.sunrpc_net** %8, align 8
  %18 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.net*, %struct.net** %4, align 8
  %21 = load %struct.rpc_pipe_dir_head*, %struct.rpc_pipe_dir_head** %5, align 8
  %22 = load %struct.rpc_pipe_dir_object*, %struct.rpc_pipe_dir_object** %6, align 8
  %23 = call i32 @rpc_add_pipe_dir_object_locked(%struct.net* %20, %struct.rpc_pipe_dir_head* %21, %struct.rpc_pipe_dir_object* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.sunrpc_net*, %struct.sunrpc_net** %8, align 8
  %25 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  br label %27

27:                                               ; preds = %13, %3
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.sunrpc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rpc_add_pipe_dir_object_locked(%struct.net*, %struct.rpc_pipe_dir_head*, %struct.rpc_pipe_dir_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
