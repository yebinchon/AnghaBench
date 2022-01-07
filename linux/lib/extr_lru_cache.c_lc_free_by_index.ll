; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_free_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_free_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lru_cache = type { i32, i32, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lru_cache*, i32)* @lc_free_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lc_free_by_index(%struct.lru_cache* %0, i32 %1) #0 {
  %3 = alloca %struct.lru_cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.lru_cache* %0, %struct.lru_cache** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lru_cache*, %struct.lru_cache** %3, align 8
  %7 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %6, i32 0, i32 2
  %8 = load i8**, i8*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %8, i64 %10
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.lru_cache*, %struct.lru_cache** %3, align 8
  %22 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = sext i32 %23 to i64
  %26 = sub i64 0, %25
  %27 = getelementptr i8, i8* %24, i64 %26
  store i8* %27, i8** %5, align 8
  %28 = load %struct.lru_cache*, %struct.lru_cache** %3, align 8
  %29 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @kmem_cache_free(i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kmem_cache_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
