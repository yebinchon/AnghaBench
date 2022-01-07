; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_add_to_unconfirmed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_add_to_unconfirmed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfsd_net = type { i32*, i32, i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@NFSD4_CLIENT_CONFIRMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_client*)* @add_to_unconfirmed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_unconfirmed(%struct.nfs4_client* %0) #0 {
  %2 = alloca %struct.nfs4_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd_net*, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %2, align 8
  %5 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @nfsd_net_id, align 4
  %9 = call %struct.nfsd_net* @net_generic(i32 %7, i32 %8)
  store %struct.nfsd_net* %9, %struct.nfsd_net** %4, align 8
  %10 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %11 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %10, i32 0, i32 2
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load i32, i32* @NFSD4_CLIENT_CONFIRMED, align 4
  %14 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %15 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %14, i32 0, i32 2
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %18 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %19 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %18, i32 0, i32 1
  %20 = call i32 @add_clp_to_name_tree(%struct.nfs4_client* %17, i32* %19)
  %21 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %22 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clientid_hashval(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %27 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %26, i32 0, i32 0
  %28 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %29 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @list_add(i32* %27, i32* %33)
  %35 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %36 = call i32 @renew_client_locked(%struct.nfs4_client* %35)
  ret void
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @add_clp_to_name_tree(%struct.nfs4_client*, i32*) #1

declare dso_local i32 @clientid_hashval(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @renew_client_locked(%struct.nfs4_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
