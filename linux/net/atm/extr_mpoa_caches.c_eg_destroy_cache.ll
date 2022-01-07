; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_eg_destroy_cache.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpoa_caches.c_eg_destroy_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpoa_client = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.mpoa_client*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpoa_client*)* @eg_destroy_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eg_destroy_cache(%struct.mpoa_client* %0) #0 {
  %2 = alloca %struct.mpoa_client*, align 8
  store %struct.mpoa_client* %0, %struct.mpoa_client** %2, align 8
  %3 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %4 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %3, i32 0, i32 0
  %5 = call i32 @write_lock_irq(i32* %4)
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %8 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %13 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32*, %struct.mpoa_client*)*, i32 (i32*, %struct.mpoa_client*)** %15, align 8
  %17 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %18 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %21 = call i32 %16(i32* %19, %struct.mpoa_client* %20)
  br label %6

22:                                               ; preds = %6
  %23 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %24 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %23, i32 0, i32 0
  %25 = call i32 @write_unlock_irq(i32* %24)
  ret void
}

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
