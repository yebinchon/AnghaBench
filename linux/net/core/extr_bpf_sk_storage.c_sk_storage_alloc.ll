; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_sk_storage_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_sk_storage_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.bpf_sk_storage_map = type { i32 }
%struct.bpf_sk_storage_elem = type { i32 }
%struct.bpf_sk_storage = type { %struct.sock*, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_elem*)* @sk_storage_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sk_storage_alloc(%struct.sock* %0, %struct.bpf_sk_storage_map* %1, %struct.bpf_sk_storage_elem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.bpf_sk_storage_map*, align 8
  %7 = alloca %struct.bpf_sk_storage_elem*, align 8
  %8 = alloca %struct.bpf_sk_storage*, align 8
  %9 = alloca %struct.bpf_sk_storage*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.bpf_sk_storage_map* %1, %struct.bpf_sk_storage_map** %6, align 8
  store %struct.bpf_sk_storage_elem* %2, %struct.bpf_sk_storage_elem** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call i32 @omem_charge(%struct.sock* %11, i32 16)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %64

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = load i32, i32* @__GFP_NOWARN, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.bpf_sk_storage* @kzalloc(i32 16, i32 %20)
  store %struct.bpf_sk_storage* %21, %struct.bpf_sk_storage** %9, align 8
  %22 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %9, align 8
  %23 = icmp ne %struct.bpf_sk_storage* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %10, align 4
  br label %57

27:                                               ; preds = %17
  %28 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %9, align 8
  %29 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %28, i32 0, i32 2
  %30 = call i32 @INIT_HLIST_HEAD(i32* %29)
  %31 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %9, align 8
  %32 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %31, i32 0, i32 1
  %33 = call i32 @raw_spin_lock_init(i32* %32)
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %9, align 8
  %36 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %35, i32 0, i32 0
  store %struct.sock* %34, %struct.sock** %36, align 8
  %37 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %9, align 8
  %38 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %7, align 8
  %39 = call i32 @__selem_link_sk(%struct.bpf_sk_storage* %37, %struct.bpf_sk_storage_elem* %38)
  %40 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %6, align 8
  %41 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %7, align 8
  %42 = call i32 @selem_link_map(%struct.bpf_sk_storage_map* %40, %struct.bpf_sk_storage_elem* %41)
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  %45 = bitcast i32* %44 to %struct.bpf_sk_storage**
  %46 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %9, align 8
  %47 = call %struct.bpf_sk_storage* @cmpxchg(%struct.bpf_sk_storage** %45, i32* null, %struct.bpf_sk_storage* %46)
  store %struct.bpf_sk_storage* %47, %struct.bpf_sk_storage** %8, align 8
  %48 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %8, align 8
  %49 = call i64 @unlikely(%struct.bpf_sk_storage* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %27
  %52 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %7, align 8
  %53 = call i32 @selem_unlink_map(%struct.bpf_sk_storage_elem* %52)
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  br label %57

56:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %64

57:                                               ; preds = %51, %24
  %58 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %9, align 8
  %59 = call i32 @kfree(%struct.bpf_sk_storage* %58)
  %60 = load %struct.sock*, %struct.sock** %5, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  %62 = call i32 @atomic_sub(i32 16, i32* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %56, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @omem_charge(%struct.sock*, i32) #1

declare dso_local %struct.bpf_sk_storage* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @__selem_link_sk(%struct.bpf_sk_storage*, %struct.bpf_sk_storage_elem*) #1

declare dso_local i32 @selem_link_map(%struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_elem*) #1

declare dso_local %struct.bpf_sk_storage* @cmpxchg(%struct.bpf_sk_storage**, i32*, %struct.bpf_sk_storage*) #1

declare dso_local i64 @unlikely(%struct.bpf_sk_storage*) #1

declare dso_local i32 @selem_unlink_map(%struct.bpf_sk_storage_elem*) #1

declare dso_local i32 @kfree(%struct.bpf_sk_storage*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
