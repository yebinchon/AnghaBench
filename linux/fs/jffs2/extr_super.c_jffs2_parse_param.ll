; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_super.c_jffs2_parse_param.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_super.c_jffs2_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.jffs2_sb_info* }
%struct.jffs2_sb_info = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fs_parameter = type { i32 }
%struct.fs_parse_result = type { i32 }

@jffs2_fs_parameters = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"jffs2: rp_size unrepresentable\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"jffs2: Too large reserve pool specified, max is %llu KB\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, %struct.fs_parameter*)* @jffs2_parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_parse_param(%struct.fs_context* %0, %struct.fs_parameter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.fs_parameter*, align 8
  %6 = alloca %struct.fs_parse_result, align 4
  %7 = alloca %struct.jffs2_sb_info*, align 8
  %8 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store %struct.fs_parameter* %1, %struct.fs_parameter** %5, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 0
  %11 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  store %struct.jffs2_sb_info* %11, %struct.jffs2_sb_info** %7, align 8
  %12 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %13 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %14 = call i32 @fs_parse(%struct.fs_context* %12, i32* @jffs2_fs_parameters, %struct.fs_parameter* %13, %struct.fs_parse_result* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %68

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %64 [
    i32 129, label %21
    i32 128, label %30
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %25 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %28 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  br label %67

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UINT_MAX, align 4
  %34 = sdiv i32 %33, 1024
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %38 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %3, align 4
  br label %68

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 1024
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %45 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %43, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %39
  %51 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %52 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %53 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, 1024
  %58 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %51, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 %58, i32* %3, align 4
  br label %68

59:                                               ; preds = %39
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %62 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  br label %67

64:                                               ; preds = %19
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %59, %21
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %64, %50, %36, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @fs_parse(%struct.fs_context*, i32*, %struct.fs_parameter*, %struct.fs_parse_result*) #1

declare dso_local i32 @invalf(%struct.fs_context*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
