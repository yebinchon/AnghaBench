; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_match_chain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_match_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.callchain_cursor_node = type { i64, i64, %struct.TYPE_12__, i32, i64, i64, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.callchain_list = type { i32, i32, i32, i32, %struct.TYPE_11__, i32, i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@MATCH_ERROR = common dso_local global i32 0, align 4
@callchain_param = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@__fallthrough = common dso_local global i32 0, align 4
@MATCH_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.callchain_cursor_node*, %struct.callchain_list*)* @match_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_chain(%struct.callchain_cursor_node* %0, %struct.callchain_list* %1) #0 {
  %3 = alloca %struct.callchain_cursor_node*, align 8
  %4 = alloca %struct.callchain_list*, align 8
  %5 = alloca i32, align 4
  store %struct.callchain_cursor_node* %0, %struct.callchain_cursor_node** %3, align 8
  store %struct.callchain_list* %1, %struct.callchain_list** %4, align 8
  %6 = load i32, i32* @MATCH_ERROR, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @callchain_param, i32 0, i32 0), align 4
  switch i32 %7, label %90 [
    i32 128, label %8
    i32 129, label %22
    i32 130, label %89
  ]

8:                                                ; preds = %2
  %9 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %10 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %13 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @match_chain_strings(i32 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MATCH_ERROR, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  br label %105

20:                                               ; preds = %8
  %21 = load i32, i32* @__fallthrough, align 4
  br label %22

22:                                               ; preds = %2, %20
  %23 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %24 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %23, i32 0, i32 7
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %87

27:                                               ; preds = %22
  %28 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %29 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %87

33:                                               ; preds = %27
  %34 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %35 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %33
  %42 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %43 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %42, i32 0, i32 7
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %41, %33
  %49 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %50 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %56 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %55, i32 0, i32 7
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @match_chain_strings(i32 %54, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @MATCH_ERROR, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  br label %105

65:                                               ; preds = %48
  br label %86

66:                                               ; preds = %41
  %67 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %68 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %67, i32 0, i32 9
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %72 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %78 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %81 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %80, i32 0, i32 7
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @match_chain_dso_addresses(i32 %70, i32 %76, i32 %79, i32 %84)
  store i32 %85, i32* %5, align 4
  br label %105

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86, %27, %22
  %88 = load i32, i32* @__fallthrough, align 4
  br label %89

89:                                               ; preds = %2, %87
  br label %90

90:                                               ; preds = %2, %89
  %91 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %92 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %91, i32 0, i32 9
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %96 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %99 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %102 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @match_chain_dso_addresses(i32 %94, i32 %97, i32 %100, i32 %103)
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %90, %66, %64, %19
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @MATCH_EQ, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %197

109:                                              ; preds = %105
  %110 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %111 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %197

114:                                              ; preds = %109
  %115 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %116 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %120 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %160

123:                                              ; preds = %114
  %124 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %125 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %128 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %123
  %133 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %134 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %132, %123
  %138 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %139 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %145 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %143, %137
  %149 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %150 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %149, i32 0, i32 4
  %151 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %152 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %151, i32 0, i32 2
  %153 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %154 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %157 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @branch_type_count(%struct.TYPE_11__* %150, %struct.TYPE_12__* %152, i64 %155, i32 %158)
  br label %196

160:                                              ; preds = %114
  %161 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %162 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  store i32 0, i32* %163, align 8
  %164 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %165 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %169 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %167
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %169, align 4
  %174 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %175 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %178 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %176
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %178, align 8
  %183 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %3, align 8
  %184 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %187 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %185
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %187, align 4
  %192 = load %struct.callchain_list*, %struct.callchain_list** %4, align 8
  %193 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %160, %148
  br label %197

197:                                              ; preds = %196, %109, %105
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @match_chain_strings(i32, i32) #1

declare dso_local i32 @match_chain_dso_addresses(i32, i32, i32, i32) #1

declare dso_local i32 @branch_type_count(%struct.TYPE_11__*, %struct.TYPE_12__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
