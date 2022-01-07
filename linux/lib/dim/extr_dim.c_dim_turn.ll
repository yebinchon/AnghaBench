; ModuleID = '/home/carl/AnghaBench/linux/lib/dim/extr_dim.c_dim_turn.c'
source_filename = "/home/carl/AnghaBench/linux/lib/dim/extr_dim.c_dim_turn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dim_turn(%struct.dim* %0) #0 {
  %2 = alloca %struct.dim*, align 8
  store %struct.dim* %0, %struct.dim** %2, align 8
  %3 = load %struct.dim*, %struct.dim** %2, align 8
  %4 = getelementptr inbounds %struct.dim, %struct.dim* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %17 [
    i32 129, label %6
    i32 128, label %6
    i32 130, label %7
    i32 131, label %12
  ]

6:                                                ; preds = %1, %1
  br label %17

7:                                                ; preds = %1
  %8 = load %struct.dim*, %struct.dim** %2, align 8
  %9 = getelementptr inbounds %struct.dim, %struct.dim* %8, i32 0, i32 0
  store i32 131, i32* %9, align 4
  %10 = load %struct.dim*, %struct.dim** %2, align 8
  %11 = getelementptr inbounds %struct.dim, %struct.dim* %10, i32 0, i32 2
  store i32 0, i32* %11, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.dim*, %struct.dim** %2, align 8
  %14 = getelementptr inbounds %struct.dim, %struct.dim* %13, i32 0, i32 0
  store i32 130, i32* %14, align 4
  %15 = load %struct.dim*, %struct.dim** %2, align 8
  %16 = getelementptr inbounds %struct.dim, %struct.dim* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %1, %12, %7, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
