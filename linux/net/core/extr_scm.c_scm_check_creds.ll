; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_scm.c_scm_check_creds.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_scm.c_scm_check_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i64, i32, i32 }
%struct.cred = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@CAP_SETUID = common dso_local global i32 0, align 4
@CAP_SETGID = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*)* @scm_check_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scm_check_creds(%struct.ucred* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  %7 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %7, %struct.cred** %4, align 8
  %8 = load %struct.cred*, %struct.cred** %4, align 8
  %9 = getelementptr inbounds %struct.cred, %struct.cred* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ucred*, %struct.ucred** %3, align 8
  %12 = getelementptr inbounds %struct.ucred, %struct.ucred* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @make_kuid(i32 %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.cred*, %struct.cred** %4, align 8
  %16 = getelementptr inbounds %struct.cred, %struct.cred* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ucred*, %struct.ucred** %3, align 8
  %19 = getelementptr inbounds %struct.ucred, %struct.ucred* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @make_kgid(i32 %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @uid_valid(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @gid_valid(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %107

32:                                               ; preds = %25
  %33 = load %struct.ucred*, %struct.ucred** %3, align 8
  %34 = getelementptr inbounds %struct.ucred, %struct.ucred* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @current, align 4
  %37 = call i64 @task_tgid_vnr(i32 %36)
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @current, align 4
  %41 = call %struct.TYPE_2__* @task_active_pid_ns(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %45 = call i64 @ns_capable(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %104

47:                                               ; preds = %39, %32
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.cred*, %struct.cred** %4, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @uid_eq(i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %75, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.cred*, %struct.cred** %4, align 8
  %57 = getelementptr inbounds %struct.cred, %struct.cred* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @uid_eq(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.cred*, %struct.cred** %4, align 8
  %64 = getelementptr inbounds %struct.cred, %struct.cred* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @uid_eq(i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load %struct.cred*, %struct.cred** %4, align 8
  %70 = getelementptr inbounds %struct.cred, %struct.cred* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CAP_SETUID, align 4
  %73 = call i64 @ns_capable(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %68, %61, %54, %47
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.cred*, %struct.cred** %4, align 8
  %78 = getelementptr inbounds %struct.cred, %struct.cred* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @gid_eq(i32 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %103, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.cred*, %struct.cred** %4, align 8
  %85 = getelementptr inbounds %struct.cred, %struct.cred* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @gid_eq(i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.cred*, %struct.cred** %4, align 8
  %92 = getelementptr inbounds %struct.cred, %struct.cred* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @gid_eq(i32 %90, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load %struct.cred*, %struct.cred** %4, align 8
  %98 = getelementptr inbounds %struct.cred, %struct.cred* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CAP_SETGID, align 4
  %101 = call i64 @ns_capable(i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %89, %82, %75
  store i32 0, i32* %2, align 4
  br label %107

104:                                              ; preds = %96, %68, %39
  %105 = load i32, i32* @EPERM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %104, %103, %29
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i64 @task_tgid_vnr(i32) #1

declare dso_local i64 @ns_capable(i32, i32) #1

declare dso_local %struct.TYPE_2__* @task_active_pid_ns(i32) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i64 @gid_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
