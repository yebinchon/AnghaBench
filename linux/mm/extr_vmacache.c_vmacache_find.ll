; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmacache.c_vmacache_find.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmacache.c_vmacache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vm_area_struct** }
%struct.vm_area_struct = type { i64, i64, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@VMACACHE_FIND_CALLS = common dso_local global i32 0, align 4
@VMACACHE_SIZE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@VMACACHE_FIND_HITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vm_area_struct* @vmacache_find(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @VMACACHE_HASH(i64 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @VMACACHE_FIND_CALLS, align 4
  %12 = call i32 @count_vm_vmacache_event(i32 %11)
  %13 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %14 = call i32 @vmacache_valid(%struct.mm_struct* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %3, align 8
  br label %61

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %57, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @VMACACHE_SIZE, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.vm_area_struct*, %struct.vm_area_struct** %26, i64 %28
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %29, align 8
  store %struct.vm_area_struct* %30, %struct.vm_area_struct** %8, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %32 = icmp ne %struct.vm_area_struct* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %22
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @VMACACHE_FIND_HITS, align 4
  %47 = call i32 @count_vm_vmacache_event(i32 %46)
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  store %struct.vm_area_struct* %48, %struct.vm_area_struct** %3, align 8
  br label %61

49:                                               ; preds = %39, %33
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @VMACACHE_SIZE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %50
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %18

60:                                               ; preds = %18
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %3, align 8
  br label %61

61:                                               ; preds = %60, %45, %16
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  ret %struct.vm_area_struct* %62
}

declare dso_local i32 @VMACACHE_HASH(i64) #1

declare dso_local i32 @count_vm_vmacache_event(i32) #1

declare dso_local i32 @vmacache_valid(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
