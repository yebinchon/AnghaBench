; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_parse_param.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.hugetlbfs_fs_context* }
%struct.hugetlbfs_fs_context = type { i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i32 }
%struct.fs_parameter = type { i32, i32* }
%struct.fs_parse_result = type { i32 }

@hugetlb_fs_parameters = common dso_local global i32 0, align 4
@SIZE_STD = common dso_local global i8* null, align 8
@SIZE_PERCENT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unsupported page size %lu MB\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"hugetlbfs: Bad value '%s' for mount option '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, %struct.fs_parameter*)* @hugetlbfs_parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlbfs_parse_param(%struct.fs_context* %0, %struct.fs_parameter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.fs_parameter*, align 8
  %6 = alloca %struct.hugetlbfs_fs_context*, align 8
  %7 = alloca %struct.fs_parse_result, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store %struct.fs_parameter* %1, %struct.fs_parameter** %5, align 8
  %11 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %12 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %11, i32 0, i32 0
  %13 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %12, align 8
  store %struct.hugetlbfs_fs_context* %13, %struct.hugetlbfs_fs_context** %6, align 8
  %14 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %15 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %16 = call i32 @fs_parse(%struct.fs_context* %14, i32* @hugetlb_fs_parameters, %struct.fs_parameter* %15, %struct.fs_parse_result* %7)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %3, align 4
  br label %162

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %150 [
    i32 128, label %23
    i32 134, label %37
    i32 132, label %51
    i32 129, label %57
    i32 131, label %85
    i32 130, label %101
    i32 133, label %122
  ]

23:                                               ; preds = %21
  %24 = call i32 (...) @current_user_ns()
  %25 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @make_kuid(i32 %24, i32 %26)
  %28 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %29 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %31 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @uid_valid(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  br label %153

36:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %162

37:                                               ; preds = %21
  %38 = call i32 (...) @current_user_ns()
  %39 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @make_kgid(i32 %38, i32 %40)
  %42 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %43 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %45 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @gid_valid(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  br label %153

50:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %162

51:                                               ; preds = %21
  %52 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 1023
  %55 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %56 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  store i32 0, i32* %3, align 4
  br label %162

57:                                               ; preds = %21
  %58 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %59 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @isdigit(i32 %62) #3
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  br label %153

66:                                               ; preds = %57
  %67 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %68 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i8* @memparse(i32* %69, i8** %8)
  %71 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %72 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** @SIZE_STD, align 8
  %74 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %75 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 37
  br i1 %79, label %80, label %84

80:                                               ; preds = %66
  %81 = load i8*, i8** @SIZE_PERCENT, align 8
  %82 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %83 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %80, %66
  store i32 0, i32* %3, align 4
  br label %162

85:                                               ; preds = %21
  %86 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %87 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @isdigit(i32 %90) #3
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  br label %153

94:                                               ; preds = %85
  %95 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %96 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i8* @memparse(i32* %97, i8** %8)
  %99 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %100 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  store i32 0, i32* %3, align 4
  br label %162

101:                                              ; preds = %21
  %102 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %103 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = call i8* @memparse(i32* %104, i8** %8)
  %106 = ptrtoint i8* %105 to i64
  store i64 %106, i64* %9, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @size_to_hstate(i64 %107)
  %109 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %110 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %112 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %101
  %116 = load i64, i64* %9, align 8
  %117 = lshr i64 %116, 20
  %118 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %162

121:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %162

122:                                              ; preds = %21
  %123 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %124 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @isdigit(i32 %127) #3
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %122
  br label %153

131:                                              ; preds = %122
  %132 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %133 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i8* @memparse(i32* %134, i8** %8)
  %136 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %137 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** @SIZE_STD, align 8
  %139 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %140 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 37
  br i1 %144, label %145, label %149

145:                                              ; preds = %131
  %146 = load i8*, i8** @SIZE_PERCENT, align 8
  %147 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %148 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %145, %131
  store i32 0, i32* %3, align 4
  br label %162

150:                                              ; preds = %21
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %162

153:                                              ; preds = %130, %93, %65, %49, %35
  %154 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %155 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %156 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %159 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @invalf(%struct.fs_context* %154, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32* %157, i32 %160)
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %153, %150, %149, %121, %115, %94, %84, %51, %50, %36, %19
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @fs_parse(%struct.fs_context*, i32*, %struct.fs_parameter*, %struct.fs_parse_result*) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @gid_valid(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i8* @memparse(i32*, i8**) #1

declare dso_local i32 @size_to_hstate(i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @invalf(%struct.fs_context*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
