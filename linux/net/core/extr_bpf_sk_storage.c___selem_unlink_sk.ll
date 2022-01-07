; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c___selem_unlink_sk.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c___selem_unlink_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sk_storage = type { i32*, %struct.sock*, i32 }
%struct.sock = type { i32, i32 }
%struct.bpf_sk_storage_elem = type { i32 }
%struct.bpf_sk_storage_map = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_sk_storage*, %struct.bpf_sk_storage_elem*, i32)* @__selem_unlink_sk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__selem_unlink_sk(%struct.bpf_sk_storage* %0, %struct.bpf_sk_storage_elem* %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_sk_storage*, align 8
  %5 = alloca %struct.bpf_sk_storage_elem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_sk_storage_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  store %struct.bpf_sk_storage* %0, %struct.bpf_sk_storage** %4, align 8
  store %struct.bpf_sk_storage_elem* %1, %struct.bpf_sk_storage_elem** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %5, align 8
  %11 = call %struct.TYPE_3__* @SDATA(%struct.bpf_sk_storage_elem* %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.bpf_sk_storage_map* @rcu_dereference(i32 %13)
  store %struct.bpf_sk_storage_map* %14, %struct.bpf_sk_storage_map** %7, align 8
  %15 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %4, align 8
  %16 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %15, i32 0, i32 1
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %7, align 8
  %22 = getelementptr inbounds %struct.bpf_sk_storage_map, %struct.bpf_sk_storage_map* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sock*, %struct.sock** %9, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 1
  %26 = call i32 @atomic_sub(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %20, %3
  %28 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %5, align 8
  %29 = getelementptr inbounds %struct.bpf_sk_storage_elem, %struct.bpf_sk_storage_elem* %28, i32 0, i32 0
  %30 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %4, align 8
  %31 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %30, i32 0, i32 2
  %32 = call i32 @hlist_is_singular_node(i32* %29, i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load %struct.sock*, %struct.sock** %9, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 1
  %38 = call i32 @atomic_sub(i32 24, i32* %37)
  %39 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %4, align 8
  %40 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %39, i32 0, i32 1
  store %struct.sock* null, %struct.sock** %40, align 8
  %41 = load %struct.sock*, %struct.sock** %9, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @RCU_INIT_POINTER(i32 %43, i32* null)
  br label %45

45:                                               ; preds = %35, %27
  %46 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %5, align 8
  %47 = getelementptr inbounds %struct.bpf_sk_storage_elem, %struct.bpf_sk_storage_elem* %46, i32 0, i32 0
  %48 = call i32 @hlist_del_init_rcu(i32* %47)
  %49 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %4, align 8
  %50 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %7, align 8
  %53 = getelementptr inbounds %struct.bpf_sk_storage_map, %struct.bpf_sk_storage_map* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.TYPE_3__* @rcu_access_pointer(i32 %56)
  %58 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %5, align 8
  %59 = call %struct.TYPE_3__* @SDATA(%struct.bpf_sk_storage_elem* %58)
  %60 = icmp eq %struct.TYPE_3__* %57, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %45
  %62 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %4, align 8
  %63 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %7, align 8
  %66 = getelementptr inbounds %struct.bpf_sk_storage_map, %struct.bpf_sk_storage_map* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @RCU_INIT_POINTER(i32 %69, i32* null)
  br label %71

71:                                               ; preds = %61, %45
  %72 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %5, align 8
  %73 = load i32, i32* @rcu, align 4
  %74 = call i32 @kfree_rcu(%struct.bpf_sk_storage_elem* %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local %struct.bpf_sk_storage_map* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_3__* @SDATA(%struct.bpf_sk_storage_elem*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @hlist_is_singular_node(i32*, i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local %struct.TYPE_3__* @rcu_access_pointer(i32) #1

declare dso_local i32 @kfree_rcu(%struct.bpf_sk_storage_elem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
