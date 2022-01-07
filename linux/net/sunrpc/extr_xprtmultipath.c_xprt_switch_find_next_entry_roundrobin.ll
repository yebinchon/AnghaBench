; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_switch_find_next_entry_roundrobin.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtmultipath.c_xprt_switch_find_next_entry_roundrobin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt_switch = type { i32, i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.rpc_xprt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_xprt* (%struct.rpc_xprt_switch*, %struct.rpc_xprt*)* @xprt_switch_find_next_entry_roundrobin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_xprt* @xprt_switch_find_next_entry_roundrobin(%struct.rpc_xprt_switch* %0, %struct.rpc_xprt* %1) #0 {
  %3 = alloca %struct.rpc_xprt_switch*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.rpc_xprt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.rpc_xprt_switch* %0, %struct.rpc_xprt_switch** %3, align 8
  store %struct.rpc_xprt* %1, %struct.rpc_xprt** %4, align 8
  %10 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %10, i32 0, i32 2
  store %struct.list_head* %11, %struct.list_head** %5, align 8
  br label %12

12:                                               ; preds = %37, %2
  %13 = load %struct.list_head*, %struct.list_head** %5, align 8
  %14 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %15 = call %struct.rpc_xprt* @__xprt_switch_find_next_entry_roundrobin(%struct.list_head* %13, %struct.rpc_xprt* %14)
  store %struct.rpc_xprt* %15, %struct.rpc_xprt** %6, align 8
  %16 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %17 = icmp ne %struct.rpc_xprt* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %39

19:                                               ; preds = %12
  %20 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %21 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %20, i32 0, i32 0
  %22 = call i64 @atomic_long_read(i32* %21)
  store i64 %22, i64* %8, align 8
  %23 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %23, i32 0, i32 1
  %25 = call i64 @atomic_long_read(i32* %24)
  store i64 %25, i64* %9, align 8
  %26 = load %struct.rpc_xprt_switch*, %struct.rpc_xprt_switch** %3, align 8
  %27 = getelementptr inbounds %struct.rpc_xprt_switch, %struct.rpc_xprt_switch* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @READ_ONCE(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = mul i64 %30, %32
  %34 = load i64, i64* %9, align 8
  %35 = icmp ule i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %19
  br label %39

37:                                               ; preds = %19
  %38 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  store %struct.rpc_xprt* %38, %struct.rpc_xprt** %4, align 8
  br label %12

39:                                               ; preds = %36, %18
  %40 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  ret %struct.rpc_xprt* %40
}

declare dso_local %struct.rpc_xprt* @__xprt_switch_find_next_entry_roundrobin(%struct.list_head*, %struct.rpc_xprt*) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
