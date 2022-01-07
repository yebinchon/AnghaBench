; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c___get_vma_policy.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c___get_vma_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i32 }
%struct.vm_area_struct = type { %struct.mempolicy*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mempolicy* @__get_vma_policy(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mempolicy*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.mempolicy* null, %struct.mempolicy** %5, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %7 = icmp ne %struct.vm_area_struct* %6, null
  br i1 %7, label %8, label %49

8:                                                ; preds = %2
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to %struct.mempolicy* (%struct.vm_area_struct*, i64)**
  %19 = load %struct.mempolicy* (%struct.vm_area_struct*, i64)*, %struct.mempolicy* (%struct.vm_area_struct*, i64)** %18, align 8
  %20 = icmp ne %struct.mempolicy* (%struct.vm_area_struct*, i64)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to %struct.mempolicy* (%struct.vm_area_struct*, i64)**
  %27 = load %struct.mempolicy* (%struct.vm_area_struct*, i64)*, %struct.mempolicy* (%struct.vm_area_struct*, i64)** %26, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call %struct.mempolicy* %27(%struct.vm_area_struct* %28, i64 %29)
  store %struct.mempolicy* %30, %struct.mempolicy** %5, align 8
  br label %48

31:                                               ; preds = %13, %8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 0
  %34 = load %struct.mempolicy*, %struct.mempolicy** %33, align 8
  %35 = icmp ne %struct.mempolicy* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 0
  %39 = load %struct.mempolicy*, %struct.mempolicy** %38, align 8
  store %struct.mempolicy* %39, %struct.mempolicy** %5, align 8
  %40 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %41 = call i64 @mpol_needs_cond_ref(%struct.mempolicy* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %45 = call i32 @mpol_get(%struct.mempolicy* %44)
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %46, %31
  br label %48

48:                                               ; preds = %47, %21
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  ret %struct.mempolicy* %50
}

declare dso_local i64 @mpol_needs_cond_ref(%struct.mempolicy*) #1

declare dso_local i32 @mpol_get(%struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
