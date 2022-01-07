; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_context_struct_to_string.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_context_struct_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.context = type { i64, i64, i64, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYM_USERS = common dso_local global i32 0, align 4
@SYM_ROLES = common dso_local global i32 0, align 4
@SYM_TYPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s:%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.context*, i8**, i64*)* @context_struct_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_struct_to_string(%struct.policydb* %0, %struct.context* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.policydb*, align 8
  %7 = alloca %struct.context*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  store %struct.policydb* %0, %struct.policydb** %6, align 8
  store %struct.context* %1, %struct.context** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i8**, i8*** %8, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i8**, i8*** %8, align 8
  store i8* null, i8** %14, align 8
  br label %15

15:                                               ; preds = %13, %4
  %16 = load i64*, i64** %9, align 8
  store i64 0, i64* %16, align 8
  %17 = load %struct.context*, %struct.context** %7, align 8
  %18 = getelementptr inbounds %struct.context, %struct.context* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load %struct.context*, %struct.context** %7, align 8
  %23 = getelementptr inbounds %struct.context, %struct.context* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i8**, i8*** %8, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %21
  %29 = load %struct.context*, %struct.context** %7, align 8
  %30 = getelementptr inbounds %struct.context, %struct.context* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call i8* @kstrdup(i32 %31, i32 %32)
  %34 = load i8**, i8*** %8, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %132

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %21
  store i32 0, i32* %5, align 4
  br label %132

43:                                               ; preds = %15
  %44 = load %struct.policydb*, %struct.policydb** %6, align 8
  %45 = load i32, i32* @SYM_USERS, align 4
  %46 = load %struct.context*, %struct.context** %7, align 8
  %47 = getelementptr inbounds %struct.context, %struct.context* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 1
  %50 = call i8* @sym_name(%struct.policydb* %44, i32 %45, i64 %49)
  %51 = call i64 @strlen(i8* %50)
  %52 = add nsw i64 %51, 1
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %52
  store i64 %55, i64* %53, align 8
  %56 = load %struct.policydb*, %struct.policydb** %6, align 8
  %57 = load i32, i32* @SYM_ROLES, align 4
  %58 = load %struct.context*, %struct.context** %7, align 8
  %59 = getelementptr inbounds %struct.context, %struct.context* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, 1
  %62 = call i8* @sym_name(%struct.policydb* %56, i32 %57, i64 %61)
  %63 = call i64 @strlen(i8* %62)
  %64 = add nsw i64 %63, 1
  %65 = load i64*, i64** %9, align 8
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %64
  store i64 %67, i64* %65, align 8
  %68 = load %struct.policydb*, %struct.policydb** %6, align 8
  %69 = load i32, i32* @SYM_TYPES, align 4
  %70 = load %struct.context*, %struct.context** %7, align 8
  %71 = getelementptr inbounds %struct.context, %struct.context* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, 1
  %74 = call i8* @sym_name(%struct.policydb* %68, i32 %69, i64 %73)
  %75 = call i64 @strlen(i8* %74)
  %76 = add nsw i64 %75, 1
  %77 = load i64*, i64** %9, align 8
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %76
  store i64 %79, i64* %77, align 8
  %80 = load %struct.policydb*, %struct.policydb** %6, align 8
  %81 = load %struct.context*, %struct.context** %7, align 8
  %82 = call i64 @mls_compute_context_len(%struct.policydb* %80, %struct.context* %81)
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %82
  store i64 %85, i64* %83, align 8
  %86 = load i8**, i8*** %8, align 8
  %87 = icmp ne i8** %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %132

89:                                               ; preds = %43
  %90 = load i64*, i64** %9, align 8
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @GFP_ATOMIC, align 4
  %93 = call i8* @kmalloc(i64 %91, i32 %92)
  store i8* %93, i8** %10, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %132

99:                                               ; preds = %89
  %100 = load i8*, i8** %10, align 8
  %101 = load i8**, i8*** %8, align 8
  store i8* %100, i8** %101, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load %struct.policydb*, %struct.policydb** %6, align 8
  %104 = load i32, i32* @SYM_USERS, align 4
  %105 = load %struct.context*, %struct.context** %7, align 8
  %106 = getelementptr inbounds %struct.context, %struct.context* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %107, 1
  %109 = call i8* @sym_name(%struct.policydb* %103, i32 %104, i64 %108)
  %110 = load %struct.policydb*, %struct.policydb** %6, align 8
  %111 = load i32, i32* @SYM_ROLES, align 4
  %112 = load %struct.context*, %struct.context** %7, align 8
  %113 = getelementptr inbounds %struct.context, %struct.context* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, 1
  %116 = call i8* @sym_name(%struct.policydb* %110, i32 %111, i64 %115)
  %117 = load %struct.policydb*, %struct.policydb** %6, align 8
  %118 = load i32, i32* @SYM_TYPES, align 4
  %119 = load %struct.context*, %struct.context** %7, align 8
  %120 = getelementptr inbounds %struct.context, %struct.context* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, 1
  %123 = call i8* @sym_name(%struct.policydb* %117, i32 %118, i64 %122)
  %124 = call i32 @sprintf(i8* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %109, i8* %116, i8* %123)
  %125 = load i8*, i8** %10, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %10, align 8
  %128 = load %struct.policydb*, %struct.policydb** %6, align 8
  %129 = load %struct.context*, %struct.context** %7, align 8
  %130 = call i32 @mls_sid_to_context(%struct.policydb* %128, %struct.context* %129, i8** %10)
  %131 = load i8*, i8** %10, align 8
  store i8 0, i8* %131, align 1
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %99, %96, %88, %42, %38
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i8* @kstrdup(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @sym_name(%struct.policydb*, i32, i64) #1

declare dso_local i64 @mls_compute_context_len(%struct.policydb*, %struct.context*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @mls_sid_to_context(%struct.policydb*, %struct.context*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
