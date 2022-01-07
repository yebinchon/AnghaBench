; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c_rpc_alloc_iostats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c_rpc_alloc_iostats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_iostats = type { i32 }
%struct.rpc_clnt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_iostats* @rpc_alloc_iostats(%struct.rpc_clnt* %0) #0 {
  %2 = alloca %struct.rpc_clnt*, align 8
  %3 = alloca %struct.rpc_iostats*, align 8
  %4 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %2, align 8
  %5 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.rpc_iostats* @kcalloc(i32 %7, i32 4, i32 %8)
  store %struct.rpc_iostats* %9, %struct.rpc_iostats** %3, align 8
  %10 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  %11 = icmp ne %struct.rpc_iostats* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %16 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %20, i64 %22
  %24 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_init(i32* %24)
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %13

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  ret %struct.rpc_iostats* %31
}

declare dso_local %struct.rpc_iostats* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
