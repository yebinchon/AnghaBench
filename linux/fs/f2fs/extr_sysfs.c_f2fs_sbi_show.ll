; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_sysfs.c_f2fs_sbi_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_sysfs.c_f2fs_sbi_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_attr = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.f2fs_sb_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"extension_list\00", align 1
@extlist = common dso_local global i8** null, align 8
@F2FS_EXTENSION_LEN = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"cold file extension:\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"hot file extension:\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_attr*, %struct.f2fs_sb_info*, i8*)* @f2fs_sbi_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_sbi_show(%struct.f2fs_attr* %0, %struct.f2fs_sb_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_attr*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.f2fs_attr* %0, %struct.f2fs_attr** %5, align 8
  store %struct.f2fs_sb_info* %1, %struct.f2fs_sb_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %15 = load %struct.f2fs_attr*, %struct.f2fs_attr** %5, align 8
  %16 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @__struct_ptr(%struct.f2fs_sb_info* %14, i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %142

24:                                               ; preds = %3
  %25 = load %struct.f2fs_attr*, %struct.f2fs_attr** %5, align 8
  %26 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcmp(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %129, label %31

31:                                               ; preds = %24
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %33 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i8**, i8*** @extlist, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i32* @__u8(i8* %38)
  %40 = load i64, i64* @F2FS_EXTENSION_LEN, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %36, i32* %41, align 4
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %43 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %49 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %57, %59
  %61 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %56, i64 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %85, %31
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i64, i64* @PAGE_SIZE, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %73, %75
  %77 = load i8**, i8*** @extlist, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %72, i64 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %68
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %64

88:                                               ; preds = %64
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i64, i64* @PAGE_SIZE, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %93, %95
  %97 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %92, i64 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %124, %88
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %103, %104
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %101
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i64, i64* @PAGE_SIZE, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %112, %114
  %116 = load i8**, i8*** @extlist, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %111, i64 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %120)
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %107
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %101

127:                                              ; preds = %101
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %4, align 4
  br label %142

129:                                              ; preds = %24
  %130 = load i8*, i8** %8, align 8
  %131 = load %struct.f2fs_attr*, %struct.f2fs_attr** %5, align 8
  %132 = getelementptr inbounds %struct.f2fs_attr, %struct.f2fs_attr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %130, i64 %134
  %136 = bitcast i8* %135 to i32*
  store i32* %136, i32** %9, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = load i64, i64* @PAGE_SIZE, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %137, i64 %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %129, %127, %21
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i8* @__struct_ptr(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32* @__u8(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
