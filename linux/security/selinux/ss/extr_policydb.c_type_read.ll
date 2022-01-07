; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_type_read.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_type_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i64 }
%struct.hashtab = type { i32 }
%struct.type_datum = type { i32, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POLICYDB_VERSION_BOUNDARY = common dso_local global i64 0, align 8
@TYPEDATUM_PROPERTY_PRIMARY = common dso_local global i32 0, align 4
@TYPEDATUM_PROPERTY_ATTRIBUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.hashtab*, i8*)* @type_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_read(%struct.policydb* %0, %struct.hashtab* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.hashtab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.type_datum*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.hashtab* %1, %struct.hashtab** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 3, i32* %11, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.type_datum* @kzalloc(i32 24, i32 %15)
  store %struct.type_datum* %16, %struct.type_datum** %9, align 8
  %17 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %18 = icmp ne %struct.type_datum* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %110

22:                                               ; preds = %3
  %23 = load %struct.policydb*, %struct.policydb** %5, align 8
  %24 = getelementptr inbounds %struct.policydb, %struct.policydb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @POLICYDB_VERSION_BOUNDARY, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 4, i32* %11, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @next_entry(i32* %30, i8* %31, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %105

40:                                               ; preds = %29
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %42 = load i32, i32* %41, align 16
  %43 = call i8* @le32_to_cpu(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le32_to_cpu(i32 %46)
  %48 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %49 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.policydb*, %struct.policydb** %5, align 8
  %51 = getelementptr inbounds %struct.policydb, %struct.policydb* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @POLICYDB_VERSION_BOUNDARY, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %40
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @le32_to_cpu(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @TYPEDATUM_PROPERTY_PRIMARY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %66 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %55
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @TYPEDATUM_PROPERTY_ATTRIBUTE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %74 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @le32_to_cpu(i32 %77)
  %79 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %80 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  br label %88

81:                                               ; preds = %40
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @le32_to_cpu(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %87 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %81, %75
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @str_read(i8** %8, i32 %89, i8* %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %105

96:                                               ; preds = %88
  %97 = load %struct.hashtab*, %struct.hashtab** %6, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %100 = call i32 @hashtab_insert(%struct.hashtab* %97, i8* %98, %struct.type_datum* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %105

104:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %110

105:                                              ; preds = %103, %95, %39
  %106 = load i8*, i8** %8, align 8
  %107 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %108 = call i32 @type_destroy(i8* %106, %struct.type_datum* %107, i32* null)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %105, %104, %19
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.type_datum* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @str_read(i8**, i32, i8*, i32) #1

declare dso_local i32 @hashtab_insert(%struct.hashtab*, i8*, %struct.type_datum*) #1

declare dso_local i32 @type_destroy(i8*, %struct.type_datum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
