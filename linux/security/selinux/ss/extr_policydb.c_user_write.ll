; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_user_write.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_user_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_datum = type { i64, i64, i32, i32, i32 }
%struct.policy_data = type { i8*, %struct.policydb* }
%struct.policydb = type { i64 }

@POLICYDB_VERSION_BOUNDARY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @user_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_write(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.user_datum*, align 8
  %10 = alloca %struct.policy_data*, align 8
  %11 = alloca %struct.policydb*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [3 x i8], align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.user_datum*
  store %struct.user_datum* %19, %struct.user_datum** %9, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.policy_data*
  store %struct.policy_data* %21, %struct.policy_data** %10, align 8
  %22 = load %struct.policy_data*, %struct.policy_data** %10, align 8
  %23 = getelementptr inbounds %struct.policy_data, %struct.policy_data* %22, i32 0, i32 1
  %24 = load %struct.policydb*, %struct.policydb** %23, align 8
  store %struct.policydb* %24, %struct.policydb** %11, align 8
  %25 = load %struct.policy_data*, %struct.policy_data** %10, align 8
  %26 = getelementptr inbounds %struct.policy_data, %struct.policy_data* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %15, align 8
  store i64 0, i64* %14, align 8
  %30 = load i64, i64* %15, align 8
  %31 = call signext i8 @cpu_to_le32(i64 %30)
  %32 = load i64, i64* %14, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %14, align 8
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %32
  store i8 %31, i8* %34, align 1
  %35 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %36 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call signext i8 @cpu_to_le32(i64 %37)
  %39 = load i64, i64* %14, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %14, align 8
  %41 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %39
  store i8 %38, i8* %41, align 1
  %42 = load %struct.policydb*, %struct.policydb** %11, align 8
  %43 = getelementptr inbounds %struct.policydb, %struct.policydb* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @POLICYDB_VERSION_BOUNDARY, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %3
  %48 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %49 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call signext i8 @cpu_to_le32(i64 %50)
  %52 = load i64, i64* %14, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %14, align 8
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %52
  store i8 %51, i8* %54, align 1
  br label %55

55:                                               ; preds = %47, %3
  %56 = load i64, i64* %14, align 8
  %57 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %58 = call i64 @ARRAY_SIZE(i8* %57)
  %59 = icmp ugt i64 %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %63 = load i64, i64* %14, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @put_entry(i8* %62, i32 4, i64 %63, i8* %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %4, align 4
  br label %107

70:                                               ; preds = %55
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @put_entry(i8* %71, i32 1, i64 %72, i8* %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %16, align 4
  store i32 %78, i32* %4, align 4
  br label %107

79:                                               ; preds = %70
  %80 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %81 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %80, i32 0, i32 4
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @ebitmap_write(i32* %81, i8* %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %4, align 4
  br label %107

88:                                               ; preds = %79
  %89 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %90 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %89, i32 0, i32 3
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @mls_write_range_helper(i32* %90, i8* %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %4, align 4
  br label %107

97:                                               ; preds = %88
  %98 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %99 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %98, i32 0, i32 2
  %100 = load i8*, i8** %12, align 8
  %101 = call i32 @mls_write_level(i32* %99, i8* %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* %4, align 4
  br label %107

106:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %104, %95, %86, %77, %68
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local signext i8 @cpu_to_le32(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @put_entry(i8*, i32, i64, i8*) #1

declare dso_local i32 @ebitmap_write(i32*, i8*) #1

declare dso_local i32 @mls_write_range_helper(i32*, i8*) #1

declare dso_local i32 @mls_write_level(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
