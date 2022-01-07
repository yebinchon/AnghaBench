; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_string.c_string_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_string.c_string_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_string_info* }
%struct.xt_string_info = type { i64, i64, i8*, i64, %struct.ts_config*, i32, %struct.TYPE_4__ }
%struct.ts_config = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TS_AUTOLOAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XT_STRING_MAX_ALGO_NAME_SIZE = common dso_local global i32 0, align 4
@XT_STRING_MAX_PATTERN_SIZE = common dso_local global i64 0, align 8
@XT_STRING_FLAG_IGNORECASE = common dso_local global i32 0, align 4
@XT_STRING_FLAG_INVERT = common dso_local global i32 0, align 4
@TS_IGNORECASE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @string_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_string_info*, align 8
  %5 = alloca %struct.ts_config*, align 8
  %6 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %7 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %8 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %7, i32 0, i32 0
  %9 = load %struct.xt_string_info*, %struct.xt_string_info** %8, align 8
  store %struct.xt_string_info* %9, %struct.xt_string_info** %4, align 8
  %10 = load i32, i32* @TS_AUTOLOAD, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %12 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %15 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %95

21:                                               ; preds = %1
  %22 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %23 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @XT_STRING_MAX_ALGO_NAME_SIZE, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %95

35:                                               ; preds = %21
  %36 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %37 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @XT_STRING_MAX_PATTERN_SIZE, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %95

44:                                               ; preds = %35
  %45 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %46 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @XT_STRING_FLAG_IGNORECASE, align 4
  %51 = load i32, i32* @XT_STRING_FLAG_INVERT, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %49, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %95

59:                                               ; preds = %44
  %60 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %61 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @XT_STRING_FLAG_IGNORECASE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @TS_IGNORECASE, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %68, %59
  %73 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %74 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %77 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %80 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call %struct.ts_config* @textsearch_prepare(i8* %75, i32 %78, i64 %81, i32 %82, i32 %83)
  store %struct.ts_config* %84, %struct.ts_config** %5, align 8
  %85 = load %struct.ts_config*, %struct.ts_config** %5, align 8
  %86 = call i64 @IS_ERR(%struct.ts_config* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %72
  %89 = load %struct.ts_config*, %struct.ts_config** %5, align 8
  %90 = call i32 @PTR_ERR(%struct.ts_config* %89)
  store i32 %90, i32* %2, align 4
  br label %95

91:                                               ; preds = %72
  %92 = load %struct.ts_config*, %struct.ts_config** %5, align 8
  %93 = load %struct.xt_string_info*, %struct.xt_string_info** %4, align 8
  %94 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %93, i32 0, i32 4
  store %struct.ts_config* %92, %struct.ts_config** %94, align 8
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %88, %56, %41, %32, %18
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.ts_config* @textsearch_prepare(i8*, i32, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ts_config*) #1

declare dso_local i32 @PTR_ERR(%struct.ts_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
