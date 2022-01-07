; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_in_cache_get_by_vcc.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_in_cache_get_by_vcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32, %struct.atm_vcc* }
%struct.atm_vcc = type { i32 }
%struct.mpoa_client = type { i32, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (%struct.atm_vcc*, %struct.mpoa_client*)* @in_cache_get_by_vcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @in_cache_get_by_vcc(%struct.atm_vcc* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.mpoa_client*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %5, align 8
  %7 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %8 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %7, i32 0, i32 0
  %9 = call i32 @read_lock_bh(i32* %8)
  %10 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %11 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %6, align 8
  br label %13

13:                                               ; preds = %30, %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load %struct.atm_vcc*, %struct.atm_vcc** %18, align 8
  %20 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %21 = icmp eq %struct.atm_vcc* %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @refcount_inc(i32* %24)
  %26 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %27 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %26, i32 0, i32 0
  %28 = call i32 @read_unlock_bh(i32* %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %3, align 8
  br label %38

30:                                               ; preds = %16
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %6, align 8
  br label %13

34:                                               ; preds = %13
  %35 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %36 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %35, i32 0, i32 0
  %37 = call i32 @read_unlock_bh(i32* %36)
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %38

38:                                               ; preds = %34, %22
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %39
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
