; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_policydb_bounds_sanity_check.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_policydb_bounds_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@POLICYDB_VERSION_BOUNDARY = common dso_local global i64 0, align 8
@user_bounds_sanity_check = common dso_local global i32 0, align 4
@role_bounds_sanity_check = common dso_local global i32 0, align 4
@type_bounds_sanity_check = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*)* @policydb_bounds_sanity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policydb_bounds_sanity_check(%struct.policydb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.policydb*, align 8
  %4 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %3, align 8
  %5 = load %struct.policydb*, %struct.policydb** %3, align 8
  %6 = getelementptr inbounds %struct.policydb, %struct.policydb* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @POLICYDB_VERSION_BOUNDARY, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.policydb*, %struct.policydb** %3, align 8
  %13 = getelementptr inbounds %struct.policydb, %struct.policydb* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @user_bounds_sanity_check, align 4
  %17 = load %struct.policydb*, %struct.policydb** %3, align 8
  %18 = call i32 @hashtab_map(i32 %15, i32 %16, %struct.policydb* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %11
  %24 = load %struct.policydb*, %struct.policydb** %3, align 8
  %25 = getelementptr inbounds %struct.policydb, %struct.policydb* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @role_bounds_sanity_check, align 4
  %29 = load %struct.policydb*, %struct.policydb** %3, align 8
  %30 = call i32 @hashtab_map(i32 %27, i32 %28, %struct.policydb* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %48

35:                                               ; preds = %23
  %36 = load %struct.policydb*, %struct.policydb** %3, align 8
  %37 = getelementptr inbounds %struct.policydb, %struct.policydb* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @type_bounds_sanity_check, align 4
  %41 = load %struct.policydb*, %struct.policydb** %3, align 8
  %42 = call i32 @hashtab_map(i32 %39, i32 %40, %struct.policydb* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %45, %33, %21, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @hashtab_map(i32, i32, %struct.policydb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
