; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_validate_data_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_validate_data_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_zbranch = type { i32, i64, i32, %union.ubifs_key, i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_ch = type { i64, i32 }

@UBIFS_DATA_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"bad node type (%d but expected %d)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"expected node type %d\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"bad node length %d, expected %d\00", align 1
@UBIFS_KEY_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"bad key in node at LEB %d:%d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"looked for key \00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"found node's key \00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"bad node at LEB %d:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*, %struct.ubifs_zbranch*)* @validate_data_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_data_node(%struct.ubifs_info* %0, i8* %1, %struct.ubifs_zbranch* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ubifs_zbranch*, align 8
  %8 = alloca %union.ubifs_key, align 4
  %9 = alloca %struct.ubifs_ch*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ubifs_zbranch* %2, %struct.ubifs_zbranch** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %13, %struct.ubifs_ch** %9, align 8
  %14 = load %struct.ubifs_ch*, %struct.ubifs_ch** %9, align 8
  %15 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UBIFS_DATA_NODE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %21 = load %struct.ubifs_ch*, %struct.ubifs_ch** %9, align 8
  %22 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* @UBIFS_DATA_NODE, align 8
  %26 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25)
  br label %110

27:                                               ; preds = %3
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %31 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %34 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ubifs_check_node(%struct.ubifs_info* %28, i8* %29, i32 %32, i64 %35, i32 0, i32 0)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %41 = load i64, i64* @UBIFS_DATA_NODE, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %113

44:                                               ; preds = %27
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %48 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ubifs_node_check_hash(%struct.ubifs_info* %45, i8* %46, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %44
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %57 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %60 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %63 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @ubifs_bad_hash(%struct.ubifs_info* %54, i8* %55, i32 %58, i32 %61, i64 %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %127

67:                                               ; preds = %44
  %68 = load %struct.ubifs_ch*, %struct.ubifs_ch** %9, align 8
  %69 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @le32_to_cpu(i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %74 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %81 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %82)
  br label %110

84:                                               ; preds = %67
  %85 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* @UBIFS_KEY_OFFSET, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr i8, i8* %86, i64 %88
  %90 = call i32 @key_read(%struct.ubifs_info* %85, i8* %89, %union.ubifs_key* %8)
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %92 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %93 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %92, i32 0, i32 3
  %94 = call i32 @keys_eq(%struct.ubifs_info* %91, %union.ubifs_key* %93, %union.ubifs_key* %8)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %84
  %97 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %98 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %99 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %102 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %100, i64 %103)
  %105 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %106 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %105, i32 0, i32 3
  %107 = call i32 @dbg_tnck(%union.ubifs_key* %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %108 = call i32 @dbg_tnck(%union.ubifs_key* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %110

109:                                              ; preds = %84
  store i32 0, i32* %4, align 4
  br label %127

110:                                              ; preds = %96, %77, %19
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %110, %39
  %114 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %115 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %116 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %119 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %117, i64 %120)
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @ubifs_dump_node(%struct.ubifs_info* %122, i8* %123)
  %125 = call i32 (...) @dump_stack()
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %113, %109, %53
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, ...) #1

declare dso_local i32 @ubifs_check_node(%struct.ubifs_info*, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @ubifs_node_check_hash(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @ubifs_bad_hash(%struct.ubifs_info*, i8*, i32, i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @key_read(%struct.ubifs_info*, i8*, %union.ubifs_key*) #1

declare dso_local i32 @keys_eq(%struct.ubifs_info*, %union.ubifs_key*, %union.ubifs_key*) #1

declare dso_local i32 @dbg_tnck(%union.ubifs_key*, i8*) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
