; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutiny.c_cleanup_srcu_struct.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutiny.c_cleanup_srcu_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i32, i32, i32, i32*, i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup_srcu_struct(%struct.srcu_struct* %0) #0 {
  %2 = alloca %struct.srcu_struct*, align 8
  store %struct.srcu_struct* %0, %struct.srcu_struct** %2, align 8
  %3 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %4 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %3, i32 0, i32 5
  %5 = load i64*, i64** %4, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %11 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %10, i32 0, i32 5
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %9, %1
  %17 = phi i1 [ true, %1 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %21 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %20, i32 0, i32 4
  %22 = call i32 @flush_work(i32* %21)
  %23 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %24 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %28 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %32 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %36 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %35, i32 0, i32 2
  %37 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %38 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
