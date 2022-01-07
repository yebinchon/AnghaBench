; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_type_write.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_type_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type_datum = type { i64, i64, i64, i64 }
%struct.policy_data = type { i8*, %struct.policydb* }
%struct.policydb = type { i64 }

@POLICYDB_VERSION_BOUNDARY = common dso_local global i64 0, align 8
@TYPEDATUM_PROPERTY_PRIMARY = common dso_local global i64 0, align 8
@TYPEDATUM_PROPERTY_ATTRIBUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @type_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_write(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.type_datum*, align 8
  %10 = alloca %struct.policy_data*, align 8
  %11 = alloca %struct.policydb*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [4 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.type_datum*
  store %struct.type_datum* %20, %struct.type_datum** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.policy_data*
  store %struct.policy_data* %22, %struct.policy_data** %10, align 8
  %23 = load %struct.policy_data*, %struct.policy_data** %10, align 8
  %24 = getelementptr inbounds %struct.policy_data, %struct.policy_data* %23, i32 0, i32 1
  %25 = load %struct.policydb*, %struct.policydb** %24, align 8
  store %struct.policydb* %25, %struct.policydb** %11, align 8
  %26 = load %struct.policy_data*, %struct.policy_data** %10, align 8
  %27 = getelementptr inbounds %struct.policy_data, %struct.policy_data* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %16, align 8
  store i64 0, i64* %15, align 8
  %31 = load i64, i64* %16, align 8
  %32 = call signext i8 @cpu_to_le32(i64 %31)
  %33 = load i64, i64* %15, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %15, align 8
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %33
  store i8 %32, i8* %35, align 1
  %36 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %37 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call signext i8 @cpu_to_le32(i64 %38)
  %40 = load i64, i64* %15, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %15, align 8
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %40
  store i8 %39, i8* %42, align 1
  %43 = load %struct.policydb*, %struct.policydb** %11, align 8
  %44 = getelementptr inbounds %struct.policydb, %struct.policydb* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @POLICYDB_VERSION_BOUNDARY, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %3
  store i64 0, i64* %17, align 8
  %49 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %50 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i64, i64* @TYPEDATUM_PROPERTY_PRIMARY, align 8
  %55 = load i64, i64* %17, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %17, align 8
  br label %57

57:                                               ; preds = %53, %48
  %58 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %59 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i64, i64* @TYPEDATUM_PROPERTY_ATTRIBUTE, align 8
  %64 = load i64, i64* %17, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %17, align 8
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i64, i64* %17, align 8
  %68 = call signext i8 @cpu_to_le32(i64 %67)
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %15, align 8
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %69
  store i8 %68, i8* %71, align 1
  %72 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %73 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call signext i8 @cpu_to_le32(i64 %74)
  %76 = load i64, i64* %15, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %15, align 8
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %76
  store i8 %75, i8* %78, align 1
  br label %87

79:                                               ; preds = %3
  %80 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %81 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call signext i8 @cpu_to_le32(i64 %82)
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %15, align 8
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %84
  store i8 %83, i8* %86, align 1
  br label %87

87:                                               ; preds = %79, %66
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %90 = call i64 @ARRAY_SIZE(i8* %89)
  %91 = icmp ugt i64 %88, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @BUG_ON(i32 %92)
  %94 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %95 = load i64, i64* %15, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @put_entry(i8* %94, i32 8, i64 %95, i8* %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %87
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %4, align 4
  br label %112

102:                                              ; preds = %87
  %103 = load i8*, i8** %8, align 8
  %104 = load i64, i64* %16, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @put_entry(i8* %103, i32 1, i64 %104, i8* %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %4, align 4
  br label %112

111:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %109, %100
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local signext i8 @cpu_to_le32(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @put_entry(i8*, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
