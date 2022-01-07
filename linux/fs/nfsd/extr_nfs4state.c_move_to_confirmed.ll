; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_move_to_confirmed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_move_to_confirmed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nfsd_net = type { i32, i32, i32*, i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"NFSD: move_to_confirm nfs4_client %p\0A\00", align 1
@NFSD4_CLIENT_CONFIRMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_client*)* @move_to_confirmed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_to_confirmed(%struct.nfs4_client* %0) #0 {
  %2 = alloca %struct.nfs4_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd_net*, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %2, align 8
  %5 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @clientid_hashval(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %11 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @nfsd_net_id, align 4
  %14 = call %struct.nfsd_net* @net_generic(i32 %12, i32 %13)
  store %struct.nfsd_net* %14, %struct.nfsd_net** %4, align 8
  %15 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %16 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %15, i32 0, i32 3
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %19 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.nfs4_client* %18)
  %20 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %21 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %20, i32 0, i32 2
  %22 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %23 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @list_move(i32* %21, i32* %27)
  %29 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %30 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %29, i32 0, i32 1
  %31 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %32 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %31, i32 0, i32 1
  %33 = call i32 @rb_erase(i32* %30, i32* %32)
  %34 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %35 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %36 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %35, i32 0, i32 0
  %37 = call i32 @add_clp_to_name_tree(%struct.nfs4_client* %34, i32* %36)
  %38 = load i32, i32* @NFSD4_CLIENT_CONFIRMED, align 4
  %39 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %40 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %39, i32 0, i32 0
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  %42 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  %43 = call i32 @renew_client_locked(%struct.nfs4_client* %42)
  ret void
}

declare dso_local i32 @clientid_hashval(i32) #1

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @dprintk(i8*, %struct.nfs4_client*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @add_clp_to_name_tree(%struct.nfs4_client*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @renew_client_locked(%struct.nfs4_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
