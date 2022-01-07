; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_vma_replace_policy.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_vma_replace_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mempolicy*, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.mempolicy = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"vma %lx-%lx/%lx vm_ops %p vm_file %p set_policy %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.mempolicy*)* @vma_replace_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vma_replace_policy(%struct.vm_area_struct* %0, %struct.mempolicy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.mempolicy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mempolicy*, align 8
  %8 = alloca %struct.mempolicy*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.mempolicy* %1, %struct.mempolicy** %5, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.vm_area_struct*, %struct.mempolicy*)**
  %34 = load i32 (%struct.vm_area_struct*, %struct.mempolicy*)*, i32 (%struct.vm_area_struct*, %struct.mempolicy*)** %33, align 8
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %28
  %37 = phi i32 (%struct.vm_area_struct*, %struct.mempolicy*)* [ %34, %28 ], [ null, %35 ]
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17, %struct.TYPE_2__* %20, i32 %23, i32 (%struct.vm_area_struct*, %struct.mempolicy*)* %37)
  %39 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %40 = call %struct.mempolicy* @mpol_dup(%struct.mempolicy* %39)
  store %struct.mempolicy* %40, %struct.mempolicy** %8, align 8
  %41 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %42 = call i64 @IS_ERR(%struct.mempolicy* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %46 = call i32 @PTR_ERR(%struct.mempolicy* %45)
  store i32 %46, i32* %3, align 4
  br label %87

47:                                               ; preds = %36
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %74

52:                                               ; preds = %47
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = bitcast {}** %56 to i32 (%struct.vm_area_struct*, %struct.mempolicy*)**
  %58 = load i32 (%struct.vm_area_struct*, %struct.mempolicy*)*, i32 (%struct.vm_area_struct*, %struct.mempolicy*)** %57, align 8
  %59 = icmp ne i32 (%struct.vm_area_struct*, %struct.mempolicy*)* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %52
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = bitcast {}** %64 to i32 (%struct.vm_area_struct*, %struct.mempolicy*)**
  %66 = load i32 (%struct.vm_area_struct*, %struct.mempolicy*)*, i32 (%struct.vm_area_struct*, %struct.mempolicy*)** %65, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %68 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %69 = call i32 %66(%struct.vm_area_struct* %67, %struct.mempolicy* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %83

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %52, %47
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 0
  %77 = load %struct.mempolicy*, %struct.mempolicy** %76, align 8
  store %struct.mempolicy* %77, %struct.mempolicy** %7, align 8
  %78 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 0
  store %struct.mempolicy* %78, %struct.mempolicy** %80, align 8
  %81 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %82 = call i32 @mpol_put(%struct.mempolicy* %81)
  store i32 0, i32* %3, align 4
  br label %87

83:                                               ; preds = %72
  %84 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %85 = call i32 @mpol_put(%struct.mempolicy* %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %74, %44
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, %struct.TYPE_2__*, i32, i32 (%struct.vm_area_struct*, %struct.mempolicy*)*) #1

declare dso_local %struct.mempolicy* @mpol_dup(%struct.mempolicy*) #1

declare dso_local i64 @IS_ERR(%struct.mempolicy*) #1

declare dso_local i32 @PTR_ERR(%struct.mempolicy*) #1

declare dso_local i32 @mpol_put(%struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
