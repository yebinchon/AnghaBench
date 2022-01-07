; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_ecu_unmap_all.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_ecu_unmap_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @j1939_ecu_unmap_all(%struct.j1939_priv* %0) #0 {
  %2 = alloca %struct.j1939_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.j1939_priv* %0, %struct.j1939_priv** %2, align 8
  %4 = load %struct.j1939_priv*, %struct.j1939_priv** %2, align 8
  %5 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %4, i32 0, i32 0
  %6 = call i32 @write_lock_bh(i32* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %35, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.j1939_priv*, %struct.j1939_priv** %2, align 8
  %10 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %7
  %15 = load %struct.j1939_priv*, %struct.j1939_priv** %2, align 8
  %16 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = load %struct.j1939_priv*, %struct.j1939_priv** %2, align 8
  %26 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @j1939_ecu_unmap_locked(i64 %32)
  br label %34

34:                                               ; preds = %24, %14
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %7

38:                                               ; preds = %7
  %39 = load %struct.j1939_priv*, %struct.j1939_priv** %2, align 8
  %40 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %39, i32 0, i32 0
  %41 = call i32 @write_unlock_bh(i32* %40)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @j1939_ecu_unmap_locked(i64) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
