; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_end_delegation_return.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_end_delegation_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_delegation = type { i32, i32, i32 }
%struct.nfs_client = type { i32 }
%struct.nfs_inode = type { i32 }
%struct.TYPE_3__ = type { %struct.nfs_client* }

@NFS_DELEGATION_REVOKED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_delegation*, i32)* @nfs_end_delegation_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_end_delegation_return(%struct.inode* %0, %struct.nfs_delegation* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs_delegation*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_client*, align 8
  %9 = alloca %struct.nfs_inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.nfs_delegation* %1, %struct.nfs_delegation** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.TYPE_3__* @NFS_SERVER(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.nfs_client*, %struct.nfs_client** %13, align 8
  store %struct.nfs_client* %14, %struct.nfs_client** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.nfs_inode* @NFS_I(%struct.inode* %15)
  store %struct.nfs_inode* %16, %struct.nfs_inode** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %18 = icmp eq %struct.nfs_delegation* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %72

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %47, %20
  %22 = load i32, i32* @NFS_DELEGATION_REVOKED, align 4
  %23 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %23, i32 0, i32 2
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %50

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %31 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %30, i32 0, i32 1
  %32 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %33 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nfs_delegation_claim_opens(%struct.inode* %29, i32* %31, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %28
  br label %50

44:                                               ; preds = %38
  %45 = load %struct.nfs_client*, %struct.nfs_client** %8, align 8
  %46 = call i32 @nfs4_wait_clnt_recover(%struct.nfs_client* %45)
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %21, label %50

50:                                               ; preds = %47, %43, %27
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %55 = load %struct.nfs_client*, %struct.nfs_client** %8, align 8
  %56 = call i32 @nfs_abort_delegation_return(%struct.nfs_delegation* %54, %struct.nfs_client* %55)
  br label %70

57:                                               ; preds = %50
  %58 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %59 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = call %struct.TYPE_3__* @NFS_SERVER(%struct.inode* %60)
  %62 = call i32 @nfs_detach_delegation(%struct.nfs_inode* %58, %struct.nfs_delegation* %59, %struct.TYPE_3__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %70

65:                                               ; preds = %57
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @nfs_do_return_delegation(%struct.inode* %66, %struct.nfs_delegation* %67, i32 %68)
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %65, %64, %53
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %19
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_3__* @NFS_SERVER(%struct.inode*) #1

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs_delegation_claim_opens(%struct.inode*, i32*, i32) #1

declare dso_local i32 @nfs4_wait_clnt_recover(%struct.nfs_client*) #1

declare dso_local i32 @nfs_abort_delegation_return(%struct.nfs_delegation*, %struct.nfs_client*) #1

declare dso_local i32 @nfs_detach_delegation(%struct.nfs_inode*, %struct.nfs_delegation*, %struct.TYPE_3__*) #1

declare dso_local i32 @nfs_do_return_delegation(%struct.inode*, %struct.nfs_delegation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
