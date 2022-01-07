; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_gen_clid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_gen_clid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.nfsd_net = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_client*, %struct.nfsd_net*)* @gen_clid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_clid(%struct.nfs4_client* %0, %struct.nfsd_net* %1) #0 {
  %3 = alloca %struct.nfs4_client*, align 8
  %4 = alloca %struct.nfsd_net*, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %3, align 8
  store %struct.nfsd_net* %1, %struct.nfsd_net** %4, align 8
  %5 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %6 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %9 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 8
  %11 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %12 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = sext i32 %13 to i64
  %16 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %17 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %20 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %21 = call i32 @gen_confirm(%struct.nfs4_client* %19, %struct.nfsd_net* %20)
  ret void
}

declare dso_local i32 @gen_confirm(%struct.nfs4_client*, %struct.nfsd_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
