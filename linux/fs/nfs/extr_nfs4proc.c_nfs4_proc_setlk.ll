; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_setlk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_setlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32 }
%struct.file_lock = type { i32 }
%struct.nfs4_exception = type { i32, i64, i32, %struct.nfs4_state* }

@NFS4ERR_DENIED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_state*, i32, %struct.file_lock*)* @nfs4_proc_setlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_setlk(%struct.nfs4_state* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.nfs4_exception, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %9 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 2
  %12 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %13 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 8
  %15 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 3
  %16 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  store %struct.nfs4_state* %16, %struct.nfs4_state** %15, align 8
  br label %17

17:                                               ; preds = %36, %3
  %18 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %21 = call i32 @_nfs4_proc_setlk(%struct.nfs4_state* %18, i32 %19, %struct.file_lock* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @NFS4ERR_DENIED, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %17
  %30 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %31 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @NFS_SERVER(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @nfs4_handle_exception(i32 %33, i32 %34, %struct.nfs4_exception* %7)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %17, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @_nfs4_proc_setlk(%struct.nfs4_state*, i32, %struct.file_lock*) #1

declare dso_local i32 @nfs4_handle_exception(i32, i32, %struct.nfs4_exception*) #1

declare dso_local i32 @NFS_SERVER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
