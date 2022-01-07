; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_new_idmap_permitted.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_new_idmap_permitted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cred* }
%struct.cred = type { i32, i32 }
%struct.user_namespace = type { i32, i32, i32 }
%struct.uid_gid_map = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CAP_SETUID = common dso_local global i32 0, align 4
@CAP_SETGID = common dso_local global i32 0, align 4
@USERNS_SETGROUPS_ALLOWED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.user_namespace*, i32, %struct.uid_gid_map*)* @new_idmap_permitted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_idmap_permitted(%struct.file* %0, %struct.user_namespace* %1, i32 %2, %struct.uid_gid_map* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.user_namespace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uid_gid_map*, align 8
  %10 = alloca %struct.cred*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.user_namespace* %1, %struct.user_namespace** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.uid_gid_map* %3, %struct.uid_gid_map** %9, align 8
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.cred*, %struct.cred** %15, align 8
  store %struct.cred* %16, %struct.cred** %10, align 8
  %17 = load %struct.uid_gid_map*, %struct.uid_gid_map** %9, align 8
  %18 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %89

21:                                               ; preds = %4
  %22 = load %struct.uid_gid_map*, %struct.uid_gid_map** %9, align 8
  %23 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %89

29:                                               ; preds = %21
  %30 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %31 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cred*, %struct.cred** %10, align 8
  %34 = getelementptr inbounds %struct.cred, %struct.cred* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @uid_eq(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %89

38:                                               ; preds = %29
  %39 = load %struct.uid_gid_map*, %struct.uid_gid_map** %9, align 8
  %40 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @CAP_SETUID, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %38
  %49 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %50 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @make_kuid(i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.cred*, %struct.cred** %10, align 8
  %56 = getelementptr inbounds %struct.cred, %struct.cred* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @uid_eq(i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %111

61:                                               ; preds = %48
  br label %88

62:                                               ; preds = %38
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @CAP_SETGID, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %68 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @make_kgid(i32 %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %73 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @USERNS_SETGROUPS_ALLOWED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.cred*, %struct.cred** %10, align 8
  %81 = getelementptr inbounds %struct.cred, %struct.cred* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @gid_eq(i32 %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 1, i32* %5, align 4
  br label %111

86:                                               ; preds = %78, %66
  br label %87

87:                                               ; preds = %86, %62
  br label %88

88:                                               ; preds = %87, %61
  br label %89

89:                                               ; preds = %88, %29, %21, %4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @cap_valid(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  store i32 1, i32* %5, align 4
  br label %111

94:                                               ; preds = %89
  %95 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %96 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i64 @ns_capable(i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = load %struct.file*, %struct.file** %6, align 8
  %103 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %104 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i64 @file_ns_capable(%struct.file* %102, i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store i32 1, i32* %5, align 4
  br label %111

110:                                              ; preds = %101, %94
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %109, %93, %85, %60
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i64 @gid_eq(i32, i32) #1

declare dso_local i32 @cap_valid(i32) #1

declare dso_local i64 @ns_capable(i32, i32) #1

declare dso_local i64 @file_ns_capable(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
