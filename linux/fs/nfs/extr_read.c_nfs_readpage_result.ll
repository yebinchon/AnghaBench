; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_readpage_result.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_readpage_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_pgio_header = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@NFS_IOHDR_EOF = common dso_local global i32 0, align 4
@NFS_IOHDR_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.nfs_pgio_header*)* @nfs_readpage_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_readpage_result(%struct.rpc_task* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.nfs_pgio_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %4, align 8
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %14 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add i32 %16, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %24 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %12
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %35 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @NFS_IOHDR_EOF, align 4
  %37 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %38 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %37, i32 0, i32 4
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  %40 = load i32, i32* @NFS_IOHDR_ERROR, align 4
  %41 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %42 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %41, i32 0, i32 4
  %43 = call i32 @clear_bit(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %32, %12
  br label %61

45:                                               ; preds = %2
  %46 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %47 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = zext i32 %49 to i64
  %51 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %52 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %50, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %58 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %59 = call i32 @nfs_readpage_retry(%struct.rpc_task* %57, %struct.nfs_pgio_header* %58)
  br label %60

60:                                               ; preds = %56, %45
  br label %61

61:                                               ; preds = %60, %44
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @nfs_readpage_retry(%struct.rpc_task*, %struct.nfs_pgio_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
