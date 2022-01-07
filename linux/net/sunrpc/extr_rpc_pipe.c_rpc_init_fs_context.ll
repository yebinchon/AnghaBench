; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@rpc_fs_context_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @rpc_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca %struct.fs_context*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %2, align 8
  %3 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %4 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @put_user_ns(i32 %5)
  %7 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %8 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @get_user_ns(i32 %11)
  %13 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %14 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %16 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %15, i32 0, i32 0
  store i32* @rpc_fs_context_ops, i32** %16, align 8
  ret i32 0
}

declare dso_local i32 @put_user_ns(i32) #1

declare dso_local i32 @get_user_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
