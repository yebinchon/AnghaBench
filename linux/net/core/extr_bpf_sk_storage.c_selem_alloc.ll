; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_selem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_selem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sk_storage_elem = type { i32 }
%struct.bpf_sk_storage_map = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sock = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_sk_storage_elem* (%struct.bpf_sk_storage_map*, %struct.sock*, i8*, i32)* @selem_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_sk_storage_elem* @selem_alloc(%struct.bpf_sk_storage_map* %0, %struct.sock* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.bpf_sk_storage_elem*, align 8
  %6 = alloca %struct.bpf_sk_storage_map*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_sk_storage_elem*, align 8
  store %struct.bpf_sk_storage_map* %0, %struct.bpf_sk_storage_map** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load %struct.sock*, %struct.sock** %7, align 8
  %15 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %6, align 8
  %16 = getelementptr inbounds %struct.bpf_sk_storage_map, %struct.bpf_sk_storage_map* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @omem_charge(%struct.sock* %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store %struct.bpf_sk_storage_elem* null, %struct.bpf_sk_storage_elem** %5, align 8
  br label %58

21:                                               ; preds = %13, %4
  %22 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %6, align 8
  %23 = getelementptr inbounds %struct.bpf_sk_storage_map, %struct.bpf_sk_storage_map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = load i32, i32* @__GFP_NOWARN, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.bpf_sk_storage_elem* @kzalloc(i32 %24, i32 %27)
  store %struct.bpf_sk_storage_elem* %28, %struct.bpf_sk_storage_elem** %10, align 8
  %29 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %10, align 8
  %30 = icmp ne %struct.bpf_sk_storage_elem* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %21
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %10, align 8
  %36 = call %struct.TYPE_4__* @SDATA(%struct.bpf_sk_storage_elem* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %6, align 8
  %41 = getelementptr inbounds %struct.bpf_sk_storage_map, %struct.bpf_sk_storage_map* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %38, i8* %39, i32 %43)
  br label %45

45:                                               ; preds = %34, %31
  %46 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %10, align 8
  store %struct.bpf_sk_storage_elem* %46, %struct.bpf_sk_storage_elem** %5, align 8
  br label %58

47:                                               ; preds = %21
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %6, align 8
  %52 = getelementptr inbounds %struct.bpf_sk_storage_map, %struct.bpf_sk_storage_map* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sock*, %struct.sock** %7, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = call i32 @atomic_sub(i32 %53, i32* %55)
  br label %57

57:                                               ; preds = %50, %47
  store %struct.bpf_sk_storage_elem* null, %struct.bpf_sk_storage_elem** %5, align 8
  br label %58

58:                                               ; preds = %57, %45, %20
  %59 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %5, align 8
  ret %struct.bpf_sk_storage_elem* %59
}

declare dso_local i64 @omem_charge(%struct.sock*, i32) #1

declare dso_local %struct.bpf_sk_storage_elem* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @SDATA(%struct.bpf_sk_storage_elem*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
