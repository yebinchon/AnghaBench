; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_parse_param.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32, i32*, %struct.fuse_fs_context* }
%struct.fuse_fs_context = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.fs_parameter = type { i32* }
%struct.fs_parse_result = type { i32 }

@fuse_fs_parameters = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"fuse: Multiple sources specified\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"fuse: Multiple subtypes specified\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"fuse: Invalid rootmode\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"fuse: Invalid user_id\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"fuse: Invalid group_id\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"fuse: blksize only supported for fuseblk\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, %struct.fs_parameter*)* @fuse_parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_parse_param(%struct.fs_context* %0, %struct.fs_parameter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.fs_parameter*, align 8
  %6 = alloca %struct.fs_parse_result, align 4
  %7 = alloca %struct.fuse_fs_context*, align 8
  %8 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store %struct.fs_parameter* %1, %struct.fs_parameter** %5, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 2
  %11 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %10, align 8
  store %struct.fuse_fs_context* %11, %struct.fuse_fs_context** %7, align 8
  %12 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %13 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %14 = call i32 @fs_parse(%struct.fs_context* %12, i32* @fuse_fs_parameters, %struct.fs_parameter* %13, %struct.fs_parse_result* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %143

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %139 [
    i32 130, label %21
    i32 129, label %37
    i32 134, label %53
    i32 131, label %60
    i32 128, label %75
    i32 133, label %95
    i32 135, label %115
    i32 137, label %118
    i32 132, label %121
    i32 136, label %126
  ]

21:                                               ; preds = %19
  %22 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %23 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %28 = call i32 @invalf(%struct.fs_context* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %3, align 4
  br label %143

29:                                               ; preds = %21
  %30 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %31 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %34 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %36 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %142

37:                                               ; preds = %19
  %38 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %39 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %38, i32 0, i32 13
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %44 = call i32 @invalf(%struct.fs_context* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %3, align 4
  br label %143

45:                                               ; preds = %37
  %46 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %47 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %50 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %49, i32 0, i32 13
  store i32* %48, i32** %50, align 8
  %51 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %52 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  store i32 0, i32* %3, align 4
  br label %143

53:                                               ; preds = %19
  %54 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %57 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 8
  %58 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %59 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %142

60:                                               ; preds = %19
  %61 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fuse_valid_type(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %67 = call i32 @invalf(%struct.fs_context* %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %67, i32* %3, align 4
  br label %143

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %72 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %71, i32 0, i32 11
  store i32 %70, i32* %72, align 4
  %73 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %74 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  br label %142

75:                                               ; preds = %19
  %76 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %77 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %6, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @make_kuid(i32 %78, i32 %80)
  %82 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %83 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %82, i32 0, i32 10
  store i32 %81, i32* %83, align 8
  %84 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %85 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @uid_valid(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %75
  %90 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %91 = call i32 @invalf(%struct.fs_context* %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 %91, i32* %3, align 4
  br label %143

92:                                               ; preds = %75
  %93 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %94 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  br label %142

95:                                               ; preds = %19
  %96 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %97 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %6, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @make_kgid(i32 %98, i32 %100)
  %102 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %103 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %102, i32 0, i32 9
  store i32 %101, i32* %103, align 4
  %104 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %105 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @gid_valid(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %95
  %110 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %111 = call i32 @invalf(%struct.fs_context* %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 %111, i32* %3, align 4
  br label %143

112:                                              ; preds = %95
  %113 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %114 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %113, i32 0, i32 3
  store i32 1, i32* %114, align 4
  br label %142

115:                                              ; preds = %19
  %116 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %117 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %116, i32 0, i32 4
  store i32 1, i32* %117, align 8
  br label %142

118:                                              ; preds = %19
  %119 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %120 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %119, i32 0, i32 5
  store i32 1, i32* %120, align 4
  br label %142

121:                                              ; preds = %19
  %122 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %6, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %125 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %124, i32 0, i32 8
  store i32 %123, i32* %125, align 8
  br label %142

126:                                              ; preds = %19
  %127 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %128 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %133 = call i32 @invalf(%struct.fs_context* %132, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 %133, i32* %3, align 4
  br label %143

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %6, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %7, align 8
  %138 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 8
  br label %142

139:                                              ; preds = %19
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %143

142:                                              ; preds = %134, %121, %118, %115, %112, %92, %68, %53, %29
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %139, %131, %109, %89, %65, %45, %42, %26, %17
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @fs_parse(%struct.fs_context*, i32*, %struct.fs_parameter*, %struct.fs_parse_result*) #1

declare dso_local i32 @invalf(%struct.fs_context*, i8*) #1

declare dso_local i32 @fuse_valid_type(i32) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @gid_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
