; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_node_rm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_node_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparsebit = type { i64, %struct.node* }
%struct.node = type { %struct.node*, %struct.node*, %struct.node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sparsebit*, %struct.node*)* @node_rm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_rm(%struct.sparsebit* %0, %struct.node* %1) #0 {
  %3 = alloca %struct.sparsebit*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i64, align 8
  store %struct.sparsebit* %0, %struct.sparsebit** %3, align 8
  store %struct.node* %1, %struct.node** %4, align 8
  %7 = load %struct.node*, %struct.node** %4, align 8
  %8 = call i64 @node_num_set(%struct.node* %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %10 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %16 = call i64 @sparsebit_all_set(%struct.sparsebit* %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ true, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.node*, %struct.node** %4, align 8
  %23 = call i64 @node_num_set(%struct.node* %22)
  %24 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %25 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load %struct.node*, %struct.node** %4, align 8
  %29 = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 1
  %30 = load %struct.node*, %struct.node** %29, align 8
  %31 = icmp ne %struct.node* %30, null
  br i1 %31, label %32, label %64

32:                                               ; preds = %18
  %33 = load %struct.node*, %struct.node** %4, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 0
  %35 = load %struct.node*, %struct.node** %34, align 8
  %36 = icmp ne %struct.node* %35, null
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  %38 = load %struct.node*, %struct.node** %4, align 8
  %39 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 0
  %40 = load %struct.node*, %struct.node** %39, align 8
  store %struct.node* %40, %struct.node** %5, align 8
  br label %41

41:                                               ; preds = %47, %37
  %42 = load %struct.node*, %struct.node** %5, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 1
  %44 = load %struct.node*, %struct.node** %43, align 8
  %45 = icmp ne %struct.node* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.node*, %struct.node** %5, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 1
  %50 = load %struct.node*, %struct.node** %49, align 8
  store %struct.node* %50, %struct.node** %5, align 8
  br label %41

51:                                               ; preds = %41
  %52 = load %struct.node*, %struct.node** %4, align 8
  %53 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 1
  %54 = load %struct.node*, %struct.node** %53, align 8
  %55 = load %struct.node*, %struct.node** %5, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 1
  store %struct.node* %54, %struct.node** %56, align 8
  %57 = load %struct.node*, %struct.node** %4, align 8
  %58 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 1
  store %struct.node* null, %struct.node** %58, align 8
  %59 = load %struct.node*, %struct.node** %5, align 8
  %60 = load %struct.node*, %struct.node** %5, align 8
  %61 = getelementptr inbounds %struct.node, %struct.node* %60, i32 0, i32 1
  %62 = load %struct.node*, %struct.node** %61, align 8
  %63 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 2
  store %struct.node* %59, %struct.node** %63, align 8
  br label %64

64:                                               ; preds = %51, %32, %18
  %65 = load %struct.node*, %struct.node** %4, align 8
  %66 = getelementptr inbounds %struct.node, %struct.node* %65, i32 0, i32 1
  %67 = load %struct.node*, %struct.node** %66, align 8
  %68 = icmp ne %struct.node* %67, null
  br i1 %68, label %69, label %134

69:                                               ; preds = %64
  %70 = load %struct.node*, %struct.node** %4, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 2
  %72 = load %struct.node*, %struct.node** %71, align 8
  %73 = icmp ne %struct.node* %72, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load %struct.node*, %struct.node** %4, align 8
  %76 = getelementptr inbounds %struct.node, %struct.node* %75, i32 0, i32 1
  %77 = load %struct.node*, %struct.node** %76, align 8
  %78 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %79 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %78, i32 0, i32 1
  store %struct.node* %77, %struct.node** %79, align 8
  %80 = load %struct.node*, %struct.node** %4, align 8
  %81 = getelementptr inbounds %struct.node, %struct.node* %80, i32 0, i32 1
  %82 = load %struct.node*, %struct.node** %81, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 2
  store %struct.node* null, %struct.node** %83, align 8
  br label %125

84:                                               ; preds = %69
  %85 = load %struct.node*, %struct.node** %4, align 8
  %86 = getelementptr inbounds %struct.node, %struct.node* %85, i32 0, i32 2
  %87 = load %struct.node*, %struct.node** %86, align 8
  %88 = load %struct.node*, %struct.node** %4, align 8
  %89 = getelementptr inbounds %struct.node, %struct.node* %88, i32 0, i32 1
  %90 = load %struct.node*, %struct.node** %89, align 8
  %91 = getelementptr inbounds %struct.node, %struct.node* %90, i32 0, i32 2
  store %struct.node* %87, %struct.node** %91, align 8
  %92 = load %struct.node*, %struct.node** %4, align 8
  %93 = load %struct.node*, %struct.node** %4, align 8
  %94 = getelementptr inbounds %struct.node, %struct.node* %93, i32 0, i32 2
  %95 = load %struct.node*, %struct.node** %94, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 1
  %97 = load %struct.node*, %struct.node** %96, align 8
  %98 = icmp eq %struct.node* %92, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %84
  %100 = load %struct.node*, %struct.node** %4, align 8
  %101 = getelementptr inbounds %struct.node, %struct.node* %100, i32 0, i32 1
  %102 = load %struct.node*, %struct.node** %101, align 8
  %103 = load %struct.node*, %struct.node** %4, align 8
  %104 = getelementptr inbounds %struct.node, %struct.node* %103, i32 0, i32 2
  %105 = load %struct.node*, %struct.node** %104, align 8
  %106 = getelementptr inbounds %struct.node, %struct.node* %105, i32 0, i32 1
  store %struct.node* %102, %struct.node** %106, align 8
  br label %124

107:                                              ; preds = %84
  %108 = load %struct.node*, %struct.node** %4, align 8
  %109 = load %struct.node*, %struct.node** %4, align 8
  %110 = getelementptr inbounds %struct.node, %struct.node* %109, i32 0, i32 2
  %111 = load %struct.node*, %struct.node** %110, align 8
  %112 = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 0
  %113 = load %struct.node*, %struct.node** %112, align 8
  %114 = icmp eq %struct.node* %108, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load %struct.node*, %struct.node** %4, align 8
  %118 = getelementptr inbounds %struct.node, %struct.node* %117, i32 0, i32 1
  %119 = load %struct.node*, %struct.node** %118, align 8
  %120 = load %struct.node*, %struct.node** %4, align 8
  %121 = getelementptr inbounds %struct.node, %struct.node* %120, i32 0, i32 2
  %122 = load %struct.node*, %struct.node** %121, align 8
  %123 = getelementptr inbounds %struct.node, %struct.node* %122, i32 0, i32 0
  store %struct.node* %119, %struct.node** %123, align 8
  br label %124

124:                                              ; preds = %107, %99
  br label %125

125:                                              ; preds = %124, %74
  %126 = load %struct.node*, %struct.node** %4, align 8
  %127 = getelementptr inbounds %struct.node, %struct.node* %126, i32 0, i32 0
  store %struct.node* null, %struct.node** %127, align 8
  %128 = load %struct.node*, %struct.node** %4, align 8
  %129 = getelementptr inbounds %struct.node, %struct.node* %128, i32 0, i32 1
  store %struct.node* null, %struct.node** %129, align 8
  %130 = load %struct.node*, %struct.node** %4, align 8
  %131 = getelementptr inbounds %struct.node, %struct.node* %130, i32 0, i32 2
  store %struct.node* null, %struct.node** %131, align 8
  %132 = load %struct.node*, %struct.node** %4, align 8
  %133 = call i32 @free(%struct.node* %132)
  br label %249

134:                                              ; preds = %64
  %135 = load %struct.node*, %struct.node** %4, align 8
  %136 = getelementptr inbounds %struct.node, %struct.node* %135, i32 0, i32 0
  %137 = load %struct.node*, %struct.node** %136, align 8
  %138 = icmp ne %struct.node* %137, null
  br i1 %138, label %139, label %204

139:                                              ; preds = %134
  %140 = load %struct.node*, %struct.node** %4, align 8
  %141 = getelementptr inbounds %struct.node, %struct.node* %140, i32 0, i32 2
  %142 = load %struct.node*, %struct.node** %141, align 8
  %143 = icmp ne %struct.node* %142, null
  br i1 %143, label %154, label %144

144:                                              ; preds = %139
  %145 = load %struct.node*, %struct.node** %4, align 8
  %146 = getelementptr inbounds %struct.node, %struct.node* %145, i32 0, i32 0
  %147 = load %struct.node*, %struct.node** %146, align 8
  %148 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %149 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %148, i32 0, i32 1
  store %struct.node* %147, %struct.node** %149, align 8
  %150 = load %struct.node*, %struct.node** %4, align 8
  %151 = getelementptr inbounds %struct.node, %struct.node* %150, i32 0, i32 0
  %152 = load %struct.node*, %struct.node** %151, align 8
  %153 = getelementptr inbounds %struct.node, %struct.node* %152, i32 0, i32 2
  store %struct.node* null, %struct.node** %153, align 8
  br label %195

154:                                              ; preds = %139
  %155 = load %struct.node*, %struct.node** %4, align 8
  %156 = getelementptr inbounds %struct.node, %struct.node* %155, i32 0, i32 2
  %157 = load %struct.node*, %struct.node** %156, align 8
  %158 = load %struct.node*, %struct.node** %4, align 8
  %159 = getelementptr inbounds %struct.node, %struct.node* %158, i32 0, i32 0
  %160 = load %struct.node*, %struct.node** %159, align 8
  %161 = getelementptr inbounds %struct.node, %struct.node* %160, i32 0, i32 2
  store %struct.node* %157, %struct.node** %161, align 8
  %162 = load %struct.node*, %struct.node** %4, align 8
  %163 = load %struct.node*, %struct.node** %4, align 8
  %164 = getelementptr inbounds %struct.node, %struct.node* %163, i32 0, i32 2
  %165 = load %struct.node*, %struct.node** %164, align 8
  %166 = getelementptr inbounds %struct.node, %struct.node* %165, i32 0, i32 1
  %167 = load %struct.node*, %struct.node** %166, align 8
  %168 = icmp eq %struct.node* %162, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %154
  %170 = load %struct.node*, %struct.node** %4, align 8
  %171 = getelementptr inbounds %struct.node, %struct.node* %170, i32 0, i32 0
  %172 = load %struct.node*, %struct.node** %171, align 8
  %173 = load %struct.node*, %struct.node** %4, align 8
  %174 = getelementptr inbounds %struct.node, %struct.node* %173, i32 0, i32 2
  %175 = load %struct.node*, %struct.node** %174, align 8
  %176 = getelementptr inbounds %struct.node, %struct.node* %175, i32 0, i32 1
  store %struct.node* %172, %struct.node** %176, align 8
  br label %194

177:                                              ; preds = %154
  %178 = load %struct.node*, %struct.node** %4, align 8
  %179 = load %struct.node*, %struct.node** %4, align 8
  %180 = getelementptr inbounds %struct.node, %struct.node* %179, i32 0, i32 2
  %181 = load %struct.node*, %struct.node** %180, align 8
  %182 = getelementptr inbounds %struct.node, %struct.node* %181, i32 0, i32 0
  %183 = load %struct.node*, %struct.node** %182, align 8
  %184 = icmp eq %struct.node* %178, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load %struct.node*, %struct.node** %4, align 8
  %188 = getelementptr inbounds %struct.node, %struct.node* %187, i32 0, i32 0
  %189 = load %struct.node*, %struct.node** %188, align 8
  %190 = load %struct.node*, %struct.node** %4, align 8
  %191 = getelementptr inbounds %struct.node, %struct.node* %190, i32 0, i32 2
  %192 = load %struct.node*, %struct.node** %191, align 8
  %193 = getelementptr inbounds %struct.node, %struct.node* %192, i32 0, i32 0
  store %struct.node* %189, %struct.node** %193, align 8
  br label %194

194:                                              ; preds = %177, %169
  br label %195

195:                                              ; preds = %194, %144
  %196 = load %struct.node*, %struct.node** %4, align 8
  %197 = getelementptr inbounds %struct.node, %struct.node* %196, i32 0, i32 0
  store %struct.node* null, %struct.node** %197, align 8
  %198 = load %struct.node*, %struct.node** %4, align 8
  %199 = getelementptr inbounds %struct.node, %struct.node* %198, i32 0, i32 1
  store %struct.node* null, %struct.node** %199, align 8
  %200 = load %struct.node*, %struct.node** %4, align 8
  %201 = getelementptr inbounds %struct.node, %struct.node* %200, i32 0, i32 2
  store %struct.node* null, %struct.node** %201, align 8
  %202 = load %struct.node*, %struct.node** %4, align 8
  %203 = call i32 @free(%struct.node* %202)
  br label %249

204:                                              ; preds = %134
  %205 = load %struct.node*, %struct.node** %4, align 8
  %206 = getelementptr inbounds %struct.node, %struct.node* %205, i32 0, i32 2
  %207 = load %struct.node*, %struct.node** %206, align 8
  %208 = icmp ne %struct.node* %207, null
  br i1 %208, label %212, label %209

209:                                              ; preds = %204
  %210 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %211 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %210, i32 0, i32 1
  store %struct.node* null, %struct.node** %211, align 8
  br label %240

212:                                              ; preds = %204
  %213 = load %struct.node*, %struct.node** %4, align 8
  %214 = getelementptr inbounds %struct.node, %struct.node* %213, i32 0, i32 2
  %215 = load %struct.node*, %struct.node** %214, align 8
  %216 = getelementptr inbounds %struct.node, %struct.node* %215, i32 0, i32 1
  %217 = load %struct.node*, %struct.node** %216, align 8
  %218 = load %struct.node*, %struct.node** %4, align 8
  %219 = icmp eq %struct.node* %217, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %212
  %221 = load %struct.node*, %struct.node** %4, align 8
  %222 = getelementptr inbounds %struct.node, %struct.node* %221, i32 0, i32 2
  %223 = load %struct.node*, %struct.node** %222, align 8
  %224 = getelementptr inbounds %struct.node, %struct.node* %223, i32 0, i32 1
  store %struct.node* null, %struct.node** %224, align 8
  br label %239

225:                                              ; preds = %212
  %226 = load %struct.node*, %struct.node** %4, align 8
  %227 = load %struct.node*, %struct.node** %4, align 8
  %228 = getelementptr inbounds %struct.node, %struct.node* %227, i32 0, i32 2
  %229 = load %struct.node*, %struct.node** %228, align 8
  %230 = getelementptr inbounds %struct.node, %struct.node* %229, i32 0, i32 0
  %231 = load %struct.node*, %struct.node** %230, align 8
  %232 = icmp eq %struct.node* %226, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  %235 = load %struct.node*, %struct.node** %4, align 8
  %236 = getelementptr inbounds %struct.node, %struct.node* %235, i32 0, i32 2
  %237 = load %struct.node*, %struct.node** %236, align 8
  %238 = getelementptr inbounds %struct.node, %struct.node* %237, i32 0, i32 0
  store %struct.node* null, %struct.node** %238, align 8
  br label %239

239:                                              ; preds = %225, %220
  br label %240

240:                                              ; preds = %239, %209
  %241 = load %struct.node*, %struct.node** %4, align 8
  %242 = getelementptr inbounds %struct.node, %struct.node* %241, i32 0, i32 0
  store %struct.node* null, %struct.node** %242, align 8
  %243 = load %struct.node*, %struct.node** %4, align 8
  %244 = getelementptr inbounds %struct.node, %struct.node* %243, i32 0, i32 1
  store %struct.node* null, %struct.node** %244, align 8
  %245 = load %struct.node*, %struct.node** %4, align 8
  %246 = getelementptr inbounds %struct.node, %struct.node* %245, i32 0, i32 2
  store %struct.node* null, %struct.node** %246, align 8
  %247 = load %struct.node*, %struct.node** %4, align 8
  %248 = call i32 @free(%struct.node* %247)
  br label %249

249:                                              ; preds = %240, %195, %125
  ret void
}

declare dso_local i64 @node_num_set(%struct.node*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sparsebit_all_set(%struct.sparsebit*) #1

declare dso_local i32 @free(%struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
