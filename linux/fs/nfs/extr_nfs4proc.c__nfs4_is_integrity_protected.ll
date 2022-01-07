; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_is_integrity_protected.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_is_integrity_protected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@RPC_AUTH_GSS_KRB5I = common dso_local global i64 0, align 8
@RPC_AUTH_GSS_KRB5P = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*)* @_nfs4_is_integrity_protected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_is_integrity_protected(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  %3 = alloca i64, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  %4 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @RPC_AUTH_GSS_KRB5I, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @RPC_AUTH_GSS_KRB5P, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %14, %1
  %19 = phi i1 [ true, %1 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
