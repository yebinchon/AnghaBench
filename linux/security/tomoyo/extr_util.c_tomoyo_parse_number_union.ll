; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_parse_number_union.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_parse_number_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i8* }
%struct.tomoyo_number_union = type { i64*, i64*, i32* }

@TOMOYO_NUMBER_GROUP = common dso_local global i32 0, align 4
@TOMOYO_VALUE_TYPE_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_parse_number_union(%struct.tomoyo_acl_param* %0, %struct.tomoyo_number_union* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_acl_param*, align 8
  %5 = alloca %struct.tomoyo_number_union*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %4, align 8
  store %struct.tomoyo_number_union* %1, %struct.tomoyo_number_union** %5, align 8
  %9 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %5, align 8
  %10 = call i32 @memset(%struct.tomoyo_number_union* %9, i32 0, i32 24)
  %11 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %12 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 64
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %20 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %20, align 8
  %23 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %24 = load i32, i32* @TOMOYO_NUMBER_GROUP, align 4
  %25 = call i32* @tomoyo_get_group(%struct.tomoyo_acl_param* %23, i32 %24)
  %26 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %5, align 8
  %27 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %5, align 8
  %29 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %103

33:                                               ; preds = %2
  %34 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %35 = call i8* @tomoyo_read_token(%struct.tomoyo_acl_param* %34)
  store i8* %35, i8** %6, align 8
  %36 = call i64 @tomoyo_parse_ulong(i64* %8, i8** %6)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @TOMOYO_VALUE_TYPE_INVALID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %103

41:                                               ; preds = %33
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %5, align 8
  %44 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %42, i64* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %5, align 8
  %49 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 %47, i64* %51, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %41
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %5, align 8
  %58 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  store i64 %56, i64* %60, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %5, align 8
  %63 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  store i64 %61, i64* %65, align 8
  store i32 1, i32* %3, align 4
  br label %103

66:                                               ; preds = %41
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 45
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %103

73:                                               ; preds = %66
  %74 = call i64 @tomoyo_parse_ulong(i64* %8, i8** %6)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @TOMOYO_VALUE_TYPE_INVALID, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %91, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %5, align 8
  %85 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83, %78, %73
  store i32 0, i32* %3, align 4
  br label %103

92:                                               ; preds = %83
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %5, align 8
  %95 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  store i64 %93, i64* %97, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %5, align 8
  %100 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  store i64 %98, i64* %102, align 8
  store i32 1, i32* %3, align 4
  br label %103

103:                                              ; preds = %92, %91, %72, %55, %40, %18
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @memset(%struct.tomoyo_number_union*, i32, i32) #1

declare dso_local i32* @tomoyo_get_group(%struct.tomoyo_acl_param*, i32) #1

declare dso_local i8* @tomoyo_read_token(%struct.tomoyo_acl_param*) #1

declare dso_local i64 @tomoyo_parse_ulong(i64*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
