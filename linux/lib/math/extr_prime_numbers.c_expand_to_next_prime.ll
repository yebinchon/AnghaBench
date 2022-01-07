; ModuleID = '/home/carl/AnghaBench/linux/lib/math/extr_prime_numbers.c_expand_to_next_prime.c'
source_filename = "/home/carl/AnghaBench/linux/lib/math/extr_prime_numbers.c_expand_to_next_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.primes = type { i64, i64, i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@primes = common dso_local global i32 0, align 4
@small_primes = common dso_local global %struct.primes zeroinitializer, align 8
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @expand_to_next_prime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_to_next_prime(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.primes*, align 8
  %5 = alloca %struct.primes*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = mul i64 2, %8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %104

14:                                               ; preds = %1
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* @BITS_PER_LONG, align 4
  %17 = call i64 @round_up(i64 %15, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @bitmap_size(i64 %18)
  %20 = add i64 24, %19
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* @__GFP_NOWARN, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.primes* @kmalloc(i64 %20, i32 %23)
  store %struct.primes* %24, %struct.primes** %5, align 8
  %25 = load %struct.primes*, %struct.primes** %5, align 8
  %26 = icmp ne %struct.primes* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %104

28:                                               ; preds = %14
  %29 = call i32 @mutex_lock(i32* @lock)
  %30 = load i32, i32* @primes, align 4
  %31 = call i32 @lockdep_is_held(i32* @lock)
  %32 = call %struct.primes* @rcu_dereference_protected(i32 %30, i32 %31)
  store %struct.primes* %32, %struct.primes** %4, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load %struct.primes*, %struct.primes** %4, align 8
  %35 = getelementptr inbounds %struct.primes, %struct.primes* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.primes*, %struct.primes** %5, align 8
  %40 = call i32 @kfree(%struct.primes* %39)
  br label %102

41:                                               ; preds = %28
  %42 = load %struct.primes*, %struct.primes** %5, align 8
  %43 = getelementptr inbounds %struct.primes, %struct.primes* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @bitmap_fill(i32 %44, i64 %45)
  %47 = load %struct.primes*, %struct.primes** %5, align 8
  %48 = getelementptr inbounds %struct.primes, %struct.primes* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.primes*, %struct.primes** %4, align 8
  %51 = getelementptr inbounds %struct.primes, %struct.primes* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.primes*, %struct.primes** %4, align 8
  %54 = getelementptr inbounds %struct.primes, %struct.primes* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @bitmap_copy(i32 %49, i32 %52, i64 %55)
  store i64 2, i64* %7, align 8
  br label %57

57:                                               ; preds = %73, %41
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %57
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.primes*, %struct.primes** %5, align 8
  %64 = getelementptr inbounds %struct.primes, %struct.primes* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.primes*, %struct.primes** %4, align 8
  %67 = getelementptr inbounds %struct.primes, %struct.primes* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i64 @clear_multiples(i64 %62, i32 %65, i64 %68, i64 %69)
  %71 = load %struct.primes*, %struct.primes** %5, align 8
  %72 = getelementptr inbounds %struct.primes, %struct.primes* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %61
  %74 = load %struct.primes*, %struct.primes** %5, align 8
  %75 = getelementptr inbounds %struct.primes, %struct.primes* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 1
  %80 = call i64 @find_next_bit(i32 %76, i64 %77, i64 %79)
  store i64 %80, i64* %7, align 8
  br label %57

81:                                               ; preds = %57
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.primes*, %struct.primes** %5, align 8
  %84 = getelementptr inbounds %struct.primes, %struct.primes* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.primes*, %struct.primes** %5, align 8
  %86 = getelementptr inbounds %struct.primes, %struct.primes* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %3, align 8
  %89 = icmp ule i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @BUG_ON(i32 %90)
  %92 = load i32, i32* @primes, align 4
  %93 = load %struct.primes*, %struct.primes** %5, align 8
  %94 = call i32 @rcu_assign_pointer(i32 %92, %struct.primes* %93)
  %95 = load %struct.primes*, %struct.primes** %4, align 8
  %96 = icmp ne %struct.primes* %95, @small_primes
  br i1 %96, label %97, label %101

97:                                               ; preds = %81
  %98 = load %struct.primes*, %struct.primes** %4, align 8
  %99 = load i32, i32* @rcu, align 4
  %100 = call i32 @kfree_rcu(%struct.primes* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %81
  br label %102

102:                                              ; preds = %101, %38
  %103 = call i32 @mutex_unlock(i32* @lock)
  store i32 1, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %27, %13
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local %struct.primes* @kmalloc(i64, i32) #1

declare dso_local i64 @bitmap_size(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.primes* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @kfree(%struct.primes*) #1

declare dso_local i32 @bitmap_fill(i32, i64) #1

declare dso_local i32 @bitmap_copy(i32, i32, i64) #1

declare dso_local i64 @clear_multiples(i64, i32, i64, i64) #1

declare dso_local i64 @find_next_bit(i32, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.primes*) #1

declare dso_local i32 @kfree_rcu(%struct.primes*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
