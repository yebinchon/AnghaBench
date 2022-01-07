; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_role_read.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_role_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i64 }
%struct.hashtab = type { i32 }
%struct.role_datum = type { i64, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POLICYDB_VERSION_BOUNDARY = common dso_local global i64 0, align 8
@OBJECT_R = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OBJECT_R_VAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"SELinux: Role %s has wrong value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.hashtab*, i8*)* @role_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @role_read(%struct.policydb* %0, %struct.hashtab* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.hashtab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.role_datum*, align 8
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
  %15 = call %struct.role_datum* @kzalloc(i32 24, i32 %14)
  store %struct.role_datum* %15, %struct.role_datum** %9, align 8
  %16 = load %struct.role_datum*, %struct.role_datum** %9, align 8
  %17 = icmp ne %struct.role_datum* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %118

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
  br label %113

39:                                               ; preds = %28
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le32_to_cpu(i32 %41)
  store i8* %42, i8** %13, align 8
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le32_to_cpu(i32 %44)
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.role_datum*, %struct.role_datum** %9, align 8
  %48 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.policydb*, %struct.policydb** %5, align 8
  %50 = getelementptr inbounds %struct.policydb, %struct.policydb* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @POLICYDB_VERSION_BOUNDARY, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %39
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le32_to_cpu(i32 %56)
  %58 = load %struct.role_datum*, %struct.role_datum** %9, align 8
  %59 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %54, %39
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @str_read(i8** %8, i32 %61, i8* %62, i8* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %113

68:                                               ; preds = %60
  %69 = load %struct.role_datum*, %struct.role_datum** %9, align 8
  %70 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %69, i32 0, i32 2
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @ebitmap_read(i32* %70, i8* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %113

76:                                               ; preds = %68
  %77 = load %struct.role_datum*, %struct.role_datum** %9, align 8
  %78 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %77, i32 0, i32 1
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @ebitmap_read(i32* %78, i8* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %113

84:                                               ; preds = %76
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* @OBJECT_R, align 4
  %87 = call i64 @strcmp(i8* %85, i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  %92 = load %struct.role_datum*, %struct.role_datum** %9, align 8
  %93 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @OBJECT_R_VAL, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %89
  %98 = load i32, i32* @OBJECT_R, align 4
  %99 = load %struct.role_datum*, %struct.role_datum** %9, align 8
  %100 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %98, i64 %101)
  br label %113

103:                                              ; preds = %89
  store i32 0, i32* %10, align 4
  br label %113

104:                                              ; preds = %84
  %105 = load %struct.hashtab*, %struct.hashtab** %6, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load %struct.role_datum*, %struct.role_datum** %9, align 8
  %108 = call i32 @hashtab_insert(%struct.hashtab* %105, i8* %106, %struct.role_datum* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %113

112:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %118

113:                                              ; preds = %111, %103, %97, %83, %75, %67, %38
  %114 = load i8*, i8** %8, align 8
  %115 = load %struct.role_datum*, %struct.role_datum** %9, align 8
  %116 = call i32 @role_destroy(i8* %114, %struct.role_datum* %115, i32* null)
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %113, %112, %18
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.role_datum* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @str_read(i8**, i32, i8*, i8*) #1

declare dso_local i32 @ebitmap_read(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32 @hashtab_insert(%struct.hashtab*, i8*, %struct.role_datum*) #1

declare dso_local i32 @role_destroy(i8*, %struct.role_datum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
