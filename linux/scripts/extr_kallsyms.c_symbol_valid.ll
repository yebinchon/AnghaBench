; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_symbol_valid.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_symbol_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }
%struct.TYPE_4__ = type { i64, i8* }
%struct.sym_entry = type { i64, i64 }

@symbol_valid.special_symbols = internal global [11 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [19 x i8] c"kallsyms_addresses\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"kallsyms_offsets\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"kallsyms_relative_base\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"kallsyms_num_syms\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"kallsyms_names\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"kallsyms_markers\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"kallsyms_token_table\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"kallsyms_token_index\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"_SDA_BASE_\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"_SDA2_BASE_\00", align 1
@symbol_valid.special_prefixes = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* null], align 16
@.str.10 = private unnamed_addr constant [7 x i8] c"__crc_\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"__efistub_\00", align 1
@symbol_valid.special_suffixes = internal global [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* null], align 16
@.str.12 = private unnamed_addr constant [8 x i8] c"_veneer\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"_from_arm\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"_from_thumb\00", align 1
@all_symbols = common dso_local global i32 0, align 4
@text_ranges = common dso_local global i32 0, align 4
@text_range_text = common dso_local global %struct.TYPE_3__* null, align 8
@text_range_inittext = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_entry*)* @symbol_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symbol_valid(%struct.sym_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sym_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sym_entry* %0, %struct.sym_entry** %3, align 8
  %8 = load %struct.sym_entry*, %struct.sym_entry** %3, align 8
  %9 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8* %12, i8** %5, align 8
  %13 = load i32, i32* @all_symbols, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %1
  %16 = load %struct.sym_entry*, %struct.sym_entry** %3, align 8
  %17 = load i32, i32* @text_ranges, align 4
  %18 = load i32, i32* @text_ranges, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i64 @symbol_in_range(%struct.sym_entry* %16, i32 %17, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %141

23:                                               ; preds = %15
  %24 = load %struct.sym_entry*, %struct.sym_entry** %3, align 8
  %25 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @text_range_text, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @text_range_text, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %32, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %31, %23
  %39 = load %struct.sym_entry*, %struct.sym_entry** %3, align 8
  %40 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @text_range_inittext, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @text_range_inittext, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* %47, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46, %31
  store i32 0, i32* %2, align 4
  br label %141

54:                                               ; preds = %46, %38
  br label %55

55:                                               ; preds = %54, %1
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %72, %55
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [11 x i8*], [11 x i8*]* @symbol_valid.special_symbols, i64 0, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [11 x i8*], [11 x i8*]* @symbol_valid.special_symbols, i64 0, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strcmp(i8* %63, i8* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %141

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %56

75:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %103, %75
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x i8*], [3 x i8*]* @symbol_valid.special_prefixes, i64 0, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %106

82:                                               ; preds = %76
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x i8*], [3 x i8*]* @symbol_valid.special_prefixes, i64 0, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strlen(i8* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = icmp sle i32 %88, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %82
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x i8*], [3 x i8*]* @symbol_valid.special_prefixes, i64 0, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i64 @strncmp(i8* %93, i8* %97, i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %141

102:                                              ; preds = %92, %82
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %76

106:                                              ; preds = %76
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %137, %106
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i8*], [4 x i8*]* @symbol_valid.special_suffixes, i64 0, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %140

113:                                              ; preds = %107
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [4 x i8*], [4 x i8*]* @symbol_valid.special_suffixes, i64 0, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strlen(i8* %119)
  %121 = sub nsw i32 %115, %120
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %113
  %125 = load i8*, i8** %5, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [4 x i8*], [4 x i8*]* @symbol_valid.special_suffixes, i64 0, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @strcmp(i8* %128, i8* %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %141

136:                                              ; preds = %124, %113
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %107

140:                                              ; preds = %107
  store i32 1, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %135, %101, %70, %53, %22
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i64 @symbol_in_range(%struct.sym_entry*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
