; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_acct.c_do_acct_process.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_acct.c_do_acct_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.bsd_acct_struct = type { %struct.pid_namespace*, %struct.file* }
%struct.pid_namespace = type { i32 }
%struct.file = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i8*, i32, i32, i32, i32 }
%struct.cred = type { i32, i32 }

@current = common dso_local global %struct.TYPE_13__* null, align 8
@RLIMIT_FSIZE = common dso_local global i64 0, align 8
@RLIM_INFINITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsd_acct_struct*)* @do_acct_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_acct_process(%struct.bsd_acct_struct* %0) #0 {
  %2 = alloca %struct.bsd_acct_struct*, align 8
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store %struct.bsd_acct_struct* %0, %struct.bsd_acct_struct** %2, align 8
  %8 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %2, align 8
  %9 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %8, i32 0, i32 1
  %10 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %10, %struct.file** %6, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = load i64, i64* @RLIMIT_FSIZE, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* @RLIM_INFINITY, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = load i64, i64* @RLIMIT_FSIZE, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i64 %20, i64* %28, align 8
  %29 = load %struct.file*, %struct.file** %6, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = call %struct.cred* @override_creds(%struct.TYPE_14__* %31)
  store %struct.cred* %32, %struct.cred** %5, align 8
  %33 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %2, align 8
  %34 = call i32 @check_free_space(%struct.bsd_acct_struct* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  br label %68

37:                                               ; preds = %1
  %38 = call i32 @fill_ac(%struct.TYPE_12__* %3)
  %39 = load %struct.file*, %struct.file** %6, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cred*, %struct.cred** %5, align 8
  %45 = getelementptr inbounds %struct.cred, %struct.cred* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @from_kuid_munged(i32 %43, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 4
  store i32 %47, i32* %48, align 8
  %49 = load %struct.file*, %struct.file** %6, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cred*, %struct.cred** %5, align 8
  %55 = getelementptr inbounds %struct.cred, %struct.cred* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @from_kgid_munged(i32 %53, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = load %struct.file*, %struct.file** %6, align 8
  %60 = call i64 @file_start_write_trylock(%struct.file* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  %63 = load %struct.file*, %struct.file** %6, align 8
  %64 = call i32 @__kernel_write(%struct.file* %63, %struct.TYPE_12__* %3, i32 32, i32* %7)
  %65 = load %struct.file*, %struct.file** %6, align 8
  %66 = call i32 @file_end_write(%struct.file* %65)
  br label %67

67:                                               ; preds = %62, %37
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = load i64, i64* @RLIMIT_FSIZE, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i64 %69, i64* %77, align 8
  %78 = load %struct.cred*, %struct.cred** %5, align 8
  %79 = call i32 @revert_creds(%struct.cred* %78)
  ret void
}

declare dso_local %struct.cred* @override_creds(%struct.TYPE_14__*) #1

declare dso_local i32 @check_free_space(%struct.bsd_acct_struct*) #1

declare dso_local i32 @fill_ac(%struct.TYPE_12__*) #1

declare dso_local i32 @from_kuid_munged(i32, i32) #1

declare dso_local i32 @from_kgid_munged(i32, i32) #1

declare dso_local i64 @file_start_write_trylock(%struct.file*) #1

declare dso_local i32 @__kernel_write(%struct.file*, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @file_end_write(%struct.file*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
