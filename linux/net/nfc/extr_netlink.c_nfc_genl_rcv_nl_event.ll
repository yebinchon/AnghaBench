; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_rcv_nl_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_rcv_nl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.netlink_notify = type { i64, i32 }
%struct.urelease_work = type { i32 }
%struct.work_struct = type { i32 }

@NETLINK_URELEASE = common dso_local global i64 0, align 8
@NETLINK_GENERIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"NETLINK_URELEASE event from id %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@nfc_urelease_event_work = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @nfc_genl_rcv_nl_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_genl_rcv_nl_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.netlink_notify*, align 8
  %8 = alloca %struct.urelease_work*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.netlink_notify*
  store %struct.netlink_notify* %10, %struct.netlink_notify** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @NETLINK_URELEASE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.netlink_notify*, %struct.netlink_notify** %7, align 8
  %16 = getelementptr inbounds %struct.netlink_notify, %struct.netlink_notify* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NETLINK_GENERIC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  br label %44

21:                                               ; preds = %14
  %22 = load %struct.netlink_notify*, %struct.netlink_notify** %7, align 8
  %23 = getelementptr inbounds %struct.netlink_notify, %struct.netlink_notify* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.urelease_work* @kmalloc(i32 4, i32 %26)
  store %struct.urelease_work* %27, %struct.urelease_work** %8, align 8
  %28 = load %struct.urelease_work*, %struct.urelease_work** %8, align 8
  %29 = icmp ne %struct.urelease_work* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %21
  %31 = load %struct.urelease_work*, %struct.urelease_work** %8, align 8
  %32 = bitcast %struct.urelease_work* %31 to %struct.work_struct*
  %33 = load i32, i32* @nfc_urelease_event_work, align 4
  %34 = call i32 @INIT_WORK(%struct.work_struct* %32, i32 %33)
  %35 = load %struct.netlink_notify*, %struct.netlink_notify** %7, align 8
  %36 = getelementptr inbounds %struct.netlink_notify, %struct.netlink_notify* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.urelease_work*, %struct.urelease_work** %8, align 8
  %39 = getelementptr inbounds %struct.urelease_work, %struct.urelease_work* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.urelease_work*, %struct.urelease_work** %8, align 8
  %41 = bitcast %struct.urelease_work* %40 to %struct.work_struct*
  %42 = call i32 @schedule_work(%struct.work_struct* %41)
  br label %43

43:                                               ; preds = %30, %21
  br label %44

44:                                               ; preds = %43, %20
  %45 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %45
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.urelease_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(%struct.work_struct*, i32) #1

declare dso_local i32 @schedule_work(%struct.work_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
