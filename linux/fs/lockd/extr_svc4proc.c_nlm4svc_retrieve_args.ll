; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svc4proc.c_nlm4svc_retrieve_args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svc4proc.c_nlm4svc_retrieve_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.svc_rqst = type { i32 }
%struct.nlm_args = type { i64, %struct.nlm_lock }
%struct.nlm_lock = type { %struct.TYPE_3__, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32, i32 }
%struct.nlm_host = type { i32 }
%struct.nlm_file = type { i32 }

@nlmsvc_ops = common dso_local global i32 0, align 4
@nlm_lck_denied_nolocks = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@nlmsvc_lock_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nlm_args*, %struct.nlm_host**, %struct.nlm_file**)* @nlm4svc_retrieve_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nlm4svc_retrieve_args(%struct.svc_rqst* %0, %struct.nlm_args* %1, %struct.nlm_host** %2, %struct.nlm_file** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.nlm_args*, align 8
  %8 = alloca %struct.nlm_host**, align 8
  %9 = alloca %struct.nlm_file**, align 8
  %10 = alloca %struct.nlm_host*, align 8
  %11 = alloca %struct.nlm_file*, align 8
  %12 = alloca %struct.nlm_lock*, align 8
  %13 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.nlm_args* %1, %struct.nlm_args** %7, align 8
  store %struct.nlm_host** %2, %struct.nlm_host*** %8, align 8
  store %struct.nlm_file** %3, %struct.nlm_file*** %9, align 8
  store %struct.nlm_host* null, %struct.nlm_host** %10, align 8
  store %struct.nlm_file* null, %struct.nlm_file** %11, align 8
  %14 = load %struct.nlm_args*, %struct.nlm_args** %7, align 8
  %15 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %14, i32 0, i32 1
  store %struct.nlm_lock* %15, %struct.nlm_lock** %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load i32, i32* @nlmsvc_ops, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* @nlm_lck_denied_nolocks, align 8
  store i64 %19, i64* %5, align 8
  br label %98

20:                                               ; preds = %4
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %22 = load %struct.nlm_lock*, %struct.nlm_lock** %12, align 8
  %23 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nlm_lock*, %struct.nlm_lock** %12, align 8
  %26 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.nlm_host* @nlmsvc_lookup_host(%struct.svc_rqst* %21, i32 %24, i32 %27)
  store %struct.nlm_host* %28, %struct.nlm_host** %10, align 8
  %29 = icmp ne %struct.nlm_host* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load %struct.nlm_args*, %struct.nlm_args** %7, align 8
  %32 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.nlm_host*, %struct.nlm_host** %10, align 8
  %37 = call i64 @nsm_monitor(%struct.nlm_host* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %20
  br label %89

40:                                               ; preds = %35, %30
  %41 = load %struct.nlm_host*, %struct.nlm_host** %10, align 8
  %42 = load %struct.nlm_host**, %struct.nlm_host*** %8, align 8
  store %struct.nlm_host* %41, %struct.nlm_host** %42, align 8
  %43 = load %struct.nlm_file**, %struct.nlm_file*** %9, align 8
  %44 = icmp ne %struct.nlm_file** %43, null
  br i1 %44, label %45, label %88

45:                                               ; preds = %40
  %46 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %47 = load %struct.nlm_lock*, %struct.nlm_lock** %12, align 8
  %48 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %47, i32 0, i32 2
  %49 = call i64 @nlm_lookup_file(%struct.svc_rqst* %46, %struct.nlm_file** %11, i32* %48)
  store i64 %49, i64* %13, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %89

52:                                               ; preds = %45
  %53 = load %struct.nlm_file*, %struct.nlm_file** %11, align 8
  %54 = load %struct.nlm_file**, %struct.nlm_file*** %9, align 8
  store %struct.nlm_file* %53, %struct.nlm_file** %54, align 8
  %55 = load %struct.nlm_file*, %struct.nlm_file** %11, align 8
  %56 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nlm_lock*, %struct.nlm_lock** %12, align 8
  %59 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  store i32 %57, i32* %60, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nlm_lock*, %struct.nlm_lock** %12, align 8
  %65 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 8
  %67 = load %struct.nlm_lock*, %struct.nlm_lock** %12, align 8
  %68 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32* @nlmsvc_lock_operations, i32** %69, align 8
  %70 = load %struct.nlm_lock*, %struct.nlm_lock** %12, align 8
  %71 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %70, i32 0, i32 0
  %72 = load %struct.nlm_host*, %struct.nlm_host** %10, align 8
  %73 = load %struct.nlm_lock*, %struct.nlm_lock** %12, align 8
  %74 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @nlmsvc_locks_init_private(%struct.TYPE_3__* %71, %struct.nlm_host* %72, i32 %76)
  %78 = load %struct.nlm_lock*, %struct.nlm_lock** %12, align 8
  %79 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %52
  %84 = load %struct.nlm_host*, %struct.nlm_host** %10, align 8
  %85 = call i32 @nlmsvc_release_host(%struct.nlm_host* %84)
  %86 = load i64, i64* @nlm_lck_denied_nolocks, align 8
  store i64 %86, i64* %5, align 8
  br label %98

87:                                               ; preds = %52
  br label %88

88:                                               ; preds = %87, %40
  store i64 0, i64* %5, align 8
  br label %98

89:                                               ; preds = %51, %39
  %90 = load %struct.nlm_host*, %struct.nlm_host** %10, align 8
  %91 = call i32 @nlmsvc_release_host(%struct.nlm_host* %90)
  %92 = load i64, i64* %13, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i64, i64* %13, align 8
  store i64 %95, i64* %5, align 8
  br label %98

96:                                               ; preds = %89
  %97 = load i64, i64* @nlm_lck_denied_nolocks, align 8
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %96, %94, %88, %83, %18
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local %struct.nlm_host* @nlmsvc_lookup_host(%struct.svc_rqst*, i32, i32) #1

declare dso_local i64 @nsm_monitor(%struct.nlm_host*) #1

declare dso_local i64 @nlm_lookup_file(%struct.svc_rqst*, %struct.nlm_file**, i32*) #1

declare dso_local i32 @nlmsvc_locks_init_private(%struct.TYPE_3__*, %struct.nlm_host*, i32) #1

declare dso_local i32 @nlmsvc_release_host(%struct.nlm_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
