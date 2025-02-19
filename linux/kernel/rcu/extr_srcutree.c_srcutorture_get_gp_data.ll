; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_srcutorture_get_gp_data.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_srcutorture_get_gp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i32 }

@SRCU_FLAVOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srcutorture_get_gp_data(i32 %0, %struct.srcu_struct* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.srcu_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.srcu_struct* %1, %struct.srcu_struct** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SRCU_FLAVOR, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %19

13:                                               ; preds = %4
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.srcu_struct*, %struct.srcu_struct** %6, align 8
  %16 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %15, i32 0, i32 0
  %17 = call i64 @rcu_seq_current(i32* %16)
  %18 = load i64*, i64** %8, align 8
  store i64 %17, i64* %18, align 8
  br label %19

19:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @rcu_seq_current(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
