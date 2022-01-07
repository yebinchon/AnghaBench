; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_addid.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_addid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_ids = type { i32, i32, i32, i32 }
%struct.kern_ipc_perm = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@ipc_mni = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IPC_PRIVATE = common dso_local global i64 0, align 8
@ipc_kht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_addid(%struct.ipc_ids* %0, %struct.kern_ipc_perm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipc_ids*, align 8
  %6 = alloca %struct.kern_ipc_perm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipc_ids* %0, %struct.ipc_ids** %5, align 8
  store %struct.kern_ipc_perm* %1, %struct.kern_ipc_perm** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %13 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %12, i32 0, i32 8
  %14 = call i32 @refcount_set(i32* %13, i32 1)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ipc_mni, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ipc_mni, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %3
  %21 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %22 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %107

29:                                               ; preds = %20
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @idr_preload(i32 %30)
  %32 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %33 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %32, i32 0, i32 2
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = call i32 (...) @rcu_read_lock()
  %36 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %37 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %36, i32 0, i32 2
  %38 = call i32 @spin_lock(i32* %37)
  %39 = call i32 @current_euid_egid(i32* %8, i32* %9)
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %42 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %44 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %43, i32 0, i32 7
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %47 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %49 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %48, i32 0, i32 5
  store i32 %45, i32* %49, align 4
  %50 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %51 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %53 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %54 = call i32 @ipc_idr_alloc(%struct.ipc_ids* %52, %struct.kern_ipc_perm* %53)
  store i32 %54, i32* %10, align 4
  %55 = call i32 (...) @idr_preload_end()
  %56 = load i32, i32* %10, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %29
  %59 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %60 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IPC_PRIVATE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %66 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %65, i32 0, i32 3
  %67 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %68 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %67, i32 0, i32 3
  %69 = load i32, i32* @ipc_kht_params, align 4
  %70 = call i32 @rhashtable_insert_fast(i32* %66, i32* %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %75 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %74, i32 0, i32 2
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @idr_remove(i32* %75, i32 %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %73, %64
  br label %80

80:                                               ; preds = %79, %58, %29
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %85 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %87 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %86, i32 0, i32 2
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = call i32 (...) @rcu_read_unlock()
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %107

91:                                               ; preds = %80
  %92 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %93 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %98 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.ipc_ids*, %struct.ipc_ids** %5, align 8
  %104 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %91
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %83, %26
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @current_euid_egid(i32*, i32*) #1

declare dso_local i32 @ipc_idr_alloc(%struct.ipc_ids*, %struct.kern_ipc_perm*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
