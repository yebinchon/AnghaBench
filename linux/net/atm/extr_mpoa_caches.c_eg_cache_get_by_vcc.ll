; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_eg_cache_get_by_vcc.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_eg_cache_get_by_vcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32, %struct.atm_vcc* }
%struct.atm_vcc = type { i32 }
%struct.mpoa_client = type { i32, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (%struct.atm_vcc*, %struct.mpoa_client*)* @eg_cache_get_by_vcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @eg_cache_get_by_vcc(%struct.atm_vcc* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.mpoa_client*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %5, align 8
  %8 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %9 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %8, i32 0, i32 0
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @read_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %13 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %7, align 8
  br label %15

15:                                               ; preds = %33, %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load %struct.atm_vcc*, %struct.atm_vcc** %20, align 8
  %22 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %23 = icmp eq %struct.atm_vcc* %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = call i32 @refcount_inc(i32* %26)
  %28 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %29 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @read_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %3, align 8
  br label %42

33:                                               ; preds = %18
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %7, align 8
  br label %15

37:                                               ; preds = %15
  %38 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %39 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %38, i32 0, i32 0
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @read_unlock_irqrestore(i32* %39, i64 %40)
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %42

42:                                               ; preds = %37, %24
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %43
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
