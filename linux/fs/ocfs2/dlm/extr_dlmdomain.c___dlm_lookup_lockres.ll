; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c___dlm_lookup_lockres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c___dlm_lookup_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32, i32 }
%struct.dlm_ctxt = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@DLM_LOCK_RES_DROPPING_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca %struct.dlm_ctxt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %12)
  %14 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %15 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %14, i32 0, i32 0
  %16 = call i32 @assert_spin_locked(i32* %15)
  %17 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.dlm_lock_resource* @__dlm_lookup_lockres_full(%struct.dlm_ctxt* %17, i8* %18, i32 %19, i32 %20)
  store %struct.dlm_lock_resource* %21, %struct.dlm_lock_resource** %10, align 8
  %22 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %23 = icmp ne %struct.dlm_lock_resource* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %4
  %25 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %26 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %25, i32 0, i32 1
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %29 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DLM_LOCK_RES_DROPPING_REF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %36 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %39 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %38)
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %5, align 8
  br label %46

40:                                               ; preds = %24
  %41 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %42 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock(i32* %42)
  br label %44

44:                                               ; preds = %40, %4
  %45 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  store %struct.dlm_lock_resource* %45, %struct.dlm_lock_resource** %5, align 8
  br label %46

46:                                               ; preds = %44, %34
  %47 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  ret %struct.dlm_lock_resource* %47
}

declare dso_local i32 @mlog(i32, i8*, i32, i8*) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local %struct.dlm_lock_resource* @__dlm_lookup_lockres_full(%struct.dlm_ctxt*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
