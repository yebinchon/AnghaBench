; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memblock.c_reset_node_managed_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memblock.c_reset_node_managed_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.zone* }
%struct.zone = type { i32 }

@MAX_NR_ZONES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_node_managed_pages(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.zone*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load %struct.zone*, %struct.zone** %5, align 8
  store %struct.zone* %6, %struct.zone** %3, align 8
  br label %7

7:                                                ; preds = %20, %1
  %8 = load %struct.zone*, %struct.zone** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.zone*, %struct.zone** %10, align 8
  %12 = load i32, i32* @MAX_NR_ZONES, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.zone, %struct.zone* %11, i64 %13
  %15 = icmp ult %struct.zone* %8, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %7
  %17 = load %struct.zone*, %struct.zone** %3, align 8
  %18 = getelementptr inbounds %struct.zone, %struct.zone* %17, i32 0, i32 0
  %19 = call i32 @atomic_long_set(i32* %18, i32 0)
  br label %20

20:                                               ; preds = %16
  %21 = load %struct.zone*, %struct.zone** %3, align 8
  %22 = getelementptr inbounds %struct.zone, %struct.zone* %21, i32 1
  store %struct.zone* %22, %struct.zone** %3, align 8
  br label %7

23:                                               ; preds = %7
  ret void
}

declare dso_local i32 @atomic_long_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
