; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_host.c_nlm_host_rebooted.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_host.c_nlm_host_rebooted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlm_reboot = type { i32 }
%struct.nsm_handle = type { i32 }
%struct.nlm_host = type { i32 }

@nlm_server_hosts = common dso_local global i32 0, align 4
@nlm_client_hosts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_host_rebooted(%struct.net* %0, %struct.nlm_reboot* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.nlm_reboot*, align 8
  %5 = alloca %struct.nsm_handle*, align 8
  %6 = alloca %struct.nlm_host*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.nlm_reboot* %1, %struct.nlm_reboot** %4, align 8
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = load %struct.nlm_reboot*, %struct.nlm_reboot** %4, align 8
  %9 = call %struct.nsm_handle* @nsm_reboot_lookup(%struct.net* %7, %struct.nlm_reboot* %8)
  store %struct.nsm_handle* %9, %struct.nsm_handle** %5, align 8
  %10 = load %struct.nsm_handle*, %struct.nsm_handle** %5, align 8
  %11 = icmp eq %struct.nsm_handle* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %43

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %23, %16
  %18 = load i32, i32* @nlm_server_hosts, align 4
  %19 = load %struct.nsm_handle*, %struct.nsm_handle** %5, align 8
  %20 = load %struct.nlm_reboot*, %struct.nlm_reboot** %4, align 8
  %21 = call %struct.nlm_host* @next_host_state(i32 %18, %struct.nsm_handle* %19, %struct.nlm_reboot* %20)
  store %struct.nlm_host* %21, %struct.nlm_host** %6, align 8
  %22 = icmp ne %struct.nlm_host* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.nlm_host*, %struct.nlm_host** %6, align 8
  %25 = call i32 @nlmsvc_free_host_resources(%struct.nlm_host* %24)
  %26 = load %struct.nlm_host*, %struct.nlm_host** %6, align 8
  %27 = call i32 @nlmsvc_release_host(%struct.nlm_host* %26)
  br label %17

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %35, %28
  %30 = load i32, i32* @nlm_client_hosts, align 4
  %31 = load %struct.nsm_handle*, %struct.nsm_handle** %5, align 8
  %32 = load %struct.nlm_reboot*, %struct.nlm_reboot** %4, align 8
  %33 = call %struct.nlm_host* @next_host_state(i32 %30, %struct.nsm_handle* %31, %struct.nlm_reboot* %32)
  store %struct.nlm_host* %33, %struct.nlm_host** %6, align 8
  %34 = icmp ne %struct.nlm_host* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.nlm_host*, %struct.nlm_host** %6, align 8
  %37 = call i32 @nlmclnt_recovery(%struct.nlm_host* %36)
  %38 = load %struct.nlm_host*, %struct.nlm_host** %6, align 8
  %39 = call i32 @nlmclnt_release_host(%struct.nlm_host* %38)
  br label %29

40:                                               ; preds = %29
  %41 = load %struct.nsm_handle*, %struct.nsm_handle** %5, align 8
  %42 = call i32 @nsm_release(%struct.nsm_handle* %41)
  br label %43

43:                                               ; preds = %40, %15
  ret void
}

declare dso_local %struct.nsm_handle* @nsm_reboot_lookup(%struct.net*, %struct.nlm_reboot*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.nlm_host* @next_host_state(i32, %struct.nsm_handle*, %struct.nlm_reboot*) #1

declare dso_local i32 @nlmsvc_free_host_resources(%struct.nlm_host*) #1

declare dso_local i32 @nlmsvc_release_host(%struct.nlm_host*) #1

declare dso_local i32 @nlmclnt_recovery(%struct.nlm_host*) #1

declare dso_local i32 @nlmclnt_release_host(%struct.nlm_host*) #1

declare dso_local i32 @nsm_release(%struct.nsm_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
