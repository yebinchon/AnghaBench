; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_sock_get_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_sock_get_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kernel_sock_timeval = type { i64, i64 }
%struct.old_timeval32 = type { i64, i64 }
%struct.__kernel_old_timeval = type { i64, i64 }

@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i64 0, align 8
@COMPAT_USE_64BIT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @sock_get_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_get_timeout(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__kernel_sock_timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.old_timeval32, align 8
  %11 = alloca %struct.__kernel_old_timeval, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.__kernel_sock_timeval, %struct.__kernel_sock_timeval* %8, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.__kernel_sock_timeval, %struct.__kernel_sock_timeval* %8, i32 0, i32 1
  store i64 0, i64* %17, align 8
  br label %31

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @HZ, align 8
  %21 = sdiv i64 %19, %20
  %22 = getelementptr inbounds %struct.__kernel_sock_timeval, %struct.__kernel_sock_timeval* %8, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @HZ, align 8
  %25 = srem i64 %23, %24
  %26 = load i64, i64* @USEC_PER_SEC, align 8
  %27 = mul nsw i64 %25, %26
  %28 = load i64, i64* @HZ, align 8
  %29 = sdiv i64 %27, %28
  %30 = getelementptr inbounds %struct.__kernel_sock_timeval, %struct.__kernel_sock_timeval* %8, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %18, %15
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = call i64 (...) @in_compat_syscall()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i32, i32* @COMPAT_USE_64BIT_TIME, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.old_timeval32, %struct.old_timeval32* %10, i32 0, i32 0
  %42 = getelementptr inbounds %struct.__kernel_sock_timeval, %struct.__kernel_sock_timeval* %8, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %41, align 8
  %44 = getelementptr inbounds %struct.old_timeval32, %struct.old_timeval32* %10, i32 0, i32 1
  %45 = getelementptr inbounds %struct.__kernel_sock_timeval, %struct.__kernel_sock_timeval* %8, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %44, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = bitcast i8* %47 to %struct.old_timeval32*
  %49 = bitcast %struct.old_timeval32* %48 to i8*
  %50 = bitcast %struct.old_timeval32* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 16, i1 false)
  store i32 16, i32* %4, align 4
  br label %72

51:                                               ; preds = %37, %34, %31
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.__kernel_sock_timeval, %struct.__kernel_sock_timeval* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.__kernel_old_timeval, %struct.__kernel_old_timeval* %11, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds %struct.__kernel_sock_timeval, %struct.__kernel_sock_timeval* %8, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.__kernel_old_timeval, %struct.__kernel_old_timeval* %11, i32 0, i32 1
  store i64 %59, i64* %60, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = bitcast i8* %61 to %struct.__kernel_old_timeval*
  %63 = bitcast %struct.__kernel_old_timeval* %62 to i8*
  %64 = bitcast %struct.__kernel_old_timeval* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 16, i1 false)
  store i32 16, i32* %9, align 4
  br label %70

65:                                               ; preds = %51
  %66 = load i8*, i8** %6, align 8
  %67 = bitcast i8* %66 to %struct.__kernel_sock_timeval*
  %68 = bitcast %struct.__kernel_sock_timeval* %67 to i8*
  %69 = bitcast %struct.__kernel_sock_timeval* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  store i32 16, i32* %9, align 4
  br label %70

70:                                               ; preds = %65, %54
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %40
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @in_compat_syscall(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
