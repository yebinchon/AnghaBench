; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfaultfd_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfaultfd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.userfaultfd_ctx* }
%struct.userfaultfd_ctx = type { i32, i32, %struct.TYPE_5__, i32, i32, %struct.mm_struct* }
%struct.TYPE_5__ = type { i32 }
%struct.mm_struct = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.vm_area_struct* }
%struct.inode = type { i32 }
%struct.file = type { %struct.userfaultfd_ctx* }
%struct.userfaultfd_wake_range = type { i32 }

@VM_UFFD_MISSING = common dso_local global i64 0, align 8
@VM_UFFD_WP = common dso_local global i64 0, align 8
@NULL_VM_UFFD_CTX = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TASK_NORMAL = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @userfaultfd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userfaultfd_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.userfaultfd_ctx*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca %struct.userfaultfd_wake_range, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %13, align 8
  store %struct.userfaultfd_ctx* %14, %struct.userfaultfd_ctx** %5, align 8
  %15 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %15, i32 0, i32 5
  %17 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  store %struct.mm_struct* %17, %struct.mm_struct** %6, align 8
  %18 = bitcast %struct.userfaultfd_wake_range* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @WRITE_ONCE(i32 %21, i32 1)
  %23 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %24 = call i32 @mmget_not_zero(%struct.mm_struct* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %129

27:                                               ; preds = %2
  %28 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %29 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %28, i32 0, i32 0
  %30 = call i32 @down_write(i32* %29)
  %31 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %32 = call i32 @mmget_still_valid(%struct.mm_struct* %31)
  store i32 %32, i32* %11, align 4
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %8, align 8
  %33 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 1
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %34, align 8
  store %struct.vm_area_struct* %35, %struct.vm_area_struct** %7, align 8
  br label %36

36:                                               ; preds = %119, %27
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %38 = icmp ne %struct.vm_area_struct* %37, null
  br i1 %38, label %39, label %123

39:                                               ; preds = %36
  %40 = call i32 (...) @cond_resched()
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %43, align 8
  %45 = icmp ne %struct.userfaultfd_ctx* %44, null
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VM_UFFD_MISSING, align 8
  %53 = load i64, i64* @VM_UFFD_WP, align 8
  %54 = or i64 %52, %53
  %55 = and i64 %51, %54
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = xor i32 %48, %59
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %64, align 8
  %66 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %67 = icmp ne %struct.userfaultfd_ctx* %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %39
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %69, %struct.vm_area_struct** %8, align 8
  br label %119

70:                                               ; preds = %39
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @VM_UFFD_MISSING, align 8
  %75 = load i64, i64* @VM_UFFD_WP, align 8
  %76 = or i64 %74, %75
  %77 = xor i64 %76, -1
  %78 = and i64 %73, %77
  store i64 %78, i64* %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %70
  %82 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %95 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %98 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %101 = call i32 @vma_policy(%struct.vm_area_struct* %100)
  %102 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @NULL_VM_UFFD_CTX, i32 0, i32 0), align 8
  %103 = ptrtoint %struct.userfaultfd_ctx* %102 to i64
  %104 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %82, %struct.vm_area_struct* %83, i32 %86, i32 %89, i64 %90, i32 %93, i32 %96, i32 %99, i32 %101, i64 %103)
  store %struct.vm_area_struct* %104, %struct.vm_area_struct** %8, align 8
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %106 = icmp ne %struct.vm_area_struct* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %81
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  store %struct.vm_area_struct* %108, %struct.vm_area_struct** %7, align 8
  br label %111

109:                                              ; preds = %81
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %110, %struct.vm_area_struct** %8, align 8
  br label %111

111:                                              ; preds = %109, %107
  br label %112

112:                                              ; preds = %111, %70
  %113 = load i64, i64* %10, align 8
  %114 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %115 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %117 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %116, i32 0, i32 1
  %118 = bitcast %struct.TYPE_4__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 bitcast (%struct.TYPE_4__* @NULL_VM_UFFD_CTX to i8*), i64 8, i1 false)
  br label %119

119:                                              ; preds = %112, %68
  %120 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %121 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %120, i32 0, i32 7
  %122 = load %struct.vm_area_struct*, %struct.vm_area_struct** %121, align 8
  store %struct.vm_area_struct* %122, %struct.vm_area_struct** %7, align 8
  br label %36

123:                                              ; preds = %36
  %124 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %125 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %124, i32 0, i32 0
  %126 = call i32 @up_write(i32* %125)
  %127 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %128 = call i32 @mmput(%struct.mm_struct* %127)
  br label %129

129:                                              ; preds = %123, %26
  %130 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %131 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = call i32 @spin_lock_irq(i32* %132)
  %134 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %135 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %134, i32 0, i32 2
  %136 = load i32, i32* @TASK_NORMAL, align 4
  %137 = call i32 @__wake_up_locked_key(%struct.TYPE_5__* %135, i32 %136, %struct.userfaultfd_wake_range* %9)
  %138 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %139 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %138, i32 0, i32 3
  %140 = load i32, i32* @TASK_NORMAL, align 4
  %141 = call i32 @__wake_up(i32* %139, i32 %140, i32 1, %struct.userfaultfd_wake_range* %9)
  %142 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %143 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = call i32 @spin_unlock_irq(i32* %144)
  %146 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %147 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %146, i32 0, i32 1
  %148 = call i32 @wake_up_all(i32* %147)
  %149 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %150 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %149, i32 0, i32 0
  %151 = load i32, i32* @EPOLLHUP, align 4
  %152 = call i32 @wake_up_poll(i32* %150, i32 %151)
  %153 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %154 = call i32 @userfaultfd_ctx_put(%struct.userfaultfd_ctx* %153)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #2

declare dso_local i32 @mmget_not_zero(%struct.mm_struct*) #2

declare dso_local i32 @down_write(i32*) #2

declare dso_local i32 @mmget_still_valid(%struct.mm_struct*) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i32, i32, i64, i32, i32, i32, i32, i64) #2

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @up_write(i32*) #2

declare dso_local i32 @mmput(%struct.mm_struct*) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @__wake_up_locked_key(%struct.TYPE_5__*, i32, %struct.userfaultfd_wake_range*) #2

declare dso_local i32 @__wake_up(i32*, i32, i32, %struct.userfaultfd_wake_range*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @wake_up_all(i32*) #2

declare dso_local i32 @wake_up_poll(i32*, i32) #2

declare dso_local i32 @userfaultfd_ctx_put(%struct.userfaultfd_ctx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
