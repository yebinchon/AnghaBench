; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_legacy_parse_monolithic.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_legacy_parse_monolithic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32, %struct.TYPE_2__*, %struct.legacy_fs_context* }
%struct.TYPE_2__ = type { i32 }
%struct.legacy_fs_context = type { i64, i8* }

@LEGACY_FS_UNSET_PARAMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"VFS: Can't mix monolithic and individual options\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LEGACY_FS_MONOLITHIC_PARAMS = common dso_local global i64 0, align 8
@FS_BINARY_MOUNTDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, i8*)* @legacy_parse_monolithic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_parse_monolithic(%struct.fs_context* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.legacy_fs_context*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %8 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %7, i32 0, i32 2
  %9 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %8, align 8
  store %struct.legacy_fs_context* %9, %struct.legacy_fs_context** %6, align 8
  %10 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %11 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LEGACY_FS_UNSET_PARAMS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %22 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i64, i64* @LEGACY_FS_MONOLITHIC_PARAMS, align 8
  %24 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %25 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %27 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %48

31:                                               ; preds = %19
  %32 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %33 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FS_BINARY_MOUNTDATA, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %48

41:                                               ; preds = %31
  %42 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %43 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %46 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %45, i32 0, i32 0
  %47 = call i32 @security_sb_eat_lsm_opts(i8* %44, i32* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %41, %40, %30, %15
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @security_sb_eat_lsm_opts(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
