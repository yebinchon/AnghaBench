; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_dev.c_nfs4_mark_deviceid_available.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs_dev.c_nfs4_mark_deviceid_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_deviceid_node = type { i32 }

@NFS_DEVICEID_UNAVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_mark_deviceid_available(%struct.nfs4_deviceid_node* %0) #0 {
  %2 = alloca %struct.nfs4_deviceid_node*, align 8
  store %struct.nfs4_deviceid_node* %0, %struct.nfs4_deviceid_node** %2, align 8
  %3 = load i32, i32* @NFS_DEVICEID_UNAVAILABLE, align 4
  %4 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %2, align 8
  %5 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %4, i32 0, i32 0
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @NFS_DEVICEID_UNAVAILABLE, align 4
  %10 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %2, align 8
  %11 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %10, i32 0, i32 0
  %12 = call i32 @clear_bit(i32 %9, i32* %11)
  %13 = call i32 (...) @smp_mb__after_atomic()
  br label %14

14:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
