; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_stat.c_vfs_statx_fd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_stat.c_vfs_statx_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kstat = type { i32 }
%struct.fd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@KSTAT_QUERY_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_statx_fd(i32 %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fd, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fd, align 8
  store i32 %0, i32* %6, align 4
  store %struct.kstat* %1, %struct.kstat** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @EBADF, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @KSTAT_QUERY_FLAGS, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %45

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.TYPE_2__* @fdget_raw(i32 %24)
  %26 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %26, align 8
  %27 = bitcast %struct.fd* %10 to i8*
  %28 = bitcast %struct.fd* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  %29 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.kstat*, %struct.kstat** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @vfs_getattr(i32* %35, %struct.kstat* %36, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = call i32 @fdput(%struct.TYPE_2__* %41)
  br label %43

43:                                               ; preds = %32, %23
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %20
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_2__* @fdget_raw(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vfs_getattr(i32*, %struct.kstat*, i32, i32) #1

declare dso_local i32 @fdput(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
