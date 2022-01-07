; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_tep_filter_add_filter_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_tep_filter_add_filter_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event_filter = type { i32, %struct.tep_handle* }
%struct.tep_handle = type { i64 }
%struct.event_list = type { %struct.TYPE_2__*, %struct.event_list* }
%struct.TYPE_2__ = type { i8*, i32 }

@TEP_ERRNO__MEM_ALLOC_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@TEP_ERRNO__FILTER_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" '%s: %s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tep_filter_add_filter_str(%struct.tep_event_filter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tep_event_filter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tep_handle*, align 8
  %7 = alloca %struct.event_list*, align 8
  %8 = alloca %struct.event_list*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.tep_event_filter* %0, %struct.tep_event_filter** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %20 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %19, i32 0, i32 1
  %21 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  store %struct.tep_handle* %21, %struct.tep_handle** %6, align 8
  store %struct.event_list* null, %struct.event_list** %8, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %23 = call i32 @filter_init_error_buf(%struct.tep_event_filter* %22)
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 58)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %16, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strlen(i8* %36)
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %35, %28
  br label %39

39:                                               ; preds = %127, %38
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 44)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ult i8* %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47, %44
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %16, align 4
  br label %72

58:                                               ; preds = %47, %39
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %16, align 4
  br label %71

68:                                               ; preds = %58
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @strlen(i8* %69)
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %68, %61
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i8* @malloc(i32 %74)
  store i8* %75, i8** %11, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.event_list*, %struct.event_list** %8, align 8
  %80 = call i32 @free_events(%struct.event_list* %79)
  %81 = load i32, i32* @TEP_ERRNO__MEM_ALLOC_FAILED, align 4
  store i32 %81, i32* %3, align 4
  br label %193

82:                                               ; preds = %72
  %83 = load i8*, i8** %11, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @memcpy(i8* %83, i8* %84, i32 %85)
  %87 = load i8*, i8** %11, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %10, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %10, align 8
  br label %96

96:                                               ; preds = %93, %82
  %97 = load i8*, i8** %10, align 8
  store i8* %97, i8** %5, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i8* @strtok_r(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %14)
  store i8* %99, i8** %13, align 8
  %100 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %14)
  store i8* %100, i8** %12, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %96
  %104 = load %struct.event_list*, %struct.event_list** %8, align 8
  %105 = call i32 @free_events(%struct.event_list* %104)
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load i32, i32* @TEP_ERRNO__FILTER_NOT_FOUND, align 4
  store i32 %108, i32* %3, align 4
  br label %193

109:                                              ; preds = %96
  %110 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = call i32 @strim(i8* %111)
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 @strim(i8* %113)
  %115 = call i32 @find_event(%struct.tep_handle* %110, %struct.event_list** %8, i32 %112, i32 %114)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %109
  %119 = load %struct.event_list*, %struct.event_list** %8, align 8
  %120 = call i32 @free_events(%struct.event_list* %119)
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 @free(i8* %121)
  %123 = load i32, i32* %17, align 4
  store i32 %123, i32* %3, align 4
  br label %193

124:                                              ; preds = %109
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @free(i8* %125)
  br label %127

127:                                              ; preds = %124
  %128 = load i8*, i8** %5, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %39, label %130

130:                                              ; preds = %127
  %131 = load i8*, i8** %9, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i8*, i8** %9, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %9, align 8
  br label %136

136:                                              ; preds = %133, %130
  %137 = load %struct.event_list*, %struct.event_list** %8, align 8
  store %struct.event_list* %137, %struct.event_list** %7, align 8
  br label %138

138:                                              ; preds = %185, %136
  %139 = load %struct.event_list*, %struct.event_list** %7, align 8
  %140 = icmp ne %struct.event_list* %139, null
  br i1 %140, label %141, label %189

141:                                              ; preds = %138
  %142 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %143 = load %struct.event_list*, %struct.event_list** %7, align 8
  %144 = getelementptr inbounds %struct.event_list, %struct.event_list* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %148 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @filter_event(%struct.tep_event_filter* %142, %struct.TYPE_2__* %145, i8* %146, i32 %149)
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %17, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %141
  %154 = load i32, i32* %17, align 4
  store i32 %154, i32* %15, align 4
  br label %155

155:                                              ; preds = %153, %141
  %156 = load i32, i32* %17, align 4
  %157 = icmp sge i32 %156, 0
  br i1 %157, label %158, label %184

158:                                              ; preds = %155
  %159 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %160 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %184

163:                                              ; preds = %158
  %164 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %165 = load %struct.event_list*, %struct.event_list** %7, align 8
  %166 = getelementptr inbounds %struct.event_list, %struct.event_list* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i8* @tep_filter_make_string(%struct.tep_event_filter* %164, i32 %169)
  store i8* %170, i8** %18, align 8
  %171 = load i8*, i8** %18, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %183

173:                                              ; preds = %163
  %174 = load %struct.event_list*, %struct.event_list** %7, align 8
  %175 = getelementptr inbounds %struct.event_list, %struct.event_list* %174, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load i8*, i8** %18, align 8
  %180 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %178, i8* %179)
  %181 = load i8*, i8** %18, align 8
  %182 = call i32 @free(i8* %181)
  br label %183

183:                                              ; preds = %173, %163
  br label %184

184:                                              ; preds = %183, %158, %155
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.event_list*, %struct.event_list** %7, align 8
  %187 = getelementptr inbounds %struct.event_list, %struct.event_list* %186, i32 0, i32 1
  %188 = load %struct.event_list*, %struct.event_list** %187, align 8
  store %struct.event_list* %188, %struct.event_list** %7, align 8
  br label %138

189:                                              ; preds = %138
  %190 = load %struct.event_list*, %struct.event_list** %8, align 8
  %191 = call i32 @free_events(%struct.event_list* %190)
  %192 = load i32, i32* %15, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %189, %118, %103, %78
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @filter_init_error_buf(%struct.tep_event_filter*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free_events(%struct.event_list*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @find_event(%struct.tep_handle*, %struct.event_list**, i32, i32) #1

declare dso_local i32 @strim(i8*) #1

declare dso_local i32 @filter_event(%struct.tep_event_filter*, %struct.TYPE_2__*, i8*, i32) #1

declare dso_local i8* @tep_filter_make_string(%struct.tep_event_filter*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
