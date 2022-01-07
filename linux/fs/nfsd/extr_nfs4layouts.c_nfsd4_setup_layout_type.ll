; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_nfsd4_setup_layout_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_nfsd4_setup_layout_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.super_block* }
%struct.super_block = type { %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64, i64 }

@NFSEXP_PNFS = common dso_local global i32 0, align 4
@LAYOUT_BLOCK_VOLUME = common dso_local global i32 0, align 4
@LAYOUT_FLEX_FILES = common dso_local global i32 0, align 4
@LAYOUT_SCSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd4_setup_layout_type(%struct.svc_export* %0) #0 {
  %2 = alloca %struct.svc_export*, align 8
  store %struct.svc_export* %0, %struct.svc_export** %2, align 8
  %3 = load %struct.svc_export*, %struct.svc_export** %2, align 8
  %4 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @NFSEXP_PNFS, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
