; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_user_read.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_user_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i64 }
%struct.hashtab = type { i32 }
%struct.user_datum = type { i32, i32, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POLICYDB_VERSION_BOUNDARY = common dso_local global i64 0, align 8
@POLICYDB_VERSION_MLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.hashtab*, i8*)* @user_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_read(%struct.policydb* %0, %struct.hashtab* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.hashtab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.user_datum*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca i8*, align 8
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.hashtab* %1, %struct.hashtab** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 2, i32* %11, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.user_datum* @kzalloc(i32 32, i32 %14)
  store %struct.user_datum* %15, %struct.user_datum** %9, align 8
  %16 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %17 = icmp ne %struct.user_datum* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %112

21:                                               ; preds = %3
  %22 = load %struct.policydb*, %struct.policydb** %5, align 8
  %23 = getelementptr inbounds %struct.policydb, %struct.policydb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @POLICYDB_VERSION_BOUNDARY, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 3, i32* %11, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @next_entry(i32* %29, i8* %30, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %107

39:                                               ; preds = %28
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le32_to_cpu(i32 %41)
  store i8* %42, i8** %13, align 8
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le32_to_cpu(i32 %44)
  %46 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %47 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load %struct.policydb*, %struct.policydb** %5, align 8
  %49 = getelementptr inbounds %struct.policydb, %struct.policydb* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @POLICYDB_VERSION_BOUNDARY, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %39
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le32_to_cpu(i32 %55)
  %57 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %58 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %53, %39
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @str_read(i8** %8, i32 %60, i8* %61, i8* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %107

67:                                               ; preds = %59
  %68 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %69 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %68, i32 0, i32 2
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @ebitmap_read(i32* %69, i8* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %107

75:                                               ; preds = %67
  %76 = load %struct.policydb*, %struct.policydb** %5, align 8
  %77 = getelementptr inbounds %struct.policydb, %struct.policydb* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @POLICYDB_VERSION_MLS, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %75
  %82 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %83 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %82, i32 0, i32 1
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @mls_read_range_helper(i32* %83, i8* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %107

89:                                               ; preds = %81
  %90 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %91 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %90, i32 0, i32 0
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @mls_read_level(i32* %91, i8* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %107

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %75
  %99 = load %struct.hashtab*, %struct.hashtab** %6, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %102 = call i32 @hashtab_insert(%struct.hashtab* %99, i8* %100, %struct.user_datum* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %107

106:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %112

107:                                              ; preds = %105, %96, %88, %74, %66, %38
  %108 = load i8*, i8** %8, align 8
  %109 = load %struct.user_datum*, %struct.user_datum** %9, align 8
  %110 = call i32 @user_destroy(i8* %108, %struct.user_datum* %109, i32* null)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %107, %106, %18
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.user_datum* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @str_read(i8**, i32, i8*, i8*) #1

declare dso_local i32 @ebitmap_read(i32*, i8*) #1

declare dso_local i32 @mls_read_range_helper(i32*, i8*) #1

declare dso_local i32 @mls_read_level(i32*, i8*) #1

declare dso_local i32 @hashtab_insert(%struct.hashtab*, i8*, %struct.user_datum*) #1

declare dso_local i32 @user_destroy(i8*, %struct.user_datum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
