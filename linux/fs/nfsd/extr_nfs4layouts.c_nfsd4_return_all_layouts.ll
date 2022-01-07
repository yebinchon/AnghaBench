; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_nfsd4_return_all_layouts.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_nfsd4_return_all_layouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_layout_stateid = type { i32, i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_layout_stateid*, %struct.list_head*)* @nfsd4_return_all_layouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_return_all_layouts(%struct.nfs4_layout_stateid* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.nfs4_layout_stateid*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.nfs4_layout_stateid* %0, %struct.nfs4_layout_stateid** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %5 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %6 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %9 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %8, i32 0, i32 1
  %10 = load %struct.list_head*, %struct.list_head** %4, align 8
  %11 = call i32 @list_splice_init(i32* %9, %struct.list_head* %10)
  %12 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %13 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %12, i32 0, i32 0
  %14 = call i32 @spin_unlock(i32* %13)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_splice_init(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
