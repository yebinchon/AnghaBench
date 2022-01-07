; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_write_prepare_v3.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_write_prepare_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_pgio_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @ff_layout_write_prepare_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_write_prepare_v3(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.nfs_pgio_header*
  store %struct.nfs_pgio_header* %7, %struct.nfs_pgio_header** %5, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %9 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %10 = call i64 @ff_layout_write_prepare_common(%struct.rpc_task* %8, %struct.nfs_pgio_header* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %15 = call i32 @rpc_call_start(%struct.rpc_task* %14)
  br label %16

16:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @ff_layout_write_prepare_common(%struct.rpc_task*, %struct.nfs_pgio_header*) #1

declare dso_local i32 @rpc_call_start(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
