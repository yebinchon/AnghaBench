; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_remove_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_remove_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_channel = type { i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__, %struct.ncsi_package* }
%struct.TYPE_3__ = type { %struct.ncsi_channel* }
%struct.TYPE_4__ = type { %struct.ncsi_channel* }
%struct.ncsi_package = type { i32, i32 }

@NCSI_CHANNEL_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncsi_channel*)* @ncsi_remove_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncsi_remove_channel(%struct.ncsi_channel* %0) #0 {
  %2 = alloca %struct.ncsi_channel*, align 8
  %3 = alloca %struct.ncsi_package*, align 8
  %4 = alloca i64, align 8
  store %struct.ncsi_channel* %0, %struct.ncsi_channel** %2, align 8
  %5 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %5, i32 0, i32 5
  %7 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  store %struct.ncsi_package* %7, %struct.ncsi_package** %3, align 8
  %8 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %9 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %13 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.ncsi_channel*, %struct.ncsi_channel** %14, align 8
  %16 = call i32 @kfree(%struct.ncsi_channel* %15)
  %17 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %18 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.ncsi_channel*, %struct.ncsi_channel** %19, align 8
  %21 = call i32 @kfree(%struct.ncsi_channel* %20)
  %22 = load i32, i32* @NCSI_CHANNEL_INACTIVE, align 4
  %23 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %24 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %26 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %25, i32 0, i32 1
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %30 = call i32 @ncsi_stop_channel_monitor(%struct.ncsi_channel* %29)
  %31 = load %struct.ncsi_package*, %struct.ncsi_package** %3, align 8
  %32 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %31, i32 0, i32 0
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %36 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %35, i32 0, i32 0
  %37 = call i32 @list_del_rcu(i32* %36)
  %38 = load %struct.ncsi_package*, %struct.ncsi_package** %3, align 8
  %39 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ncsi_package*, %struct.ncsi_package** %3, align 8
  %43 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %42, i32 0, i32 0
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %47 = call i32 @kfree(%struct.ncsi_channel* %46)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfree(%struct.ncsi_channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ncsi_stop_channel_monitor(%struct.ncsi_channel*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
