; ModuleID = '/home/carl/AnghaBench/linux/lib/math/extr_prime_numbers.c_dump_primes.c'
source_filename = "/home/carl/AnghaBench/linux/lib/math/extr_prime_numbers.c_dump_primes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.primes = type { i32, i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@primes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"primes.{last=%lu, .sz=%lu, .primes[]=...x%lx} = %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_primes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_primes() #0 {
  %1 = alloca %struct.primes*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @PAGE_SIZE, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i8* @kmalloc(i32 %3, i32 %4)
  store i8* %5, i8** %2, align 8
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load i32, i32* @primes, align 4
  %8 = call %struct.primes* @rcu_dereference(i32 %7)
  store %struct.primes* %8, %struct.primes** %1, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  %12 = load i8*, i8** %2, align 8
  %13 = load %struct.primes*, %struct.primes** %1, align 8
  %14 = getelementptr inbounds %struct.primes, %struct.primes* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.primes*, %struct.primes** %1, align 8
  %17 = getelementptr inbounds %struct.primes, %struct.primes* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bitmap_print_to_pagebuf(i32 1, i8* %12, i32* %15, i32 %18)
  br label %20

20:                                               ; preds = %11, %0
  %21 = load %struct.primes*, %struct.primes** %1, align 8
  %22 = getelementptr inbounds %struct.primes, %struct.primes* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.primes*, %struct.primes** %1, align 8
  %25 = getelementptr inbounds %struct.primes, %struct.primes* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.primes*, %struct.primes** %1, align 8
  %28 = getelementptr inbounds %struct.primes, %struct.primes* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.primes*, %struct.primes** %1, align 8
  %31 = getelementptr inbounds %struct.primes, %struct.primes* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @BITS_TO_LONGS(i32 %32)
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %37, i8* %38)
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @kfree(i8* %41)
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.primes* @rcu_dereference(i32) #1

declare dso_local i32 @bitmap_print_to_pagebuf(i32, i8*, i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
