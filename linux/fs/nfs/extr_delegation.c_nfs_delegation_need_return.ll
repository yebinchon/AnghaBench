; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_delegation_need_return.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_delegation_need_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_delegation = type { i32, %struct.inode*, i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NFS_DELEGATION_RETURNING = common dso_local global i32 0, align 4
@NFS_DELEGATION_RETURN = common dso_local global i32 0, align 4
@NFS_DELEGATION_RETURN_IF_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_delegation*)* @nfs_delegation_need_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_delegation_need_return(%struct.nfs_delegation* %0) #0 {
  %2 = alloca %struct.nfs_delegation*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  store %struct.nfs_delegation* %0, %struct.nfs_delegation** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @NFS_DELEGATION_RETURNING, align 4
  %6 = load %struct.nfs_delegation*, %struct.nfs_delegation** %2, align 8
  %7 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %6, i32 0, i32 2
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load i32, i32* @NFS_DELEGATION_RETURN, align 4
  %13 = load %struct.nfs_delegation*, %struct.nfs_delegation** %2, align 8
  %14 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %13, i32 0, i32 2
  %15 = call i64 @test_and_clear_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i32, i32* @NFS_DELEGATION_RETURN_IF_CLOSED, align 4
  %20 = load %struct.nfs_delegation*, %struct.nfs_delegation** %2, align 8
  %21 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %20, i32 0, i32 2
  %22 = call i64 @test_and_clear_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %24
  %28 = load %struct.nfs_delegation*, %struct.nfs_delegation** %2, align 8
  %29 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.nfs_delegation*, %struct.nfs_delegation** %2, align 8
  %32 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %31, i32 0, i32 1
  %33 = load %struct.inode*, %struct.inode** %32, align 8
  store %struct.inode* %33, %struct.inode** %4, align 8
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = icmp ne %struct.inode* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i64 @list_empty(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %36, %27
  %44 = load %struct.nfs_delegation*, %struct.nfs_delegation** %2, align 8
  %45 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  br label %47

47:                                               ; preds = %43, %24, %18
  br label %48

48:                                               ; preds = %47, %10
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
