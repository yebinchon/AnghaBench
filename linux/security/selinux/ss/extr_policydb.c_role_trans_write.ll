; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_role_trans_write.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_role_trans_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i64, %struct.role_trans* }
%struct.role_trans = type { i64, i64, i64, i64, %struct.role_trans* }

@POLICYDB_VERSION_ROLETRANS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, i8*)* @role_trans_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @role_trans_write(%struct.policydb* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.role_trans*, align 8
  %7 = alloca %struct.role_trans*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.policydb*, %struct.policydb** %4, align 8
  %12 = getelementptr inbounds %struct.policydb, %struct.policydb* %11, i32 0, i32 1
  %13 = load %struct.role_trans*, %struct.role_trans** %12, align 8
  store %struct.role_trans* %13, %struct.role_trans** %6, align 8
  store i64 0, i64* %9, align 8
  %14 = load %struct.role_trans*, %struct.role_trans** %6, align 8
  store %struct.role_trans* %14, %struct.role_trans** %7, align 8
  br label %15

15:                                               ; preds = %21, %2
  %16 = load %struct.role_trans*, %struct.role_trans** %7, align 8
  %17 = icmp ne %struct.role_trans* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %18
  %22 = load %struct.role_trans*, %struct.role_trans** %7, align 8
  %23 = getelementptr inbounds %struct.role_trans, %struct.role_trans* %22, i32 0, i32 4
  %24 = load %struct.role_trans*, %struct.role_trans** %23, align 8
  store %struct.role_trans* %24, %struct.role_trans** %7, align 8
  br label %15

25:                                               ; preds = %15
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @cpu_to_le32(i64 %26)
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @put_entry(i32* %29, i32 4, i32 1, i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %3, align 4
  br label %90

36:                                               ; preds = %25
  %37 = load %struct.role_trans*, %struct.role_trans** %6, align 8
  store %struct.role_trans* %37, %struct.role_trans** %7, align 8
  br label %38

38:                                               ; preds = %85, %36
  %39 = load %struct.role_trans*, %struct.role_trans** %7, align 8
  %40 = icmp ne %struct.role_trans* %39, null
  br i1 %40, label %41, label %89

41:                                               ; preds = %38
  %42 = load %struct.role_trans*, %struct.role_trans** %7, align 8
  %43 = getelementptr inbounds %struct.role_trans, %struct.role_trans* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @cpu_to_le32(i64 %44)
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.role_trans*, %struct.role_trans** %7, align 8
  %48 = getelementptr inbounds %struct.role_trans, %struct.role_trans* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @cpu_to_le32(i64 %49)
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.role_trans*, %struct.role_trans** %7, align 8
  %53 = getelementptr inbounds %struct.role_trans, %struct.role_trans* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @cpu_to_le32(i64 %54)
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @put_entry(i32* %57, i32 4, i32 3, i8* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %41
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  br label %90

64:                                               ; preds = %41
  %65 = load %struct.policydb*, %struct.policydb** %4, align 8
  %66 = getelementptr inbounds %struct.policydb, %struct.policydb* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @POLICYDB_VERSION_ROLETRANS, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %64
  %71 = load %struct.role_trans*, %struct.role_trans** %7, align 8
  %72 = getelementptr inbounds %struct.role_trans, %struct.role_trans* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @cpu_to_le32(i64 %73)
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @put_entry(i32* %76, i32 4, i32 1, i8* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %90

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %64
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.role_trans*, %struct.role_trans** %7, align 8
  %87 = getelementptr inbounds %struct.role_trans, %struct.role_trans* %86, i32 0, i32 4
  %88 = load %struct.role_trans*, %struct.role_trans** %87, align 8
  store %struct.role_trans* %88, %struct.role_trans** %7, align 8
  br label %38

89:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %81, %62, %34
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @put_entry(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
