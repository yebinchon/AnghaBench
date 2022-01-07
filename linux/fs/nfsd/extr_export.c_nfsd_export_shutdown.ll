; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_nfsd_export_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_nfsd_export_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nfsd_net = type { i32, i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"nfsd: shutting down export module (net: %x).\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"nfsd: export shutdown complete (net: %x).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd_export_shutdown(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.nfsd_net*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load %struct.net*, %struct.net** %2, align 8
  %5 = load i32, i32* @nfsd_net_id, align 4
  %6 = call %struct.nfsd_net* @net_generic(%struct.net* %4, i32 %5)
  store %struct.nfsd_net* %6, %struct.nfsd_net** %3, align 8
  %7 = load %struct.net*, %struct.net** %2, align 8
  %8 = getelementptr inbounds %struct.net, %struct.net* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %13 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.net*, %struct.net** %2, align 8
  %16 = call i32 @cache_unregister_net(i32 %14, %struct.net* %15)
  %17 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %18 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net*, %struct.net** %2, align 8
  %21 = call i32 @cache_unregister_net(i32 %19, %struct.net* %20)
  %22 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %23 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.net*, %struct.net** %2, align 8
  %26 = call i32 @cache_destroy_net(i32 %24, %struct.net* %25)
  %27 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %28 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net*, %struct.net** %2, align 8
  %31 = call i32 @cache_destroy_net(i32 %29, %struct.net* %30)
  %32 = load %struct.net*, %struct.net** %2, align 8
  %33 = call i32 @svcauth_unix_purge(%struct.net* %32)
  %34 = load %struct.net*, %struct.net** %2, align 8
  %35 = getelementptr inbounds %struct.net, %struct.net* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  ret void
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @cache_unregister_net(i32, %struct.net*) #1

declare dso_local i32 @cache_destroy_net(i32, %struct.net*) #1

declare dso_local i32 @svcauth_unix_purge(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
