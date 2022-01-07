; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_can_open_delegated.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_can_open_delegated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_delegation = type { i32, i32 }

@NFS_DELEGATION_NEED_RECLAIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_delegation*, i32, i32)* @can_open_delegated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_open_delegated(%struct.nfs_delegation* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_delegation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfs_delegation* %0, %struct.nfs_delegation** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %9 = icmp eq %struct.nfs_delegation* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

11:                                               ; preds = %3
  %12 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %35

20:                                               ; preds = %11
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %31 [
    i32 129, label %22
    i32 130, label %22
    i32 128, label %23
  ]

22:                                               ; preds = %20, %20
  br label %32

23:                                               ; preds = %20
  %24 = load i32, i32* @NFS_DELEGATION_NEED_RECLAIM, align 4
  %25 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %25, i32 0, i32 1
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %32

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %20, %30
  store i32 0, i32* %4, align 4
  br label %35

32:                                               ; preds = %29, %22
  %33 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %34 = call i32 @nfs_mark_delegation_referenced(%struct.nfs_delegation* %33)
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %31, %19, %10
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs_mark_delegation_referenced(%struct.nfs_delegation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
