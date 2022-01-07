; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c___rpc_pipefs_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c___rpc_pipefs_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { %struct.rpc_clnt* }
%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_clnt*, i64, %struct.super_block*)* @__rpc_pipefs_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rpc_pipefs_event(%struct.rpc_clnt* %0, i64 %1, %struct.super_block* %2) #0 {
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.super_block* %2, %struct.super_block** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %29, %3
  %9 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @rpc_clnt_skip_event(%struct.rpc_clnt* %9, i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call i32 @__rpc_clnt_handle_event(%struct.rpc_clnt* %14, i64 %15, %struct.super_block* %16)
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %23 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %24 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %23, i32 0, i32 0
  %25 = load %struct.rpc_clnt*, %struct.rpc_clnt** %24, align 8
  %26 = icmp eq %struct.rpc_clnt* %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %18
  br label %33

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %31 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %30, i32 0, i32 0
  %32 = load %struct.rpc_clnt*, %struct.rpc_clnt** %31, align 8
  store %struct.rpc_clnt* %32, %struct.rpc_clnt** %4, align 8
  br label %8

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @rpc_clnt_skip_event(%struct.rpc_clnt*, i64) #1

declare dso_local i32 @__rpc_clnt_handle_event(%struct.rpc_clnt*, i64, %struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
