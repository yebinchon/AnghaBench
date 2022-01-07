; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_getlk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_getlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_exception = type { i32, i64 }
%struct.nfs4_state = type { i32 }
%struct.file_lock = type { i32 }

@__const.nfs4_proc_getlk.exception = private unnamed_addr constant %struct.nfs4_exception { i32 1, i64 0 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_state*, i32, %struct.file_lock*)* @nfs4_proc_getlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_getlk(%struct.nfs4_state* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.nfs4_exception, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %9 = bitcast %struct.nfs4_exception* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.nfs4_exception* @__const.nfs4_proc_getlk.exception to i8*), i64 16, i1 false)
  br label %10

10:                                               ; preds = %26, %3
  %11 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %14 = call i32 @_nfs4_proc_getlk(%struct.nfs4_state* %11, i32 %12, %struct.file_lock* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %16 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @trace_nfs4_get_lock(%struct.file_lock* %15, %struct.nfs4_state* %16, i32 %17, i32 %18)
  %20 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %21 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @NFS_SERVER(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @nfs4_handle_exception(i32 %23, i32 %24, %struct.nfs4_exception* %7)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %10, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_nfs4_proc_getlk(%struct.nfs4_state*, i32, %struct.file_lock*) #2

declare dso_local i32 @trace_nfs4_get_lock(%struct.file_lock*, %struct.nfs4_state*, i32, i32) #2

declare dso_local i32 @nfs4_handle_exception(i32, i32, %struct.nfs4_exception*) #2

declare dso_local i32 @NFS_SERVER(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
