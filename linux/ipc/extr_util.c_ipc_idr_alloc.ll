; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_idr_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_idr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_ids = type { i32, i32, i32, i64, i32 }
%struct.kern_ipc_perm = type { i64, i32 }

@ipc_min_cycle = common dso_local global i32 0, align 4
@ipc_mni = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipc_ids*, %struct.kern_ipc_perm*)* @ipc_idr_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_idr_alloc(%struct.ipc_ids* %0, %struct.kern_ipc_perm* %1) #0 {
  %3 = alloca %struct.ipc_ids*, align 8
  %4 = alloca %struct.kern_ipc_perm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipc_ids* %0, %struct.ipc_ids** %3, align 8
  store %struct.kern_ipc_perm* %1, %struct.kern_ipc_perm** %4, align 8
  store i32 -1, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %63

10:                                               ; preds = %2
  %11 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %12 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 3
  %15 = sdiv i32 %14, 2
  %16 = load i32, i32* @ipc_min_cycle, align 4
  %17 = call i32 @max(i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @ipc_mni, align 4
  %20 = call i32 @min(i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %22 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %21, i32 0, i32 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @GFP_NOWAIT, align 4
  %25 = call i32 @idr_alloc_cyclic(i32* %22, i32* null, i32 0, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %10
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %31 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %36 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %40 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = call i64 (...) @ipcid_seq_max()
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %46 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %34
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %51 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %53 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %56 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %58 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %57, i32 0, i32 4
  %59 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @idr_replace(i32* %58, %struct.kern_ipc_perm* %59, i32 %60)
  br label %62

62:                                               ; preds = %48, %10
  br label %75

63:                                               ; preds = %2
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @ipcid_to_seqx(i32 %64)
  %66 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %67 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %69 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %68, i32 0, i32 4
  %70 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @ipcid_to_idx(i32 %71)
  %73 = load i32, i32* @GFP_NOWAIT, align 4
  %74 = call i32 @idr_alloc(i32* %69, %struct.kern_ipc_perm* %70, i32 %72, i32 0, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %63, %62
  %76 = load i32, i32* %5, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %80 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (...) @ipcmni_seq_shift()
  %83 = zext i32 %82 to i64
  %84 = shl i64 %81, %83
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = trunc i64 %87 to i32
  %89 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %90 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %78, %75
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @ipcid_seq_max(...) #1

declare dso_local i32 @idr_replace(i32*, %struct.kern_ipc_perm*, i32) #1

declare dso_local i64 @ipcid_to_seqx(i32) #1

declare dso_local i32 @idr_alloc(i32*, %struct.kern_ipc_perm*, i32, i32, i32) #1

declare dso_local i32 @ipcid_to_idx(i32) #1

declare dso_local i32 @ipcmni_seq_shift(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
