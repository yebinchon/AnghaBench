; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind-local.c_find_proc_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind-local.c_find_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_info = type { i32 }
%struct.map = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unwind: find_proc_info dso %s\0A\00", align 1
@UNW_INFO_FORMAT_REMOTE_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32, i8*)* @find_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_proc_info(i32 %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.unwind_info*, align 8
  %13 = alloca %struct.map*, align 8
  %14 = alloca %struct.TYPE_13__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = bitcast i8* %23 to %struct.unwind_info*
  store %struct.unwind_info* %24, %struct.unwind_info** %12, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %29 = call %struct.map* @find_map(i32 %27, %struct.unwind_info* %28)
  store %struct.map* %29, %struct.map** %13, align 8
  %30 = load %struct.map*, %struct.map** %13, align 8
  %31 = icmp ne %struct.map* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %5
  %33 = load %struct.map*, %struct.map** %13, align 8
  %34 = getelementptr inbounds %struct.map, %struct.map* %33, i32 0, i32 3
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = icmp ne %struct.TYPE_14__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %5
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %187

40:                                               ; preds = %32
  %41 = load %struct.map*, %struct.map** %13, align 8
  %42 = getelementptr inbounds %struct.map, %struct.map* %41, i32 0, i32 3
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load %struct.map*, %struct.map** %13, align 8
  %48 = getelementptr inbounds %struct.map, %struct.map* %47, i32 0, i32 3
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %51 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @read_unwind_spec_eh_frame(%struct.TYPE_14__* %49, i32 %52, i32* %15, i32* %16, i32* %17)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %105, label %55

55:                                               ; preds = %40
  %56 = call i32 @memset(%struct.TYPE_13__* %14, i32 0, i32 24)
  %57 = load i32, i32* @UNW_INFO_FORMAT_REMOTE_TABLE, align 4
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = load %struct.map*, %struct.map** %13, align 8
  %60 = getelementptr inbounds %struct.map, %struct.map* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load %struct.map*, %struct.map** %13, align 8
  %64 = getelementptr inbounds %struct.map, %struct.map* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  %67 = load %struct.map*, %struct.map** %13, align 8
  %68 = getelementptr inbounds %struct.map, %struct.map* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %69, %70
  %72 = load %struct.map*, %struct.map** %13, align 8
  %73 = getelementptr inbounds %struct.map, %struct.map* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %71, %74
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  %79 = load %struct.map*, %struct.map** %13, align 8
  %80 = getelementptr inbounds %struct.map, %struct.map* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %81, %82
  %84 = load %struct.map*, %struct.map** %13, align 8
  %85 = getelementptr inbounds %struct.map, %struct.map* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %83, %86
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = udiv i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @dwarf_search_unwind_table(i32 %99, i32 %100, %struct.TYPE_13__* %14, i32* %101, i32 %102, i8* %103)
  store i32 %104, i32* %18, align 4
  br label %105

105:                                              ; preds = %55, %40
  %106 = load i32, i32* %18, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %185

108:                                              ; preds = %105
  %109 = load %struct.map*, %struct.map** %13, align 8
  %110 = getelementptr inbounds %struct.map, %struct.map* %109, i32 0, i32 3
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %113 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @read_unwind_spec_debug_frame(%struct.TYPE_14__* %111, i32 %114, i32* %16)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %185, label %117

117:                                              ; preds = %108
  %118 = load %struct.map*, %struct.map** %13, align 8
  %119 = getelementptr inbounds %struct.map, %struct.map* %118, i32 0, i32 3
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %122 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dso__data_get_fd(%struct.TYPE_14__* %120, i32 %123)
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %19, align 4
  %126 = load %struct.map*, %struct.map** %13, align 8
  %127 = getelementptr inbounds %struct.map, %struct.map* %126, i32 0, i32 3
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @elf_is_exec(i32 %125, i8* %130)
  store i32 %131, i32* %20, align 4
  %132 = load i32, i32* %20, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %117
  br label %139

135:                                              ; preds = %117
  %136 = load %struct.map*, %struct.map** %13, align 8
  %137 = getelementptr inbounds %struct.map, %struct.map* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  br label %139

139:                                              ; preds = %135, %134
  %140 = phi i32 [ 0, %134 ], [ %138, %135 ]
  store i32 %140, i32* %21, align 4
  %141 = load i32, i32* %19, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load %struct.map*, %struct.map** %13, align 8
  %145 = getelementptr inbounds %struct.map, %struct.map* %144, i32 0, i32 3
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = call i32 @dso__data_put_fd(%struct.TYPE_14__* %146)
  br label %148

148:                                              ; preds = %143, %139
  %149 = load %struct.map*, %struct.map** %13, align 8
  %150 = getelementptr inbounds %struct.map, %struct.map* %149, i32 0, i32 3
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = inttoptr i64 %153 to i8*
  br label %163

157:                                              ; preds = %148
  %158 = load %struct.map*, %struct.map** %13, align 8
  %159 = getelementptr inbounds %struct.map, %struct.map* %158, i32 0, i32 3
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  br label %163

163:                                              ; preds = %157, %155
  %164 = phi i8* [ %156, %155 ], [ %162, %157 ]
  store i8* %164, i8** %22, align 8
  %165 = call i32 @memset(%struct.TYPE_13__* %14, i32 0, i32 24)
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %21, align 4
  %168 = load i8*, i8** %22, align 8
  %169 = load %struct.map*, %struct.map** %13, align 8
  %170 = getelementptr inbounds %struct.map, %struct.map* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.map*, %struct.map** %13, align 8
  %173 = getelementptr inbounds %struct.map, %struct.map* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @dwarf_find_debug_frame(i32 0, %struct.TYPE_13__* %14, i32 %166, i32 %167, i8* %168, i32 %171, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %163
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i8*, i8** %11, align 8
  %183 = call i32 @dwarf_search_unwind_table(i32 %178, i32 %179, %struct.TYPE_13__* %14, i32* %180, i32 %181, i8* %182)
  store i32 %183, i32* %6, align 4
  br label %187

184:                                              ; preds = %163
  br label %185

185:                                              ; preds = %184, %108, %105
  %186 = load i32, i32* %18, align 4
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %185, %177, %37
  %188 = load i32, i32* %6, align 4
  ret i32 %188
}

declare dso_local %struct.map* @find_map(i32, %struct.unwind_info*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @read_unwind_spec_eh_frame(%struct.TYPE_14__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @dwarf_search_unwind_table(i32, i32, %struct.TYPE_13__*, i32*, i32, i8*) #1

declare dso_local i32 @read_unwind_spec_debug_frame(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @dso__data_get_fd(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @elf_is_exec(i32, i8*) #1

declare dso_local i32 @dso__data_put_fd(%struct.TYPE_14__*) #1

declare dso_local i64 @dwarf_find_debug_frame(i32, %struct.TYPE_13__*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
