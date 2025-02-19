; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_layout_update_len.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_layout_update_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_layout_seg = type { i64, i64 }

@NFS4_MAX_UINT64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_layout_seg*, i64)* @layout_update_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @layout_update_len(%struct.nfsd4_layout_seg* %0, i64 %1) #0 {
  %3 = alloca %struct.nfsd4_layout_seg*, align 8
  %4 = alloca i64, align 8
  store %struct.nfsd4_layout_seg* %0, %struct.nfsd4_layout_seg** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NFS4_MAX_UINT64, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, i64* @NFS4_MAX_UINT64, align 8
  %10 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %3, align 8
  %11 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %10, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  br label %20

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %3, align 8
  %15 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %3, align 8
  %19 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %12, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
