; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_lookup_lockres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_lookup_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32 }
%struct.dlm_ctxt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dlm_lock_resource* @dlm_lookup_lockres(%struct.dlm_ctxt* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_lock_resource*, align 8
  %8 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @dlm_lockid_hash(i8* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %13 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt* %15, i8* %16, i32 %17, i32 %18)
  store %struct.dlm_lock_resource* %19, %struct.dlm_lock_resource** %7, align 8
  %20 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  ret %struct.dlm_lock_resource* %23
}

declare dso_local i32 @dlm_lockid_hash(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_lock_resource* @__dlm_lookup_lockres(%struct.dlm_ctxt*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
