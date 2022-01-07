; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_find_marked.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_find_marked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.xa_state = type { i32, i32, %struct.TYPE_6__*, i32 }

@XA_CHUNK_SIZE = common dso_local global i32 0, align 4
@XAS_RESTART = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xas_find_marked(%struct.xa_state* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xa_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.xa_state* %0, %struct.xa_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %11 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %12 = call i64 @xas_error(%struct.xa_state* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %218

15:                                               ; preds = %3
  %16 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %17 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %22 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %203

23:                                               ; preds = %15
  %24 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %25 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i64 @xas_top(%struct.TYPE_6__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %77

29:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  %30 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %31 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @xa_head(i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %35 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %34, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %35, align 8
  %36 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %37 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @max_index(i8* %40)
  %42 = icmp sgt i64 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %203

44:                                               ; preds = %29
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @xa_is_node(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %50 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @xa_marked(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i8*, i8** %10, align 8
  store i8* %56, i8** %4, align 8
  br label %218

57:                                               ; preds = %48
  %58 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %59 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %203

60:                                               ; preds = %44
  %61 = load i8*, i8** %10, align 8
  %62 = call i8* @xa_to_node(i8* %61)
  %63 = bitcast i8* %62 to %struct.TYPE_6__*
  %64 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %65 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %64, i32 0, i32 2
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %65, align 8
  %66 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %67 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %70 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %68, %73
  %75 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %76 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %60, %23
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %194, %176, %118, %78
  %80 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %81 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %6, align 8
  %85 = icmp ule i64 %83, %84
  br i1 %85, label %86, label %202

86:                                               ; preds = %79
  %87 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %88 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @XA_CHUNK_SIZE, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %86
  %96 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %97 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add i32 %100, 1
  %102 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %103 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %105 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %108 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %107, i32 0, i32 2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = call %struct.TYPE_6__* @xa_parent(i32 %106, %struct.TYPE_6__* %109)
  %111 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %112 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %111, i32 0, i32 2
  store %struct.TYPE_6__* %110, %struct.TYPE_6__** %112, align 8
  %113 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %114 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = icmp ne %struct.TYPE_6__* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %95
  br label %202

118:                                              ; preds = %95
  store i32 0, i32* %8, align 4
  br label %79

119:                                              ; preds = %86
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %147, label %122

122:                                              ; preds = %119
  %123 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %124 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %127 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %126, i32 0, i32 2
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %130 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @xa_entry(i32 %125, %struct.TYPE_6__* %128, i32 %131)
  store i8* %132, i8** %10, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i64 @xa_is_sibling(i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %122
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 @xa_to_sibling(i8* %137)
  %139 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %140 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %142 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %143 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @xas_move_index(%struct.xa_state* %141, i32 %144)
  br label %146

146:                                              ; preds = %136, %122
  br label %147

147:                                              ; preds = %146, %119
  %148 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @xas_find_chunk(%struct.xa_state* %148, i32 %149, i32 %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %154 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ugt i32 %152, %155
  br i1 %156, label %157, label %178

157:                                              ; preds = %147
  store i32 0, i32* %8, align 4
  %158 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @xas_move_index(%struct.xa_state* %158, i32 %159)
  %161 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %162 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %6, align 8
  %167 = icmp uge i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  br label %214

169:                                              ; preds = %157
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %172 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @XA_CHUNK_SIZE, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %79

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177, %147
  %179 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %180 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %183 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %182, i32 0, i32 2
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %186 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @xa_entry(i32 %181, %struct.TYPE_6__* %184, i32 %187)
  store i8* %188, i8** %10, align 8
  %189 = load i8*, i8** %10, align 8
  %190 = call i32 @xa_is_node(i8* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %178
  %193 = load i8*, i8** %10, align 8
  store i8* %193, i8** %4, align 8
  br label %218

194:                                              ; preds = %178
  %195 = load i8*, i8** %10, align 8
  %196 = call i8* @xa_to_node(i8* %195)
  %197 = bitcast i8* %196 to %struct.TYPE_6__*
  %198 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %199 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %198, i32 0, i32 2
  store %struct.TYPE_6__* %197, %struct.TYPE_6__** %199, align 8
  %200 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %201 = call i32 @xas_set_offset(%struct.xa_state* %200)
  br label %79

202:                                              ; preds = %117, %79
  br label %203

203:                                              ; preds = %202, %57, %43, %20
  %204 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %205 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = load i64, i64* %6, align 8
  %209 = icmp ugt i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  br label %214

211:                                              ; preds = %203
  %212 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %213 = call i8* @set_bounds(%struct.xa_state* %212)
  store i8* %213, i8** %4, align 8
  br label %218

214:                                              ; preds = %210, %168
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** @XAS_RESTART, align 8
  %216 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %217 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %216, i32 0, i32 2
  store %struct.TYPE_6__* %215, %struct.TYPE_6__** %217, align 8
  store i8* null, i8** %4, align 8
  br label %218

218:                                              ; preds = %214, %211, %192, %55, %14
  %219 = load i8*, i8** %4, align 8
  ret i8* %219
}

declare dso_local i64 @xas_error(%struct.xa_state*) #1

declare dso_local i64 @xas_top(%struct.TYPE_6__*) #1

declare dso_local i8* @xa_head(i32) #1

declare dso_local i64 @max_index(i8*) #1

declare dso_local i32 @xa_is_node(i8*) #1

declare dso_local i64 @xa_marked(i32, i32) #1

declare dso_local i8* @xa_to_node(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_6__* @xa_parent(i32, %struct.TYPE_6__*) #1

declare dso_local i8* @xa_entry(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @xa_is_sibling(i8*) #1

declare dso_local i32 @xa_to_sibling(i8*) #1

declare dso_local i32 @xas_move_index(%struct.xa_state*, i32) #1

declare dso_local i32 @xas_find_chunk(%struct.xa_state*, i32, i32) #1

declare dso_local i32 @xas_set_offset(%struct.xa_state*) #1

declare dso_local i8* @set_bounds(%struct.xa_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
