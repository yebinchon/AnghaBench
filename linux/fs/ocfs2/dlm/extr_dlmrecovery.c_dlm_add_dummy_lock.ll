; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_add_dummy_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_add_dummy_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_migratable_lockres = type { i32 }
%struct.dlm_lock = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i64 }

@LKM_IVMODE = common dso_local global i8* null, align 8
@DLM_BLOCKED_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*, %struct.dlm_migratable_lockres*)* @dlm_add_dummy_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_add_dummy_lock(%struct.dlm_ctxt* %0, %struct.dlm_migratable_lockres* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_migratable_lockres*, align 8
  %5 = alloca %struct.dlm_lock, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_migratable_lockres* %1, %struct.dlm_migratable_lockres** %4, align 8
  %6 = call i32 @memset(%struct.dlm_lock* %5, i32 0, i32 48)
  %7 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %5, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load i8*, i8** @LKM_IVMODE, align 8
  %10 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %5, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @LKM_IVMODE, align 8
  %13 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %5, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @LKM_IVMODE, align 8
  %16 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %5, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %5, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %20 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %4, align 8
  %25 = load i32, i32* @DLM_BLOCKED_LIST, align 4
  %26 = call i32 @dlm_add_lock_to_array(%struct.dlm_lock* %5, %struct.dlm_migratable_lockres* %24, i32 %25)
  ret void
}

declare dso_local i32 @memset(%struct.dlm_lock*, i32, i32) #1

declare dso_local i32 @dlm_add_lock_to_array(%struct.dlm_lock*, %struct.dlm_migratable_lockres*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
