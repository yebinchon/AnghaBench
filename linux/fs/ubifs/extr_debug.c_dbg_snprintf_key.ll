; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_snprintf_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_snprintf_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32* }

@UBIFS_SIMPLE_KEY_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(%lu, %s)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"(%lu, %s, %#08x)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"(%lu, %s, %u)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"(bad key type: %#08x, %#08x)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"bad key format %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dbg_snprintf_key(%struct.ubifs_info* %0, %union.ubifs_key* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** %9, align 8
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %13 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %14 = call i32 @key_type(%struct.ubifs_info* %12, %union.ubifs_key* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UBIFS_SIMPLE_KEY_FMT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %103

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %84 [
    i32 130, label %22
    i32 131, label %36
    i32 128, label %36
    i32 132, label %53
    i32 129, label %70
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %26 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %27 = call i64 @key_inum(%struct.ubifs_info* %25, %union.ubifs_key* %26)
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @get_key_type(i32 %29)
  %31 = call i64 (i8*, i32, i8*, i32, ...) @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  br label %102

36:                                               ; preds = %20, %20
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %40 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %41 = call i64 @key_inum(%struct.ubifs_info* %39, %union.ubifs_key* %40)
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @get_key_type(i32 %43)
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %46 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %47 = call i32 @key_hash(%struct.ubifs_info* %45, %union.ubifs_key* %46)
  %48 = call i64 (i8*, i32, i8*, i32, ...) @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %8, align 4
  br label %102

53:                                               ; preds = %20
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %57 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %58 = call i64 @key_inum(%struct.ubifs_info* %56, %union.ubifs_key* %57)
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @get_key_type(i32 %60)
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %63 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %64 = call i32 @key_block(%struct.ubifs_info* %62, %union.ubifs_key* %63)
  %65 = call i64 (i8*, i32, i8*, i32, ...) @snprintf(i8* %54, i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %61, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  br label %102

70:                                               ; preds = %20
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %74 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %75 = call i64 @key_inum(%struct.ubifs_info* %73, %union.ubifs_key* %74)
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @get_key_type(i32 %77)
  %79 = call i64 (i8*, i32, i8*, i32, ...) @snprintf(i8* %71, i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %8, align 4
  br label %102

84:                                               ; preds = %20
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %88 = bitcast %union.ubifs_key* %87 to i32**
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %93 = bitcast %union.ubifs_key* %92 to i32**
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 (i8*, i32, i8*, i32, ...) @snprintf(i8* %85, i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %84, %70, %53, %36, %22
  br label %114

103:                                              ; preds = %4
  %104 = load i8*, i8** %9, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %107 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 (i8*, i32, i8*, i32, ...) @snprintf(i8* %104, i32 %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = sub nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %103, %102
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = icmp sgt i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @ubifs_assert(%struct.ubifs_info* %115, i32 %118)
  %120 = load i8*, i8** %9, align 8
  ret i8* %120
}

declare dso_local i32 @key_type(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i64 @key_inum(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @get_key_type(i32) #1

declare dso_local i32 @key_hash(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @key_block(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
