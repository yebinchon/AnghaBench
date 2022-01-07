; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jevents.c_process_one_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jevents.c_process_one_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.FTW = type { i32, i32 }
%struct.perf_entry_data = type { i32, i32 }

@FTW_D = common dso_local global i32 0, align 4
@FTW_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s %d %7jd %-20s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@close_table = common dso_local global i64 0, align 8
@eventsfp = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: Error determining table name for %s\0A\00", align 1
@prog = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"mapfile.csv\00", align 1
@mapfile = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"%s: Ignoring file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"%s: Ignoring file without .json suffix %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@print_events_table_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stat*, i32, %struct.FTW*)* @process_one_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_one_file(i8* %0, %struct.stat* %1, i32 %2, %struct.FTW* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.FTW*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.perf_entry_data, align 4
  store i8* %0, i8** %6, align 8
  store %struct.stat* %1, %struct.stat** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.FTW* %3, %struct.FTW** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @FTW_D, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @FTW_F, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %13, align 4
  %25 = load %struct.FTW*, %struct.FTW** %9, align 8
  %26 = getelementptr inbounds %struct.FTW, %struct.FTW* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %53

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.FTW*, %struct.FTW** %9, align 8
  %36 = getelementptr inbounds %struct.FTW, %struct.FTW* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  %40 = getelementptr inbounds i8, i8* %39, i64 -2
  store i8* %40, i8** %11, align 8
  br label %41

41:                                               ; preds = %47, %33
  %42 = load i8*, i8** %11, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %11, align 8
  br label %41

50:                                               ; preds = %46
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %11, align 8
  br label %60

53:                                               ; preds = %30, %4
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.FTW*, %struct.FTW** %9, align 8
  %56 = getelementptr inbounds %struct.FTW, %struct.FTW* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  store i8* %59, i8** %11, align 8
  br label %60

60:                                               ; preds = %53, %50
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  br label %69

69:                                               ; preds = %64, %63
  %70 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %63 ], [ %68, %64 ]
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.stat*, %struct.stat** %7, align 8
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %70, i32 %71, i32 %74, i8* %75, i8* %76)
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %14, align 4
  %82 = icmp sgt i32 %81, 3
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %69
  store i32 0, i32* %5, align 4
  br label %174

84:                                               ; preds = %80
  %85 = load i32, i32* %14, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i8*, i8** %6, align 8
  %92 = call i64 @is_leaf_dir(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %90, %87, %84
  %95 = load i32, i32* %14, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %119

97:                                               ; preds = %94
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %97, %90
  %101 = load i64, i64* @close_table, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @eventsfp, align 4
  %105 = call i32 @print_events_table_suffix(i32 %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i8*, i8** %11, align 8
  %108 = call i8* @file_name_to_table_name(i8* %107)
  store i8* %108, i8** %10, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @prog, align 4
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %112, i8* %113)
  store i32 -1, i32* %5, align 4
  br label %174

115:                                              ; preds = %106
  %116 = load i32, i32* @eventsfp, align 4
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @print_events_table_prefix(i32 %116, i8* %117)
  store i32 0, i32* %5, align 4
  br label %174

119:                                              ; preds = %97, %94
  %120 = load i32, i32* %14, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @strdup(i8* %130)
  store i32 %131, i32* @mapfile, align 4
  store i32 0, i32* %5, align 4
  br label %174

132:                                              ; preds = %125
  %133 = load i32, i32* @prog, align 4
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %133, i8* %134)
  store i32 0, i32* %5, align 4
  br label %174

136:                                              ; preds = %122, %119
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load i8*, i8** %11, align 8
  %141 = call i32 @is_json_file(i8* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* @prog, align 4
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %144, i8* %145)
  store i32 0, i32* %5, align 4
  br label %174

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147, %136
  %149 = load i32, i32* %14, align 4
  %150 = icmp sgt i32 %149, 1
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load i8*, i8** %11, align 8
  %153 = call i64 @add_topic(i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %5, align 4
  br label %174

158:                                              ; preds = %151, %148
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.perf_entry_data, %struct.perf_entry_data* %16, i32 0, i32 0
  %163 = call i32 (...) @get_topic()
  store i32 %163, i32* %162, align 4
  %164 = getelementptr inbounds %struct.perf_entry_data, %struct.perf_entry_data* %16, i32 0, i32 1
  %165 = load i32, i32* @eventsfp, align 4
  store i32 %165, i32* %164, align 4
  %166 = load i8*, i8** %6, align 8
  %167 = load i32, i32* @print_events_table_entry, align 4
  %168 = call i32 @json_events(i8* %166, i32 %167, %struct.perf_entry_data* %16)
  store i32 %168, i32* %15, align 4
  %169 = getelementptr inbounds %struct.perf_entry_data, %struct.perf_entry_data* %16, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @free(i32 %170)
  br label %172

172:                                              ; preds = %161, %158
  %173 = load i32, i32* %15, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %172, %155, %143, %132, %129, %115, %111, %83
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i8*, i8*) #1

declare dso_local i64 @is_leaf_dir(i8*) #1

declare dso_local i32 @print_events_table_suffix(i32) #1

declare dso_local i8* @file_name_to_table_name(i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @print_events_table_prefix(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @is_json_file(i8*) #1

declare dso_local i64 @add_topic(i8*) #1

declare dso_local i32 @get_topic(...) #1

declare dso_local i32 @json_events(i8*, i32, %struct.perf_entry_data*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
