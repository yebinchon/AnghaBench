; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_lock_delegation_recall.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_lock_delegation_recall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32 }
%struct.nfs4_state = type { i32 }
%struct.nfs_server = type { i32 }

@F_SETLK = common dso_local global i32 0, align 4
@NFS_LOCK_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_lock_delegation_recall(%struct.file_lock* %0, %struct.nfs4_state* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca %struct.nfs4_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nfs_server*, align 8
  %9 = alloca i32, align 4
  store %struct.file_lock* %0, %struct.file_lock** %5, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %11 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nfs_server* @NFS_SERVER(i32 %12)
  store %struct.nfs_server* %13, %struct.nfs_server** %8, align 8
  %14 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %15 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %16 = call i32 @nfs4_set_lock_state(%struct.nfs4_state* %14, %struct.file_lock* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %33

21:                                               ; preds = %3
  %22 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %23 = load i32, i32* @F_SETLK, align 4
  %24 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %25 = load i32, i32* @NFS_LOCK_NEW, align 4
  %26 = call i32 @_nfs4_do_setlk(%struct.nfs4_state* %22, i32 %23, %struct.file_lock* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %28 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @nfs4_handle_delegation_recall_error(%struct.nfs_server* %27, %struct.nfs4_state* %28, i32* %29, %struct.file_lock* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %21, %19
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @nfs4_set_lock_state(%struct.nfs4_state*, %struct.file_lock*) #1

declare dso_local i32 @_nfs4_do_setlk(%struct.nfs4_state*, i32, %struct.file_lock*, i32) #1

declare dso_local i32 @nfs4_handle_delegation_recall_error(%struct.nfs_server*, %struct.nfs4_state*, i32*, %struct.file_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
