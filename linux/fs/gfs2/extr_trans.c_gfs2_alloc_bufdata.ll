; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_trans.c_gfs2_alloc_bufdata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_trans.c_gfs2_alloc_bufdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_bufdata = type { i32, %struct.gfs2_glock*, %struct.buffer_head* }
%struct.gfs2_glock = type { i32 }
%struct.buffer_head = type { %struct.gfs2_bufdata* }

@gfs2_bufdata_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfs2_bufdata* (%struct.gfs2_glock*, %struct.buffer_head*)* @gfs2_alloc_bufdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfs2_bufdata* @gfs2_alloc_bufdata(%struct.gfs2_glock* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.gfs2_bufdata*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %6 = load i32, i32* @gfs2_bufdata_cachep, align 4
  %7 = load i32, i32* @GFP_NOFS, align 4
  %8 = load i32, i32* @__GFP_NOFAIL, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.gfs2_bufdata* @kmem_cache_zalloc(i32 %6, i32 %9)
  store %struct.gfs2_bufdata* %10, %struct.gfs2_bufdata** %5, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %12 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %5, align 8
  %13 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %12, i32 0, i32 2
  store %struct.buffer_head* %11, %struct.buffer_head** %13, align 8
  %14 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %15 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %15, i32 0, i32 1
  store %struct.gfs2_glock* %14, %struct.gfs2_glock** %16, align 8
  %17 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %5, align 8
  %18 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %17, i32 0, i32 0
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %5, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  store %struct.gfs2_bufdata* %20, %struct.gfs2_bufdata** %22, align 8
  %23 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %5, align 8
  ret %struct.gfs2_bufdata* %23
}

declare dso_local %struct.gfs2_bufdata* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
