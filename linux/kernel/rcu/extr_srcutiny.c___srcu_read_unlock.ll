; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutiny.c___srcu_read_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutiny.c___srcu_read_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__srcu_read_unlock(%struct.srcu_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.srcu_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.srcu_struct* %0, %struct.srcu_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %7 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %15 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @WRITE_ONCE(i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %2
  %26 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %27 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @READ_ONCE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %33 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %32, i32 0, i32 1
  %34 = call i32 @swake_up_one(i32* %33)
  br label %35

35:                                               ; preds = %31, %25, %2
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @swake_up_one(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
