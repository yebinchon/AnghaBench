; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_quota_scale_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_quota_scale_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.gfs2_tune }
%struct.gfs2_tune = type { i32, i32, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%u %u\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gfs2_sbd*, i8*, i64)* @quota_scale_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quota_scale_store(%struct.gfs2_sbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gfs2_tune*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 0
  store %struct.gfs2_tune* %12, %struct.gfs2_tune** %8, align 8
  %13 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %14 = call i32 @capable(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* @EPERM, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %4, align 8
  br label %43

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10)
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %19
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %4, align 8
  br label %43

29:                                               ; preds = %23
  %30 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %31 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %30, i32 0, i32 2
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %35 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %38 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %40 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %39, i32 0, i32 2
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %29, %26, %16
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
