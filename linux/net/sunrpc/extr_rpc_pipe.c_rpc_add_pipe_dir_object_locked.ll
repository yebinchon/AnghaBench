; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_add_pipe_dir_object_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_add_pipe_dir_object_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.rpc_pipe_dir_head = type { i32, i64 }
%struct.rpc_pipe_dir_object = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i64, %struct.rpc_pipe_dir_object*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.rpc_pipe_dir_head*, %struct.rpc_pipe_dir_object*)* @rpc_add_pipe_dir_object_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_add_pipe_dir_object_locked(%struct.net* %0, %struct.rpc_pipe_dir_head* %1, %struct.rpc_pipe_dir_object* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.rpc_pipe_dir_head*, align 8
  %6 = alloca %struct.rpc_pipe_dir_object*, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.rpc_pipe_dir_head* %1, %struct.rpc_pipe_dir_head** %5, align 8
  store %struct.rpc_pipe_dir_object* %2, %struct.rpc_pipe_dir_object** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.rpc_pipe_dir_head*, %struct.rpc_pipe_dir_head** %5, align 8
  %9 = getelementptr inbounds %struct.rpc_pipe_dir_head, %struct.rpc_pipe_dir_head* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load %struct.rpc_pipe_dir_object*, %struct.rpc_pipe_dir_object** %6, align 8
  %14 = getelementptr inbounds %struct.rpc_pipe_dir_object, %struct.rpc_pipe_dir_object* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i64, %struct.rpc_pipe_dir_object*)*, i32 (i64, %struct.rpc_pipe_dir_object*)** %16, align 8
  %18 = load %struct.rpc_pipe_dir_head*, %struct.rpc_pipe_dir_head** %5, align 8
  %19 = getelementptr inbounds %struct.rpc_pipe_dir_head, %struct.rpc_pipe_dir_head* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.rpc_pipe_dir_object*, %struct.rpc_pipe_dir_object** %6, align 8
  %22 = call i32 %17(i64 %20, %struct.rpc_pipe_dir_object* %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %12, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.rpc_pipe_dir_object*, %struct.rpc_pipe_dir_object** %6, align 8
  %28 = getelementptr inbounds %struct.rpc_pipe_dir_object, %struct.rpc_pipe_dir_object* %27, i32 0, i32 0
  %29 = load %struct.rpc_pipe_dir_head*, %struct.rpc_pipe_dir_head** %5, align 8
  %30 = getelementptr inbounds %struct.rpc_pipe_dir_head, %struct.rpc_pipe_dir_head* %29, i32 0, i32 0
  %31 = call i32 @list_add_tail(i32* %28, i32* %30)
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
