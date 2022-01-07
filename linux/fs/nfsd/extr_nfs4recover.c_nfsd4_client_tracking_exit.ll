; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_client_tracking_exit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_client_tracking_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfsd_net = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net*)* }

@nfsd_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd4_client_tracking_exit(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.nfsd_net*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load %struct.net*, %struct.net** %2, align 8
  %5 = load i32, i32* @nfsd_net_id, align 4
  %6 = call %struct.nfsd_net* @net_generic(%struct.net* %4, i32 %5)
  store %struct.nfsd_net* %6, %struct.nfsd_net** %3, align 8
  %7 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %8 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %13 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.net*)*, i32 (%struct.net*)** %15, align 8
  %17 = icmp ne i32 (%struct.net*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %20 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.net*)*, i32 (%struct.net*)** %22, align 8
  %24 = load %struct.net*, %struct.net** %2, align 8
  %25 = call i32 %23(%struct.net* %24)
  br label %26

26:                                               ; preds = %18, %11
  %27 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %28 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %27, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %28, align 8
  br label %29

29:                                               ; preds = %26, %1
  ret void
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
