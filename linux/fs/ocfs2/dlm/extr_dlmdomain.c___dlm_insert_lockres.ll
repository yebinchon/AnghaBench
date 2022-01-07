; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c___dlm_insert_lockres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c___dlm_insert_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hlist_head = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s: Hash res %.*s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dlm_insert_lockres(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock_resource*, align 8
  %5 = alloca %struct.hlist_head*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %4, align 8
  %6 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %7 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %6, i32 0, i32 1
  %8 = call i32 @assert_spin_locked(i32* %7)
  %9 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %10 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.hlist_head* @dlm_lockres_hash(%struct.dlm_ctxt* %9, i32 %13)
  store %struct.hlist_head* %14, %struct.hlist_head** %5, align 8
  %15 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %16 = call i32 @dlm_lockres_get(%struct.dlm_lock_resource* %15)
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %18 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %17, i32 0, i32 1
  %19 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %20 = call i32 @hlist_add_head(i32* %18, %struct.hlist_head* %19)
  %21 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %22 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %25 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %29 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27, i32 %31)
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local %struct.hlist_head* @dlm_lockres_hash(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @dlm_lockres_get(%struct.dlm_lock_resource*) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
