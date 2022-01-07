; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_mremap_userfaultfd_prep.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_mremap_userfaultfd_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.userfaultfd_ctx* }
%struct.userfaultfd_ctx = type { i32, i32 }
%struct.vm_area_struct = type { i32, %struct.TYPE_2__ }
%struct.vm_userfaultfd_ctx = type { %struct.userfaultfd_ctx* }

@UFFD_FEATURE_EVENT_REMAP = common dso_local global i32 0, align 4
@NULL_VM_UFFD_CTX = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@VM_UFFD_WP = common dso_local global i32 0, align 4
@VM_UFFD_MISSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mremap_userfaultfd_prep(%struct.vm_area_struct* %0, %struct.vm_userfaultfd_ctx* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.vm_userfaultfd_ctx*, align 8
  %5 = alloca %struct.userfaultfd_ctx*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.vm_userfaultfd_ctx* %1, %struct.vm_userfaultfd_ctx** %4, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %8, align 8
  store %struct.userfaultfd_ctx* %9, %struct.userfaultfd_ctx** %5, align 8
  %10 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %11 = icmp ne %struct.userfaultfd_ctx* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @UFFD_FEATURE_EVENT_REMAP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %22 = load %struct.vm_userfaultfd_ctx*, %struct.vm_userfaultfd_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.vm_userfaultfd_ctx, %struct.vm_userfaultfd_ctx* %22, i32 0, i32 0
  store %struct.userfaultfd_ctx* %21, %struct.userfaultfd_ctx** %23, align 8
  %24 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %25 = call i32 @userfaultfd_ctx_get(%struct.userfaultfd_ctx* %24)
  %26 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @WRITE_ONCE(i32 %28, i32 1)
  br label %42

30:                                               ; preds = %13
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 1
  %33 = bitcast %struct.TYPE_2__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 bitcast (%struct.TYPE_2__* @NULL_VM_UFFD_CTX to i8*), i64 8, i1 false)
  %34 = load i32, i32* @VM_UFFD_WP, align 4
  %35 = load i32, i32* @VM_UFFD_MISSING, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %12, %30, %20
  ret void
}

declare dso_local i32 @userfaultfd_ctx_get(%struct.userfaultfd_ctx*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
