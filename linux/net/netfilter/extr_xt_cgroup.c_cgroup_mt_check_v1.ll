; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_cgroup.c_cgroup_mt_check_v1.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_cgroup.c_cgroup_mt_check_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_cgroup_info_v1* }
%struct.xt_cgroup_info_v1 = type { i32, i32, %struct.cgroup*, i32, i64, i64 }
%struct.cgroup = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"xt_cgroup: no path or classid specified\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"path and classid specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid path, errno=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @cgroup_mt_check_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_mt_check_v1(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_cgroup_info_v1*, align 8
  %5 = alloca %struct.cgroup*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 0
  %8 = load %struct.xt_cgroup_info_v1*, %struct.xt_cgroup_info_v1** %7, align 8
  store %struct.xt_cgroup_info_v1* %8, %struct.xt_cgroup_info_v1** %4, align 8
  %9 = load %struct.xt_cgroup_info_v1*, %struct.xt_cgroup_info_v1** %4, align 8
  %10 = getelementptr inbounds %struct.xt_cgroup_info_v1, %struct.xt_cgroup_info_v1* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, -2
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.xt_cgroup_info_v1*, %struct.xt_cgroup_info_v1** %4, align 8
  %16 = getelementptr inbounds %struct.xt_cgroup_info_v1, %struct.xt_cgroup_info_v1* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, -2
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %77

23:                                               ; preds = %14
  %24 = load %struct.xt_cgroup_info_v1*, %struct.xt_cgroup_info_v1** %4, align 8
  %25 = getelementptr inbounds %struct.xt_cgroup_info_v1, %struct.xt_cgroup_info_v1* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load %struct.xt_cgroup_info_v1*, %struct.xt_cgroup_info_v1** %4, align 8
  %30 = getelementptr inbounds %struct.xt_cgroup_info_v1, %struct.xt_cgroup_info_v1* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %77

37:                                               ; preds = %28, %23
  %38 = load %struct.xt_cgroup_info_v1*, %struct.xt_cgroup_info_v1** %4, align 8
  %39 = getelementptr inbounds %struct.xt_cgroup_info_v1, %struct.xt_cgroup_info_v1* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.xt_cgroup_info_v1*, %struct.xt_cgroup_info_v1** %4, align 8
  %44 = getelementptr inbounds %struct.xt_cgroup_info_v1, %struct.xt_cgroup_info_v1* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %77

51:                                               ; preds = %42, %37
  %52 = load %struct.xt_cgroup_info_v1*, %struct.xt_cgroup_info_v1** %4, align 8
  %53 = getelementptr inbounds %struct.xt_cgroup_info_v1, %struct.xt_cgroup_info_v1* %52, i32 0, i32 2
  store %struct.cgroup* null, %struct.cgroup** %53, align 8
  %54 = load %struct.xt_cgroup_info_v1*, %struct.xt_cgroup_info_v1** %4, align 8
  %55 = getelementptr inbounds %struct.xt_cgroup_info_v1, %struct.xt_cgroup_info_v1* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %51
  %59 = load %struct.xt_cgroup_info_v1*, %struct.xt_cgroup_info_v1** %4, align 8
  %60 = getelementptr inbounds %struct.xt_cgroup_info_v1, %struct.xt_cgroup_info_v1* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.cgroup* @cgroup_get_from_path(i32 %61)
  store %struct.cgroup* %62, %struct.cgroup** %5, align 8
  %63 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %64 = call i64 @IS_ERR(%struct.cgroup* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %68 = call i32 @PTR_ERR(%struct.cgroup* %67)
  %69 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %77

72:                                               ; preds = %58
  %73 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %74 = load %struct.xt_cgroup_info_v1*, %struct.xt_cgroup_info_v1** %4, align 8
  %75 = getelementptr inbounds %struct.xt_cgroup_info_v1, %struct.xt_cgroup_info_v1* %74, i32 0, i32 2
  store %struct.cgroup* %73, %struct.cgroup** %75, align 8
  br label %76

76:                                               ; preds = %72, %51
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %66, %47, %33, %20
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_info_ratelimited(i8*, ...) #1

declare dso_local %struct.cgroup* @cgroup_get_from_path(i32) #1

declare dso_local i64 @IS_ERR(%struct.cgroup*) #1

declare dso_local i32 @PTR_ERR(%struct.cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
