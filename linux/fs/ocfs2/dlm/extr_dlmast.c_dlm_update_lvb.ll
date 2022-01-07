; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c_dlm_update_lvb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c_dlm_update_lvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64 }
%struct.dlm_lock_resource = type { i64, i32, i32 }
%struct.dlm_lock = type { %struct.TYPE_2__, %struct.dlm_lockstatus* }
%struct.TYPE_2__ = type { i64 }
%struct.dlm_lockstatus = type { i32, i32 }

@DLM_LKSB_GET_LVB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"getting lvb from lockres for %s node\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@DLM_LVB_LEN = common dso_local global i32 0, align 4
@DLM_LKSB_PUT_LVB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*)* @dlm_update_lvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_update_lvb(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca %struct.dlm_lock*, align 8
  %7 = alloca %struct.dlm_lockstatus*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %5, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %6, align 8
  %8 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %9 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %8, i32 0, i32 1
  %10 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %9, align 8
  store %struct.dlm_lockstatus* %10, %struct.dlm_lockstatus** %7, align 8
  %11 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %7, align 8
  %12 = icmp ne %struct.dlm_lockstatus* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %17 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %20 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %23 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %3
  %27 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %7, align 8
  %28 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DLM_LKSB_GET_LVB, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = load %struct.dlm_lock*, %struct.dlm_lock** %6, align 8
  %35 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %39 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %7, align 8
  %46 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %49 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DLM_LVB_LEN, align 4
  %52 = call i32 @memcpy(i32 %47, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %33, %26
  br label %54

54:                                               ; preds = %53, %3
  %55 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %56 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load i32, i32* @DLM_LKSB_PUT_LVB, align 4
  %59 = load i32, i32* @DLM_LKSB_GET_LVB, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %7, align 8
  %63 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
