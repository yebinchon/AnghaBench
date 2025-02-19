; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_init_boot_verifier.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_init_boot_verifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfs_net = type { i32 }

@NFS4CLNT_PURGE_STATE = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@nfs_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_client*, %struct.TYPE_3__*)* @nfs4_init_boot_verifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_init_boot_verifier(%struct.nfs_client* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct.nfs_net*, align 8
  %7 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load i32, i32* @NFS4CLNT_PURGE_STATE, align 4
  %9 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %10 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %9, i32 0, i32 1
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @U32_MAX, align 4
  %15 = call i32 @cpu_to_be32(i32 %14)
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @U32_MAX, align 4
  %18 = call i32 @cpu_to_be32(i32 %17)
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %18, i32* %19, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %22 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @nfs_net_id, align 4
  %25 = call %struct.nfs_net* @net_generic(i32 %23, i32 %24)
  store %struct.nfs_net* %25, %struct.nfs_net** %6, align 8
  %26 = load %struct.nfs_net*, %struct.nfs_net** %6, align 8
  %27 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ktime_to_ns(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 32
  %32 = call i32 @cpu_to_be32(i32 %31)
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @cpu_to_be32(i32 %34)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %20, %13
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %42 = call i32 @memcpy(i32 %40, i32* %41, i32 4)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local %struct.nfs_net* @net_generic(i32, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
