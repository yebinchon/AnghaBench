; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_delegreturn_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_delegreturn_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_delegreturndata = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.inode* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nfs4_delegreturn_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_delegreturn_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfs4_delegreturndata*, align 8
  %4 = alloca %struct.inode*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.nfs4_delegreturndata*
  store %struct.nfs4_delegreturndata* %6, %struct.nfs4_delegreturndata** %3, align 8
  %7 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %3, align 8
  %8 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %7, i32 0, i32 3
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = icmp ne %struct.inode* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  %13 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %3, align 8
  %14 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %3, align 8
  %20 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %3, align 8
  %23 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %3, align 8
  %26 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pnfs_roc_release(i32* %21, i32* %24, i32 %28)
  br label %30

30:                                               ; preds = %18, %12
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %3, align 8
  %33 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %32, i32 0, i32 0
  %34 = call i32 @nfs_post_op_update_inode_force_wcc(%struct.inode* %31, i32* %33)
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i32 @nfs_iput_and_deactive(%struct.inode* %35)
  br label %37

37:                                               ; preds = %30, %1
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @kfree(i8* %38)
  ret void
}

declare dso_local i32 @pnfs_roc_release(i32*, i32*, i32) #1

declare dso_local i32 @nfs_post_op_update_inode_force_wcc(%struct.inode*, i32*) #1

declare dso_local i32 @nfs_iput_and_deactive(%struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
