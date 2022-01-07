; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_mon.c_nsm_reboot_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_mon.c_nsm_reboot_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsm_handle = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.nlm_reboot = type { i32, i32, i32 }
%struct.lockd_net = type { i32 }

@lockd_net_id = common dso_local global i32 0, align 4
@nsm_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"lockd: never saw rebooted peer '%.*s' before\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"lockd: host %s (%s) rebooted, cnt %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nsm_handle* @nsm_reboot_lookup(%struct.net* %0, %struct.nlm_reboot* %1) #0 {
  %3 = alloca %struct.nsm_handle*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nlm_reboot*, align 8
  %6 = alloca %struct.nsm_handle*, align 8
  %7 = alloca %struct.lockd_net*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nlm_reboot* %1, %struct.nlm_reboot** %5, align 8
  %8 = load %struct.net*, %struct.net** %4, align 8
  %9 = load i32, i32* @lockd_net_id, align 4
  %10 = call %struct.lockd_net* @net_generic(%struct.net* %8, i32 %9)
  store %struct.lockd_net* %10, %struct.lockd_net** %7, align 8
  %11 = call i32 @spin_lock(i32* @nsm_lock)
  %12 = load %struct.lockd_net*, %struct.lockd_net** %7, align 8
  %13 = getelementptr inbounds %struct.lockd_net, %struct.lockd_net* %12, i32 0, i32 0
  %14 = load %struct.nlm_reboot*, %struct.nlm_reboot** %5, align 8
  %15 = getelementptr inbounds %struct.nlm_reboot, %struct.nlm_reboot* %14, i32 0, i32 2
  %16 = call %struct.nsm_handle* @nsm_lookup_priv(i32* %13, i32* %15)
  store %struct.nsm_handle* %16, %struct.nsm_handle** %6, align 8
  %17 = load %struct.nsm_handle*, %struct.nsm_handle** %6, align 8
  %18 = icmp eq %struct.nsm_handle* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = call i32 @spin_unlock(i32* @nsm_lock)
  %24 = load %struct.nlm_reboot*, %struct.nlm_reboot** %5, align 8
  %25 = getelementptr inbounds %struct.nlm_reboot, %struct.nlm_reboot* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nlm_reboot*, %struct.nlm_reboot** %5, align 8
  %28 = getelementptr inbounds %struct.nlm_reboot, %struct.nlm_reboot* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.nsm_handle*, %struct.nsm_handle** %6, align 8
  store %struct.nsm_handle* %31, %struct.nsm_handle** %3, align 8
  br label %48

32:                                               ; preds = %2
  %33 = load %struct.nsm_handle*, %struct.nsm_handle** %6, align 8
  %34 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %33, i32 0, i32 0
  %35 = call i32 @refcount_inc(i32* %34)
  %36 = call i32 @spin_unlock(i32* @nsm_lock)
  %37 = load %struct.nsm_handle*, %struct.nsm_handle** %6, align 8
  %38 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nsm_handle*, %struct.nsm_handle** %6, align 8
  %41 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nsm_handle*, %struct.nsm_handle** %6, align 8
  %44 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %43, i32 0, i32 0
  %45 = call i32 @refcount_read(i32* %44)
  %46 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42, i32 %45)
  %47 = load %struct.nsm_handle*, %struct.nsm_handle** %6, align 8
  store %struct.nsm_handle* %47, %struct.nsm_handle** %3, align 8
  br label %48

48:                                               ; preds = %32, %22
  %49 = load %struct.nsm_handle*, %struct.nsm_handle** %3, align 8
  ret %struct.nsm_handle* %49
}

declare dso_local %struct.lockd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nsm_handle* @nsm_lookup_priv(i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, ...) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
