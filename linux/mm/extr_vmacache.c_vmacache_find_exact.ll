; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmacache.c_vmacache_find_exact.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmacache.c_vmacache_find_exact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vm_area_struct** }
%struct.vm_area_struct = type { i64, i64 }
%struct.mm_struct = type { i32 }

@VMACACHE_FIND_CALLS = common dso_local global i32 0, align 4
@VMACACHE_SIZE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@VMACACHE_FIND_HITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vm_area_struct* @vmacache_find_exact(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @VMACACHE_HASH(i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @VMACACHE_FIND_CALLS, align 4
  %14 = call i32 @count_vm_vmacache_event(i32 %13)
  %15 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %16 = call i32 @vmacache_valid(%struct.mm_struct* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %4, align 8
  br label %62

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %58, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @VMACACHE_SIZE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.vm_area_struct*, %struct.vm_area_struct** %28, i64 %30
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %31, align 8
  store %struct.vm_area_struct* %32, %struct.vm_area_struct** %10, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %34 = icmp ne %struct.vm_area_struct* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %24
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @VMACACHE_FIND_HITS, align 4
  %49 = call i32 @count_vm_vmacache_event(i32 %48)
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  store %struct.vm_area_struct* %50, %struct.vm_area_struct** %4, align 8
  br label %62

51:                                               ; preds = %41, %35, %24
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @VMACACHE_SIZE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %51
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %20

61:                                               ; preds = %20
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %4, align 8
  br label %62

62:                                               ; preds = %61, %47, %18
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  ret %struct.vm_area_struct* %63
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
