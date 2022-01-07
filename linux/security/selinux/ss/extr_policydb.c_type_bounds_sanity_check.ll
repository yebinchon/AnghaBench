; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_type_bounds_sanity_check.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_type_bounds_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type_datum = type { i32, i64, i64 }
%struct.policydb = type { %struct.type_datum** }

@POLICYDB_BOUNDS_MAXDEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"SELinux: type %s: too deep or looped boundary\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"SELinux: type %s: bounded by attribute %s\00", align 1
@SYM_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @type_bounds_sanity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_bounds_sanity_check(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.type_datum*, align 8
  %9 = alloca %struct.policydb*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.policydb*
  store %struct.policydb* %12, %struct.policydb** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.type_datum*
  store %struct.type_datum* %14, %struct.type_datum** %8, align 8
  br label %15

15:                                               ; preds = %62, %3
  %16 = load %struct.type_datum*, %struct.type_datum** %8, align 8
  %17 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @POLICYDB_BOUNDS_MAXDEPTH, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %64

30:                                               ; preds = %20
  %31 = load %struct.policydb*, %struct.policydb** %9, align 8
  %32 = getelementptr inbounds %struct.policydb, %struct.policydb* %31, i32 0, i32 0
  %33 = load %struct.type_datum**, %struct.type_datum*** %32, align 8
  %34 = load %struct.type_datum*, %struct.type_datum** %8, align 8
  %35 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.type_datum*, %struct.type_datum** %33, i64 %38
  %40 = load %struct.type_datum*, %struct.type_datum** %39, align 8
  store %struct.type_datum* %40, %struct.type_datum** %8, align 8
  %41 = load %struct.type_datum*, %struct.type_datum** %8, align 8
  %42 = icmp ne %struct.type_datum* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.type_datum*, %struct.type_datum** %8, align 8
  %47 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %30
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.policydb*, %struct.policydb** %9, align 8
  %53 = load i32, i32* @SYM_TYPES, align 4
  %54 = load %struct.type_datum*, %struct.type_datum** %8, align 8
  %55 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, 1
  %58 = call i32 @sym_name(%struct.policydb* %52, i32 %53, i64 %57)
  %59 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %30
  br label %15

63:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %50, %25
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sym_name(%struct.policydb*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
