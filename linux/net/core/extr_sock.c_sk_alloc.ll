; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_sk_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_sk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32, %struct.proto*, %struct.proto* }
%struct.net = type { i32 }
%struct.proto = type { i32 }

@__GFP_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @sk_alloc(%struct.net* %0, i32 %1, i32 %2, %struct.proto* %3, i32 %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.proto*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.proto* %3, %struct.proto** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.proto*, %struct.proto** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @__GFP_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.sock* @sk_prot_alloc(%struct.proto* %12, i32 %15, i32 %16)
  store %struct.sock* %17, %struct.sock** %11, align 8
  %18 = load %struct.sock*, %struct.sock** %11, align 8
  %19 = icmp ne %struct.sock* %18, null
  br i1 %19, label %20, label %68

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.sock*, %struct.sock** %11, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.proto*, %struct.proto** %9, align 8
  %25 = load %struct.sock*, %struct.sock** %11, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 5
  store %struct.proto* %24, %struct.proto** %26, align 8
  %27 = load %struct.sock*, %struct.sock** %11, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 6
  store %struct.proto* %24, %struct.proto** %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.sock*, %struct.sock** %11, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sock*, %struct.sock** %11, align 8
  %33 = call i32 @sock_lock_init(%struct.sock* %32)
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 1
  %38 = load %struct.sock*, %struct.sock** %11, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sock*, %struct.sock** %11, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %20
  %46 = load %struct.net*, %struct.net** %6, align 8
  %47 = call i32 @get_net(%struct.net* %46)
  %48 = load %struct.net*, %struct.net** %6, align 8
  %49 = call i32 @sock_inuse_add(%struct.net* %48, i32 1)
  br label %50

50:                                               ; preds = %45, %20
  %51 = load %struct.sock*, %struct.sock** %11, align 8
  %52 = load %struct.net*, %struct.net** %6, align 8
  %53 = call i32 @sock_net_set(%struct.sock* %51, %struct.net* %52)
  %54 = load %struct.sock*, %struct.sock** %11, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 4
  %56 = call i32 @refcount_set(i32* %55, i32 1)
  %57 = load %struct.sock*, %struct.sock** %11, align 8
  %58 = call i32 @mem_cgroup_sk_alloc(%struct.sock* %57)
  %59 = load %struct.sock*, %struct.sock** %11, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 3
  %61 = call i32 @cgroup_sk_alloc(i32* %60)
  %62 = load %struct.sock*, %struct.sock** %11, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 3
  %64 = call i32 @sock_update_classid(i32* %63)
  %65 = load %struct.sock*, %struct.sock** %11, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 3
  %67 = call i32 @sock_update_netprioidx(i32* %66)
  br label %68

68:                                               ; preds = %50, %5
  %69 = load %struct.sock*, %struct.sock** %11, align 8
  ret %struct.sock* %69
}

declare dso_local %struct.sock* @sk_prot_alloc(%struct.proto*, i32, i32) #1

declare dso_local i32 @sock_lock_init(%struct.sock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @get_net(%struct.net*) #1

declare dso_local i32 @sock_inuse_add(%struct.net*, i32) #1

declare dso_local i32 @sock_net_set(%struct.sock*, %struct.net*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @mem_cgroup_sk_alloc(%struct.sock*) #1

declare dso_local i32 @cgroup_sk_alloc(i32*) #1

declare dso_local i32 @sock_update_classid(i32*) #1

declare dso_local i32 @sock_update_netprioidx(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
