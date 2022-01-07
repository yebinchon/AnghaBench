; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_interleave_nid.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_interleave_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i32 }
%struct.vm_area_struct = type { i32, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mempolicy*, %struct.vm_area_struct*, i64, i32)* @interleave_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interleave_nid(%struct.mempolicy* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mempolicy*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mempolicy* %0, %struct.mempolicy** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %12 = icmp ne %struct.vm_area_struct* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = icmp slt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = sub nsw i32 %22, %23
  %25 = ashr i32 %21, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = lshr i64 %31, %33
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %10, align 8
  %37 = load %struct.mempolicy*, %struct.mempolicy** %6, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @offset_il_node(%struct.mempolicy* %37, i64 %38)
  store i32 %39, i32* %5, align 4
  br label %43

40:                                               ; preds = %4
  %41 = load %struct.mempolicy*, %struct.mempolicy** %6, align 8
  %42 = call i32 @interleave_nodes(%struct.mempolicy* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %13
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @offset_il_node(%struct.mempolicy*, i64) #1

declare dso_local i32 @interleave_nodes(%struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
