; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_shutdown_net.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_shutdown_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfsd_net = type { i32, i64 }

@nfsd_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @nfsd_shutdown_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd_shutdown_net(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.nfsd_net*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load %struct.net*, %struct.net** %2, align 8
  %5 = load i32, i32* @nfsd_net_id, align 4
  %6 = call %struct.nfsd_net* @net_generic(%struct.net* %4, i32 %5)
  store %struct.nfsd_net* %6, %struct.nfsd_net** %3, align 8
  %7 = load %struct.net*, %struct.net** %2, align 8
  %8 = call i32 @nfsd_file_cache_purge(%struct.net* %7)
  %9 = load %struct.net*, %struct.net** %2, align 8
  %10 = call i32 @nfs4_state_shutdown_net(%struct.net* %9)
  %11 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %12 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.net*, %struct.net** %2, align 8
  %17 = call i32 @lockd_down(%struct.net* %16)
  %18 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %19 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %22 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = call i32 (...) @nfsd_shutdown_generic()
  ret void
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @nfsd_file_cache_purge(%struct.net*) #1

declare dso_local i32 @nfs4_state_shutdown_net(%struct.net*) #1

declare dso_local i32 @lockd_down(%struct.net*) #1

declare dso_local i32 @nfsd_shutdown_generic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
