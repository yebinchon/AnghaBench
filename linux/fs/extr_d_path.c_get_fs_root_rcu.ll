; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_d_path.c_get_fs_root_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_d_path.c_get_fs_root_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_struct = type { %struct.path, i32 }
%struct.path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_struct*, %struct.path*)* @get_fs_root_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_fs_root_rcu(%struct.fs_struct* %0, %struct.path* %1) #0 {
  %3 = alloca %struct.fs_struct*, align 8
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  store %struct.fs_struct* %0, %struct.fs_struct** %3, align 8
  store %struct.path* %1, %struct.path** %4, align 8
  br label %6

6:                                                ; preds = %15, %2
  %7 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %8 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %7, i32 0, i32 1
  %9 = call i32 @read_seqcount_begin(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.path*, %struct.path** %4, align 8
  %11 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %12 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %11, i32 0, i32 0
  %13 = bitcast %struct.path* %10 to i8*
  %14 = bitcast %struct.path* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  br label %15

15:                                               ; preds = %6
  %16 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %17 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %16, i32 0, i32 1
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @read_seqcount_retry(i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %6, label %21

21:                                               ; preds = %15
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
