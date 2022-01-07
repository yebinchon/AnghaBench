; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_sk_prot_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_sk_prot_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.proto = type { i32, i32, %struct.kmem_cache* }
%struct.kmem_cache = type { i32 }

@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.proto*, i32, i32)* @sk_prot_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @sk_prot_alloc(%struct.proto* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.proto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.kmem_cache*, align 8
  store %struct.proto* %0, %struct.proto** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.proto*, %struct.proto** %5, align 8
  %11 = getelementptr inbounds %struct.proto, %struct.proto* %10, i32 0, i32 2
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  store %struct.kmem_cache* %12, %struct.kmem_cache** %9, align 8
  %13 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %14 = icmp ne %struct.kmem_cache* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %3
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @__GFP_ZERO, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = call %struct.sock* @kmem_cache_alloc(%struct.kmem_cache* %16, i32 %20)
  store %struct.sock* %21, %struct.sock** %8, align 8
  %22 = load %struct.sock*, %struct.sock** %8, align 8
  %23 = icmp ne %struct.sock* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %25, %struct.sock** %4, align 8
  br label %79

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @want_init_on_alloc(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.sock*, %struct.sock** %8, align 8
  %32 = load %struct.proto*, %struct.proto** %5, align 8
  %33 = getelementptr inbounds %struct.proto, %struct.proto* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sk_prot_clear_nulls(%struct.sock* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %26
  br label %43

37:                                               ; preds = %3
  %38 = load %struct.proto*, %struct.proto** %5, align 8
  %39 = getelementptr inbounds %struct.proto, %struct.proto* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.sock* @kmalloc(i32 %40, i32 %41)
  store %struct.sock* %42, %struct.sock** %8, align 8
  br label %43

43:                                               ; preds = %37, %36
  %44 = load %struct.sock*, %struct.sock** %8, align 8
  %45 = icmp ne %struct.sock* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load %struct.sock*, %struct.sock** %8, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @security_sk_alloc(%struct.sock* %47, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %68

53:                                               ; preds = %46
  %54 = load %struct.proto*, %struct.proto** %5, align 8
  %55 = getelementptr inbounds %struct.proto, %struct.proto* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @try_module_get(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %65

60:                                               ; preds = %53
  %61 = load %struct.sock*, %struct.sock** %8, align 8
  %62 = call i32 @sk_tx_queue_clear(%struct.sock* %61)
  br label %63

63:                                               ; preds = %60, %43
  %64 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %64, %struct.sock** %4, align 8
  br label %79

65:                                               ; preds = %59
  %66 = load %struct.sock*, %struct.sock** %8, align 8
  %67 = call i32 @security_sk_free(%struct.sock* %66)
  br label %68

68:                                               ; preds = %65, %52
  %69 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %70 = icmp ne %struct.kmem_cache* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %73 = load %struct.sock*, %struct.sock** %8, align 8
  %74 = call i32 @kmem_cache_free(%struct.kmem_cache* %72, %struct.sock* %73)
  br label %78

75:                                               ; preds = %68
  %76 = load %struct.sock*, %struct.sock** %8, align 8
  %77 = call i32 @kfree(%struct.sock* %76)
  br label %78

78:                                               ; preds = %75, %71
  store %struct.sock* null, %struct.sock** %4, align 8
  br label %79

79:                                               ; preds = %78, %63, %24
  %80 = load %struct.sock*, %struct.sock** %4, align 8
  ret %struct.sock* %80
}

declare dso_local %struct.sock* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

declare dso_local i64 @want_init_on_alloc(i32) #1

declare dso_local i32 @sk_prot_clear_nulls(%struct.sock*, i32) #1

declare dso_local %struct.sock* @kmalloc(i32, i32) #1

declare dso_local i64 @security_sk_alloc(%struct.sock*, i32, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @sk_tx_queue_clear(%struct.sock*) #1

declare dso_local i32 @security_sk_free(%struct.sock*) #1

declare dso_local i32 @kmem_cache_free(%struct.kmem_cache*, %struct.sock*) #1

declare dso_local i32 @kfree(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
