; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_cld_running.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_cld_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_net = type { %struct.cld_net* }
%struct.cld_net = type { %struct.rpc_pipe* }
%struct.rpc_pipe = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd_net*)* @cld_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cld_running(%struct.nfsd_net* %0) #0 {
  %2 = alloca %struct.nfsd_net*, align 8
  %3 = alloca %struct.cld_net*, align 8
  %4 = alloca %struct.rpc_pipe*, align 8
  store %struct.nfsd_net* %0, %struct.nfsd_net** %2, align 8
  %5 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %6 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %5, i32 0, i32 0
  %7 = load %struct.cld_net*, %struct.cld_net** %6, align 8
  store %struct.cld_net* %7, %struct.cld_net** %3, align 8
  %8 = load %struct.cld_net*, %struct.cld_net** %3, align 8
  %9 = getelementptr inbounds %struct.cld_net, %struct.cld_net* %8, i32 0, i32 0
  %10 = load %struct.rpc_pipe*, %struct.rpc_pipe** %9, align 8
  store %struct.rpc_pipe* %10, %struct.rpc_pipe** %4, align 8
  %11 = load %struct.rpc_pipe*, %struct.rpc_pipe** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.rpc_pipe*, %struct.rpc_pipe** %4, align 8
  %17 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i1 [ true, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
