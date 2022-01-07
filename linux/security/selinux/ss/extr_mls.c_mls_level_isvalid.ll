; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_mls.c_mls_level_isvalid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_mls.c_mls_level_isvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.mls_level = type { i64, i32 }
%struct.level_datum = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SYM_LEVELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mls_level_isvalid(%struct.policydb* %0, %struct.mls_level* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca %struct.mls_level*, align 8
  %6 = alloca %struct.level_datum*, align 8
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store %struct.mls_level* %1, %struct.mls_level** %5, align 8
  %7 = load %struct.mls_level*, %struct.mls_level** %5, align 8
  %8 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.mls_level*, %struct.mls_level** %5, align 8
  %13 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.policydb*, %struct.policydb** %4, align 8
  %16 = getelementptr inbounds %struct.policydb, %struct.policydb* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %49

21:                                               ; preds = %11
  %22 = load %struct.policydb*, %struct.policydb** %4, align 8
  %23 = getelementptr inbounds %struct.policydb, %struct.policydb* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.policydb*, %struct.policydb** %4, align 8
  %27 = load i32, i32* @SYM_LEVELS, align 4
  %28 = load %struct.mls_level*, %struct.mls_level** %5, align 8
  %29 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 1
  %32 = call i32 @sym_name(%struct.policydb* %26, i32 %27, i64 %31)
  %33 = call %struct.level_datum* @hashtab_search(i32 %25, i32 %32)
  store %struct.level_datum* %33, %struct.level_datum** %6, align 8
  %34 = load %struct.level_datum*, %struct.level_datum** %6, align 8
  %35 = icmp ne %struct.level_datum* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %49

37:                                               ; preds = %21
  %38 = load %struct.level_datum*, %struct.level_datum** %6, align 8
  %39 = getelementptr inbounds %struct.level_datum, %struct.level_datum* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.mls_level*, %struct.mls_level** %5, align 8
  %43 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %42, i32 0, i32 1
  %44 = load %struct.policydb*, %struct.policydb** %4, align 8
  %45 = getelementptr inbounds %struct.policydb, %struct.policydb* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ebitmap_contains(i32* %41, i32* %43, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %37, %36, %20
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.level_datum* @hashtab_search(i32, i32) #1

declare dso_local i32 @sym_name(%struct.policydb*, i32, i64) #1

declare dso_local i32 @ebitmap_contains(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
