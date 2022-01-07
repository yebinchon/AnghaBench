; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_rmid.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_rmid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_ids = type { i32, i32, i32 }
%struct.kern_ipc_perm = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_rmid(%struct.ipc_ids* %0, %struct.kern_ipc_perm* %1) #0 {
  %3 = alloca %struct.ipc_ids*, align 8
  %4 = alloca %struct.kern_ipc_perm*, align 8
  %5 = alloca i32, align 4
  store %struct.ipc_ids* %0, %struct.ipc_ids** %3, align 8
  store %struct.kern_ipc_perm* %1, %struct.kern_ipc_perm** %4, align 8
  %6 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %7 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ipcid_to_idx(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %11 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %10, i32 0, i32 1
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @idr_remove(i32* %11, i32 %12)
  %14 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %15 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %16 = call i32 @ipc_kht_remove(%struct.ipc_ids* %14, %struct.kern_ipc_perm* %15)
  %17 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %18 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %22 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %25 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %39, %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %46

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %41 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %40, i32 0, i32 1
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @idr_find(i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %32, label %46

46:                                               ; preds = %39, %37
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %49 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %2
  ret void
}

declare dso_local i32 @ipcid_to_idx(i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @ipc_kht_remove(%struct.ipc_ids*, %struct.kern_ipc_perm*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @idr_find(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
