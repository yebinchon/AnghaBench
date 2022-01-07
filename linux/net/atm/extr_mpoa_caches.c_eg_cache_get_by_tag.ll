; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_eg_cache_get_by_tag.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_eg_cache_get_by_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.mpoa_client = type { i32, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i64, %struct.mpoa_client*)* @eg_cache_get_by_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @eg_cache_get_by_tag(i64 %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mpoa_client*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %5, align 8
  %8 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %9 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %8, i32 0, i32 0
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @read_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %13 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %7, align 8
  br label %15

15:                                               ; preds = %34, %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = call i32 @refcount_inc(i32* %27)
  %29 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %30 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %29, i32 0, i32 0
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @read_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %3, align 8
  br label %43

34:                                               ; preds = %18
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %7, align 8
  br label %15

38:                                               ; preds = %15
  %39 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %40 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @read_unlock_irqrestore(i32* %40, i64 %41)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %43

43:                                               ; preds = %38, %25
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %44
}

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
