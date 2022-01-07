; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_inet_ehash_locks_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_inet_ehash_locks_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_hashinfo = type { i32, i32*, i64 }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_ehash_locks_alloc(%struct.inet_hashinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inet_hashinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inet_hashinfo* %0, %struct.inet_hashinfo** %3, align 8
  store i32 4, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %1
  %10 = load i32, i32* @L1_CACHE_BYTES, align 4
  %11 = mul i32 2, %10
  %12 = load i32, i32* %4, align 4
  %13 = udiv i32 %11, %12
  %14 = call i32 @max(i32 %13, i32 1)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (...) @num_possible_cpus()
  %17 = mul i32 %15, %16
  %18 = call i32 @roundup_pow_of_two(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %21 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @min(i32 %19, i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kvmalloc_array(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %30 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %32 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %9
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %60

38:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %45 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @spin_lock_init(i32* %49)
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %39

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %1
  %56 = load i32, i32* %6, align 4
  %57 = sub i32 %56, 1
  %58 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %59 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %35
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @num_possible_cpus(...) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
