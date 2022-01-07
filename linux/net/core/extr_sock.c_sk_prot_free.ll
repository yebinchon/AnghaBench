; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_sk_prot_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_sk_prot_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto = type { %struct.kmem_cache*, %struct.module* }
%struct.kmem_cache = type { i32 }
%struct.module = type { i32 }
%struct.sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proto*, %struct.sock*)* @sk_prot_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sk_prot_free(%struct.proto* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.proto*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca %struct.module*, align 8
  store %struct.proto* %0, %struct.proto** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %7 = load %struct.proto*, %struct.proto** %3, align 8
  %8 = getelementptr inbounds %struct.proto, %struct.proto* %7, i32 0, i32 1
  %9 = load %struct.module*, %struct.module** %8, align 8
  store %struct.module* %9, %struct.module** %6, align 8
  %10 = load %struct.proto*, %struct.proto** %3, align 8
  %11 = getelementptr inbounds %struct.proto, %struct.proto* %10, i32 0, i32 0
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  store %struct.kmem_cache* %12, %struct.kmem_cache** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = call i32 @cgroup_sk_free(i32* %14)
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call i32 @mem_cgroup_sk_free(%struct.sock* %16)
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call i32 @security_sk_free(%struct.sock* %18)
  %20 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %21 = icmp ne %struct.kmem_cache* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = call i32 @kmem_cache_free(%struct.kmem_cache* %23, %struct.sock* %24)
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call i32 @kfree(%struct.sock* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load %struct.module*, %struct.module** %6, align 8
  %31 = call i32 @module_put(%struct.module* %30)
  ret void
}

declare dso_local i32 @cgroup_sk_free(i32*) #1

declare dso_local i32 @mem_cgroup_sk_free(%struct.sock*) #1

declare dso_local i32 @security_sk_free(%struct.sock*) #1

declare dso_local i32 @kmem_cache_free(%struct.kmem_cache*, %struct.sock*) #1

declare dso_local i32 @kfree(%struct.sock*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
