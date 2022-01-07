; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_struct.c_set_fs_pwd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_struct.c_set_fs_pwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_struct = type { i32, i32, %struct.path }
%struct.path = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_fs_pwd(%struct.fs_struct* %0, %struct.path* %1) #0 {
  %3 = alloca %struct.fs_struct*, align 8
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.path, align 8
  store %struct.fs_struct* %0, %struct.fs_struct** %3, align 8
  store %struct.path* %1, %struct.path** %4, align 8
  %6 = load %struct.path*, %struct.path** %4, align 8
  %7 = call i32 @path_get(%struct.path* %6)
  %8 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %9 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %12 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %11, i32 0, i32 1
  %13 = call i32 @write_seqcount_begin(i32* %12)
  %14 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %15 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %14, i32 0, i32 2
  %16 = bitcast %struct.path* %5 to i8*
  %17 = bitcast %struct.path* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %19 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %18, i32 0, i32 2
  %20 = load %struct.path*, %struct.path** %4, align 8
  %21 = bitcast %struct.path* %19 to i8*
  %22 = bitcast %struct.path* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %24 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %23, i32 0, i32 1
  %25 = call i32 @write_seqcount_end(i32* %24)
  %26 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %27 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = call i32 @path_put(%struct.path* %5)
  br label %34

34:                                               ; preds = %32, %2
  ret void
}

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
