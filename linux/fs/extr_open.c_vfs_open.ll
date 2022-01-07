; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_vfs_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_vfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.file = type { %struct.path }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_open(%struct.path* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load %struct.file*, %struct.file** %4, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.path*, %struct.path** %3, align 8
  %8 = bitcast %struct.path* %6 to i8*
  %9 = bitcast %struct.path* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 4, i1 false)
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = load %struct.path*, %struct.path** %3, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @d_backing_inode(i32 %13)
  %15 = call i32 @do_dentry_open(%struct.file* %10, i32 %14, i32* null)
  ret i32 %15
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @do_dentry_open(%struct.file*, i32, i32*) #2

declare dso_local i32 @d_backing_inode(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
