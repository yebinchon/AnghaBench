; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_clients_exit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_clients_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfs_net = type { i32, i32 }

@nfs_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_clients_exit(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.nfs_net*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load %struct.net*, %struct.net** %2, align 8
  %5 = load i32, i32* @nfs_net_id, align 4
  %6 = call %struct.nfs_net* @net_generic(%struct.net* %4, i32 %5)
  store %struct.nfs_net* %6, %struct.nfs_net** %3, align 8
  %7 = load %struct.nfs_net*, %struct.nfs_net** %3, align 8
  %8 = call i32 @nfs_netns_sysfs_destroy(%struct.nfs_net* %7)
  %9 = load %struct.net*, %struct.net** %2, align 8
  %10 = call i32 @nfs_cleanup_cb_ident_idr(%struct.net* %9)
  %11 = load %struct.nfs_net*, %struct.nfs_net** %3, align 8
  %12 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %11, i32 0, i32 1
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load %struct.nfs_net*, %struct.nfs_net** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_net, %struct.nfs_net* %18, i32 0, i32 0
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON_ONCE(i32 %23)
  ret void
}

declare dso_local %struct.nfs_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @nfs_netns_sysfs_destroy(%struct.nfs_net*) #1

declare dso_local i32 @nfs_cleanup_cb_ident_idr(%struct.net*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
