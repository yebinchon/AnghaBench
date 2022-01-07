; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_to_shortname_char.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_to_shortname_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 (i32, i8*, i32)* }
%struct.shortname_info = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nls_table*, i8*, i32, i32*, %struct.shortname_info*)* @to_shortname_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_shortname_char(%struct.nls_table* %0, i8* %1, i32 %2, i32* %3, %struct.shortname_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nls_table*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.shortname_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.nls_table* %0, %struct.nls_table** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.shortname_info* %4, %struct.shortname_info** %11, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @vfat_skip_char(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load %struct.shortname_info*, %struct.shortname_info** %11, align 8
  %20 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  store i32 0, i32* %6, align 4
  br label %101

21:                                               ; preds = %5
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @vfat_replace_char(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.shortname_info*, %struct.shortname_info** %11, align 8
  %28 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 95, i8* %30, align 1
  store i32 1, i32* %6, align 4
  br label %101

31:                                               ; preds = %21
  %32 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %33 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %32, i32 0, i32 0
  %34 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %33, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 %34(i32 %36, i8* %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.shortname_info*, %struct.shortname_info** %11, align 8
  %44 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 95, i8* %46, align 1
  store i32 1, i32* %12, align 4
  br label %99

47:                                               ; preds = %31
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %93

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* %13, align 1
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp sge i32 %57, 127
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.shortname_info*, %struct.shortname_info** %11, align 8
  %61 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.shortname_info*, %struct.shortname_info** %11, align 8
  %63 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %50
  %65 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = call zeroext i8 @nls_toupper(%struct.nls_table* %65, i8 zeroext %68)
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 %69, i8* %71, align 1
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @isalpha(i8 zeroext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %64
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* %13, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.shortname_info*, %struct.shortname_info** %11, align 8
  %87 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  br label %91

88:                                               ; preds = %77
  %89 = load %struct.shortname_info*, %struct.shortname_info** %11, align 8
  %90 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %64
  br label %98

93:                                               ; preds = %47
  %94 = load %struct.shortname_info*, %struct.shortname_info** %11, align 8
  %95 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.shortname_info*, %struct.shortname_info** %11, align 8
  %97 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %93, %92
  br label %99

99:                                               ; preds = %98, %42
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %26, %18
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i64 @vfat_skip_char(i32) #1

declare dso_local i64 @vfat_replace_char(i32) #1

declare dso_local zeroext i8 @nls_toupper(%struct.nls_table*, i8 zeroext) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
