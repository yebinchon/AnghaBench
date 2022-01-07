; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_d_path.c_get_fs_root_and_pwd_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_d_path.c_get_fs_root_and_pwd_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_struct = type { %struct.path, %struct.path, i32 }
%struct.path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_struct*, %struct.path*, %struct.path*)* @get_fs_root_and_pwd_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_fs_root_and_pwd_rcu(%struct.fs_struct* %0, %struct.path* %1, %struct.path* %2) #0 {
  %4 = alloca %struct.fs_struct*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i32, align 4
  store %struct.fs_struct* %0, %struct.fs_struct** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  store %struct.path* %2, %struct.path** %6, align 8
  br label %8

8:                                                ; preds = %22, %3
  %9 = load %struct.fs_struct*, %struct.fs_struct** %4, align 8
  %10 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %9, i32 0, i32 2
  %11 = call i32 @read_seqcount_begin(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.path*, %struct.path** %5, align 8
  %13 = load %struct.fs_struct*, %struct.fs_struct** %4, align 8
  %14 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %13, i32 0, i32 1
  %15 = bitcast %struct.path* %12 to i8*
  %16 = bitcast %struct.path* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.path*, %struct.path** %6, align 8
  %18 = load %struct.fs_struct*, %struct.fs_struct** %4, align 8
  %19 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %18, i32 0, i32 0
  %20 = bitcast %struct.path* %17 to i8*
  %21 = bitcast %struct.path* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  br label %22

22:                                               ; preds = %8
  %23 = load %struct.fs_struct*, %struct.fs_struct** %4, align 8
  %24 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %23, i32 0, i32 2
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @read_seqcount_retry(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %8, label %28

28:                                               ; preds = %22
  ret void
}

declare dso_local i32 @read_seqcount_begin(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
