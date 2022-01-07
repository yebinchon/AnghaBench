; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_readahead.c_ksys_readahead.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_readahead.c_ksys_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@POSIX_FADV_WILLNEED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ksys_readahead(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd, align 8
  %9 = alloca %struct.fd, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @EBADF, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_6__* @fdget(i32 %12)
  %14 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %14, align 8
  %15 = bitcast %struct.fd* %8 to i8*
  %16 = bitcast %struct.fd* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FMODE_READ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20, %3
  br label %61

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  %32 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call %struct.TYPE_7__* @file_inode(%struct.TYPE_6__* %47)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @S_ISREG(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45, %37, %29
  br label %61

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* @POSIX_FADV_WILLNEED, align 4
  %60 = call i32 @vfs_fadvise(%struct.TYPE_6__* %56, i32 %57, i64 %58, i32 %59)
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %54, %53, %28
  %62 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @fdput(%struct.TYPE_6__* %63)
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_6__* @fdget(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_7__* @file_inode(%struct.TYPE_6__*) #1

declare dso_local i32 @vfs_fadvise(%struct.TYPE_6__*, i32, i64, i32) #1

declare dso_local i32 @fdput(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
