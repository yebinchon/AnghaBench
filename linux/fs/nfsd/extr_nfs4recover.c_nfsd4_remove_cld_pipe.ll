; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_remove_cld_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_remove_cld_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfsd_net = type { %struct.cld_net* }
%struct.cld_net = type { i64, i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @nfsd4_remove_cld_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_remove_cld_pipe(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.nfsd_net*, align 8
  %4 = alloca %struct.cld_net*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %5 = load %struct.net*, %struct.net** %2, align 8
  %6 = load i32, i32* @nfsd_net_id, align 4
  %7 = call %struct.nfsd_net* @net_generic(%struct.net* %5, i32 %6)
  store %struct.nfsd_net* %7, %struct.nfsd_net** %3, align 8
  %8 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %9 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %8, i32 0, i32 0
  %10 = load %struct.cld_net*, %struct.cld_net** %9, align 8
  store %struct.cld_net* %10, %struct.cld_net** %4, align 8
  %11 = load %struct.net*, %struct.net** %2, align 8
  %12 = load %struct.cld_net*, %struct.cld_net** %4, align 8
  %13 = getelementptr inbounds %struct.cld_net, %struct.cld_net* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @nfsd4_cld_unregister_net(%struct.net* %11, i32 %14)
  %16 = load %struct.cld_net*, %struct.cld_net** %4, align 8
  %17 = getelementptr inbounds %struct.cld_net, %struct.cld_net* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @rpc_destroy_pipe_data(i32 %18)
  %20 = load %struct.cld_net*, %struct.cld_net** %4, align 8
  %21 = getelementptr inbounds %struct.cld_net, %struct.cld_net* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.cld_net*, %struct.cld_net** %4, align 8
  %26 = getelementptr inbounds %struct.cld_net, %struct.cld_net* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @crypto_free_shash(i64 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %31 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %30, i32 0, i32 0
  %32 = load %struct.cld_net*, %struct.cld_net** %31, align 8
  %33 = call i32 @kfree(%struct.cld_net* %32)
  %34 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %35 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %34, i32 0, i32 0
  store %struct.cld_net* null, %struct.cld_net** %35, align 8
  ret void
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @nfsd4_cld_unregister_net(%struct.net*, i32) #1

declare dso_local i32 @rpc_destroy_pipe_data(i32) #1

declare dso_local i32 @crypto_free_shash(i64) #1

declare dso_local i32 @kfree(%struct.cld_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
