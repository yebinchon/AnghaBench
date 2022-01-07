; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmlock.c_dlm_lock_detach_lockres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmlock.c_dlm_lock_detach_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock = type { %struct.dlm_lock_resource* }
%struct.dlm_lock_resource = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"removing lock's lockres reference\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_lock*)* @dlm_lock_detach_lockres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_lock_detach_lockres(%struct.dlm_lock* %0) #0 {
  %2 = alloca %struct.dlm_lock*, align 8
  %3 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_lock* %0, %struct.dlm_lock** %2, align 8
  %4 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %5 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %4, i32 0, i32 0
  %6 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  store %struct.dlm_lock_resource* %6, %struct.dlm_lock_resource** %3, align 8
  %7 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %8 = icmp ne %struct.dlm_lock_resource* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %11 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %10, i32 0, i32 0
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %11, align 8
  %12 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %14 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %13)
  br label %15

15:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
