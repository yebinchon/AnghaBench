; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_remove_pipe_dir_object.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_remove_pipe_dir_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.rpc_pipe_dir_head = type { i32 }
%struct.rpc_pipe_dir_object = type { i32 }
%struct.sunrpc_net = type { i32 }

@sunrpc_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_remove_pipe_dir_object(%struct.net* %0, %struct.rpc_pipe_dir_head* %1, %struct.rpc_pipe_dir_object* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.rpc_pipe_dir_head*, align 8
  %6 = alloca %struct.rpc_pipe_dir_object*, align 8
  %7 = alloca %struct.sunrpc_net*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.rpc_pipe_dir_head* %1, %struct.rpc_pipe_dir_head** %5, align 8
  store %struct.rpc_pipe_dir_object* %2, %struct.rpc_pipe_dir_object** %6, align 8
  %8 = load %struct.rpc_pipe_dir_object*, %struct.rpc_pipe_dir_object** %6, align 8
  %9 = getelementptr inbounds %struct.rpc_pipe_dir_object, %struct.rpc_pipe_dir_object* %8, i32 0, i32 0
  %10 = call i32 @list_empty(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = load i32, i32* @sunrpc_net_id, align 4
  %15 = call %struct.sunrpc_net* @net_generic(%struct.net* %13, i32 %14)
  store %struct.sunrpc_net* %15, %struct.sunrpc_net** %7, align 8
  %16 = load %struct.sunrpc_net*, %struct.sunrpc_net** %7, align 8
  %17 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.net*, %struct.net** %4, align 8
  %20 = load %struct.rpc_pipe_dir_head*, %struct.rpc_pipe_dir_head** %5, align 8
  %21 = load %struct.rpc_pipe_dir_object*, %struct.rpc_pipe_dir_object** %6, align 8
  %22 = call i32 @rpc_remove_pipe_dir_object_locked(%struct.net* %19, %struct.rpc_pipe_dir_head* %20, %struct.rpc_pipe_dir_object* %21)
  %23 = load %struct.sunrpc_net*, %struct.sunrpc_net** %7, align 8
  %24 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  br label %26

26:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.sunrpc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rpc_remove_pipe_dir_object_locked(%struct.net*, %struct.rpc_pipe_dir_head*, %struct.rpc_pipe_dir_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
