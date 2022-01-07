; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_update_inplace_delegation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_update_inplace_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_delegation = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_delegation*, %struct.nfs_delegation*)* @nfs_update_inplace_delegation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_update_inplace_delegation(%struct.nfs_delegation* %0, %struct.nfs_delegation* %1) #0 {
  %3 = alloca %struct.nfs_delegation*, align 8
  %4 = alloca %struct.nfs_delegation*, align 8
  store %struct.nfs_delegation* %0, %struct.nfs_delegation** %3, align 8
  store %struct.nfs_delegation* %1, %struct.nfs_delegation** %4, align 8
  %5 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %6 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %5, i32 0, i32 1
  %7 = load %struct.nfs_delegation*, %struct.nfs_delegation** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %7, i32 0, i32 1
  %9 = call i64 @nfs4_stateid_is_newer(%struct.TYPE_3__* %6, %struct.TYPE_3__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %13 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nfs_delegation*, %struct.nfs_delegation** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = call i32 (...) @smp_wmb()
  %20 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nfs_delegation*, %struct.nfs_delegation** %3, align 8
  %24 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %11, %2
  ret void
}

declare dso_local i64 @nfs4_stateid_is_newer(%struct.TYPE_3__*, %struct.TYPE_3__*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
