; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_offset_il_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_offset_il_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mempolicy*, i64)* @offset_il_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @offset_il_node(%struct.mempolicy* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mempolicy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mempolicy* %0, %struct.mempolicy** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %11 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @nodes_weight(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 (...) @numa_node_id()
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = urem i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %25 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @first_node(i32 %27)
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %40, %19
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %36 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @next_node(i32 %34, i32 %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %29

43:                                               ; preds = %29
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @nodes_weight(i32) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @first_node(i32) #1

declare dso_local i32 @next_node(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
