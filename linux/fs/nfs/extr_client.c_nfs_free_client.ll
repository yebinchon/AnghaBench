; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_free_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_free_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { %struct.nfs_client*, %struct.nfs_client*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_free_client(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  %3 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %4 = call i32 @nfs_fscache_release_client_cookie(%struct.nfs_client* %3)
  %5 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %6 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @IS_ERR(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %12 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @rpc_shutdown_client(i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %17 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @put_net(i32 %18)
  %20 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %21 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @put_nfs_version(i32 %22)
  %24 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %25 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %24, i32 0, i32 1
  %26 = load %struct.nfs_client*, %struct.nfs_client** %25, align 8
  %27 = call i32 @kfree(%struct.nfs_client* %26)
  %28 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %29 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %28, i32 0, i32 0
  %30 = load %struct.nfs_client*, %struct.nfs_client** %29, align 8
  %31 = call i32 @kfree(%struct.nfs_client* %30)
  %32 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %33 = call i32 @kfree(%struct.nfs_client* %32)
  ret void
}

declare dso_local i32 @nfs_fscache_release_client_cookie(%struct.nfs_client*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @rpc_shutdown_client(i32) #1

declare dso_local i32 @put_net(i32) #1

declare dso_local i32 @put_nfs_version(i32) #1

declare dso_local i32 @kfree(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
