; ModuleID = '/home/carl/AnghaBench/linux/lib/dim/extr_dim.c_dim_on_top.c'
source_filename = "/home/carl/AnghaBench/linux/lib/dim/extr_dim.c_dim_on_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dim_on_top(%struct.dim* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dim*, align 8
  store %struct.dim* %0, %struct.dim** %3, align 8
  %4 = load %struct.dim*, %struct.dim** %3, align 8
  %5 = getelementptr inbounds %struct.dim, %struct.dim* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %21 [
    i32 129, label %7
    i32 128, label %7
    i32 130, label %8
  ]

7:                                                ; preds = %1, %1
  store i32 1, i32* %2, align 4
  br label %34

8:                                                ; preds = %1
  %9 = load %struct.dim*, %struct.dim** %3, align 8
  %10 = getelementptr inbounds %struct.dim, %struct.dim* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.dim*, %struct.dim** %3, align 8
  %15 = getelementptr inbounds %struct.dim, %struct.dim* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ false, %8 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %1
  %22 = load %struct.dim*, %struct.dim** %3, align 8
  %23 = getelementptr inbounds %struct.dim, %struct.dim* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.dim*, %struct.dim** %3, align 8
  %28 = getelementptr inbounds %struct.dim, %struct.dim* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ false, %21 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %18, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
