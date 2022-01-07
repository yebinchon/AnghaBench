; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_layout_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_layout_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_layout_seg = type { i64, i64 }

@NFS4_MAX_UINT64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_layout_seg*)* @layout_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @layout_end(%struct.nfsd4_layout_seg* %0) #0 {
  %2 = alloca %struct.nfsd4_layout_seg*, align 8
  %3 = alloca i64, align 8
  store %struct.nfsd4_layout_seg* %0, %struct.nfsd4_layout_seg** %2, align 8
  %4 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %2, align 8
  %5 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %2, align 8
  %8 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %2, align 8
  %13 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  br label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @NFS4_MAX_UINT64, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  ret i64 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
