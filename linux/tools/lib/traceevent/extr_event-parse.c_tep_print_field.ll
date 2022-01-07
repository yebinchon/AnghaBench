; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_print_field.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_print_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_format_field = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tep_handle* }
%struct.tep_handle = type { i32 }

@TEP_FIELD_IS_ARRAY = common dso_local global i32 0, align 4
@TEP_FIELD_IS_DYNAMIC = common dso_local global i32 0, align 4
@TEP_FIELD_IS_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ARRAY[\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@TEP_FIELD_IS_POINTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@TEP_FIELD_IS_SIGNED = common dso_local global i32 0, align 4
@TEP_FIELD_IS_LONG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%1d\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tep_print_field(%struct.trace_seq* %0, i8* %1, %struct.tep_format_field* %2) #0 {
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tep_format_field*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tep_handle*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.tep_format_field* %2, %struct.tep_format_field** %6, align 8
  %12 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %13 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.tep_handle*, %struct.tep_handle** %15, align 8
  store %struct.tep_handle* %16, %struct.tep_handle** %11, align 8
  %17 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %18 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TEP_FIELD_IS_ARRAY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %110

23:                                               ; preds = %3
  %24 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %25 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %28 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  %30 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %31 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TEP_FIELD_IS_DYNAMIC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %23
  %37 = load %struct.tep_handle*, %struct.tep_handle** %11, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr i8, i8* %38, i64 %40
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @tep_read_number(%struct.tep_handle* %37, i8* %41, i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = lshr i32 %46, 16
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 65535
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %36, %23
  %51 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %52 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TEP_FIELD_IS_STRING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %50
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr i8, i8* %58, i64 %60
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @is_printable_array(i8* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %70)
  br label %109

72:                                               ; preds = %57, %50
  %73 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %74 = call i32 @trace_seq_puts(%struct.trace_seq* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %97, %72
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %84 = call i32 @trace_seq_puts(%struct.trace_seq* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %75

100:                                              ; preds = %75
  %101 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %102 = call i32 @trace_seq_putc(%struct.trace_seq* %101, i8 signext 93)
  %103 = load i32, i32* @TEP_FIELD_IS_STRING, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %106 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %100, %65
  br label %196

110:                                              ; preds = %3
  %111 = load %struct.tep_handle*, %struct.tep_handle** %11, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %114 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr i8, i8* %112, i64 %116
  %118 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %119 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @tep_read_number(%struct.tep_handle* %111, i8* %117, i32 %120)
  store i64 %121, i64* %7, align 8
  %122 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %123 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TEP_FIELD_IS_POINTER, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %110
  %129 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %130)
  br label %195

132:                                              ; preds = %110
  %133 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %134 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @TEP_FIELD_IS_SIGNED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %178

139:                                              ; preds = %132
  %140 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %141 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  switch i32 %142, label %173 [
    i32 4, label %143
    i32 2, label %161
    i32 1, label %167
  ]

143:                                              ; preds = %139
  %144 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %145 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @TEP_FIELD_IS_LONG, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %143
  %151 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %152 = load i64, i64* %7, align 8
  %153 = trunc i64 %152 to i32
  %154 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %153)
  br label %160

155:                                              ; preds = %143
  %156 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %157 = load i64, i64* %7, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %155, %150
  br label %177

161:                                              ; preds = %139
  %162 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %163 = load i64, i64* %7, align 8
  %164 = trunc i64 %163 to i16
  %165 = sext i16 %164 to i32
  %166 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %165)
  br label %177

167:                                              ; preds = %139
  %168 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %169 = load i64, i64* %7, align 8
  %170 = trunc i64 %169 to i8
  %171 = sext i8 %170 to i32
  %172 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %171)
  br label %177

173:                                              ; preds = %139
  %174 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %175 = load i64, i64* %7, align 8
  %176 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %175)
  br label %177

177:                                              ; preds = %173, %167, %161, %160
  br label %194

178:                                              ; preds = %132
  %179 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %180 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @TEP_FIELD_IS_LONG, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %178
  %186 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %187 = load i64, i64* %7, align 8
  %188 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %186, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %187)
  br label %193

189:                                              ; preds = %178
  %190 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %191 = load i64, i64* %7, align 8
  %192 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 %191)
  br label %193

193:                                              ; preds = %189, %185
  br label %194

194:                                              ; preds = %193, %177
  br label %195

195:                                              ; preds = %194, %128
  br label %196

196:                                              ; preds = %195, %109
  ret void
}

declare dso_local i64 @tep_read_number(%struct.tep_handle*, i8*, i32) #1

declare dso_local i64 @is_printable_array(i8*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
