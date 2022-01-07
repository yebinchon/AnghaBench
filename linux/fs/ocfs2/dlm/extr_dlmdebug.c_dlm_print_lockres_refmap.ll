; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdebug.c_dlm_print_lockres_refmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdebug.c_dlm_print_lockres_refmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"  refmap nodes: [ \00", align 1
@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"], inflight=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_lock_resource*)* @dlm_print_lockres_refmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_print_lockres_refmap(%struct.dlm_lock_resource* %0) #0 {
  %2 = alloca %struct.dlm_lock_resource*, align 8
  %3 = alloca i32, align 4
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %2, align 8
  %4 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %5 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %4, i32 0, i32 2
  %6 = call i32 @assert_spin_locked(i32* %5)
  %7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %1, %19
  %9 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %10 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @O2NM_MAX_NODES, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @find_next_bit(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @O2NM_MAX_NODES, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  br label %24

19:                                               ; preds = %8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %8

24:                                               ; preds = %18
  %25 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %26 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
