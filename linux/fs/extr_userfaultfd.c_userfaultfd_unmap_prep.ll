; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfaultfd_unmap_prep.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfaultfd_unmap_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, %struct.TYPE_2__, %struct.vm_area_struct* }
%struct.TYPE_2__ = type { %struct.userfaultfd_ctx* }
%struct.userfaultfd_ctx = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.userfaultfd_unmap_ctx = type { i64, i64, i32, %struct.userfaultfd_ctx* }

@UFFD_FEATURE_EVENT_UNMAP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @userfaultfd_unmap_prep(%struct.vm_area_struct* %0, i64 %1, i64 %2, %struct.list_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.userfaultfd_unmap_ctx*, align 8
  %11 = alloca %struct.userfaultfd_ctx*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  br label %12

12:                                               ; preds = %73, %4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %14 = icmp ne %struct.vm_area_struct* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ult i64 %18, %19
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i1 [ false, %12 ], [ %20, %15 ]
  br i1 %22, label %23, label %77

23:                                               ; preds = %21
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %26, align 8
  store %struct.userfaultfd_ctx* %27, %struct.userfaultfd_ctx** %11, align 8
  %28 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %11, align 8
  %29 = icmp ne %struct.userfaultfd_ctx* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %11, align 8
  %32 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UFFD_FEATURE_EVENT_UNMAP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %11, align 8
  %39 = load %struct.list_head*, %struct.list_head** %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @has_unmap_ctx(%struct.userfaultfd_ctx* %38, %struct.list_head* %39, i64 %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %30, %23
  br label %73

45:                                               ; preds = %37
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.userfaultfd_unmap_ctx* @kzalloc(i32 32, i32 %46)
  store %struct.userfaultfd_unmap_ctx* %47, %struct.userfaultfd_unmap_ctx** %10, align 8
  %48 = load %struct.userfaultfd_unmap_ctx*, %struct.userfaultfd_unmap_ctx** %10, align 8
  %49 = icmp ne %struct.userfaultfd_unmap_ctx* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %78

53:                                               ; preds = %45
  %54 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %11, align 8
  %55 = call i32 @userfaultfd_ctx_get(%struct.userfaultfd_ctx* %54)
  %56 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %11, align 8
  %57 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @WRITE_ONCE(i32 %58, i32 1)
  %60 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %11, align 8
  %61 = load %struct.userfaultfd_unmap_ctx*, %struct.userfaultfd_unmap_ctx** %10, align 8
  %62 = getelementptr inbounds %struct.userfaultfd_unmap_ctx, %struct.userfaultfd_unmap_ctx* %61, i32 0, i32 3
  store %struct.userfaultfd_ctx* %60, %struct.userfaultfd_ctx** %62, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.userfaultfd_unmap_ctx*, %struct.userfaultfd_unmap_ctx** %10, align 8
  %65 = getelementptr inbounds %struct.userfaultfd_unmap_ctx, %struct.userfaultfd_unmap_ctx* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.userfaultfd_unmap_ctx*, %struct.userfaultfd_unmap_ctx** %10, align 8
  %68 = getelementptr inbounds %struct.userfaultfd_unmap_ctx, %struct.userfaultfd_unmap_ctx* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.userfaultfd_unmap_ctx*, %struct.userfaultfd_unmap_ctx** %10, align 8
  %70 = getelementptr inbounds %struct.userfaultfd_unmap_ctx, %struct.userfaultfd_unmap_ctx* %69, i32 0, i32 2
  %71 = load %struct.list_head*, %struct.list_head** %9, align 8
  %72 = call i32 @list_add_tail(i32* %70, %struct.list_head* %71)
  br label %73

73:                                               ; preds = %53, %44
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 2
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %75, align 8
  store %struct.vm_area_struct* %76, %struct.vm_area_struct** %6, align 8
  br label %12

77:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %50
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @has_unmap_ctx(%struct.userfaultfd_ctx*, %struct.list_head*, i64, i64) #1

declare dso_local %struct.userfaultfd_unmap_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @userfaultfd_ctx_get(%struct.userfaultfd_ctx*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
