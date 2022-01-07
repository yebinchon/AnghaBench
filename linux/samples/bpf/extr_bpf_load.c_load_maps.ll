; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_bpf_load.c_load_maps.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_bpf_load.c_load_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_data = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32, i32, i32 }

@map_fd = common dso_local global i8** null, align 8
@BPF_F_NUMA_NODE = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_ARRAY_OF_MAPS = common dso_local global i64 0, align 8
@BPF_MAP_TYPE_HASH_OF_MAPS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"failed to create map %d (%s): %d %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_PROG_ARRAY = common dso_local global i64 0, align 8
@prog_array_fd = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map_data*, i32, i32 (%struct.bpf_map_data*, i32)*)* @load_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_maps(%struct.bpf_map_data* %0, i32 %1, i32 (%struct.bpf_map_data*, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_map_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.bpf_map_data*, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bpf_map_data* %0, %struct.bpf_map_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct.bpf_map_data*, i32)* %2, i32 (%struct.bpf_map_data*, i32)** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %236, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %239

15:                                               ; preds = %11
  %16 = load i32 (%struct.bpf_map_data*, i32)*, i32 (%struct.bpf_map_data*, i32)** %7, align 8
  %17 = icmp ne i32 (%struct.bpf_map_data*, i32)* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = load i32 (%struct.bpf_map_data*, i32)*, i32 (%struct.bpf_map_data*, i32)** %7, align 8
  %20 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %20, i64 %22
  %24 = load i32, i32* %8, align 4
  %25 = call i32 %19(%struct.bpf_map_data* %23, i32 %24)
  %26 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %26, i64 %28
  %30 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %46

33:                                               ; preds = %18
  %34 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %34, i64 %36
  %38 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8**, i8*** @map_fd, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %41, i8** %45, align 8
  br label %236

46:                                               ; preds = %18
  br label %47

47:                                               ; preds = %46, %15
  %48 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %48, i64 %50
  %52 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BPF_F_NUMA_NODE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %59, i64 %61
  %63 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  br label %67

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %58
  %68 = phi i32 [ %65, %58 ], [ -1, %66 ]
  store i32 %68, i32* %9, align 4
  %69 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %69, i64 %71
  %73 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BPF_MAP_TYPE_ARRAY_OF_MAPS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %88, label %78

78:                                               ; preds = %67
  %79 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %79, i64 %81
  %83 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BPF_MAP_TYPE_HASH_OF_MAPS, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %141

88:                                               ; preds = %78, %67
  %89 = load i8**, i8*** @map_fd, align 8
  %90 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %90, i64 %92
  %94 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i8*, i8** %89, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %10, align 4
  %100 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %100, i64 %102
  %104 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %107, i64 %109
  %111 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %113, i64 %115
  %117 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %121, i64 %123
  %125 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %128, i64 %130
  %132 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i8* @bpf_create_map_in_map_node(i64 %106, i8* %112, i32 %119, i32 %120, i32 %127, i32 %134, i32 %135)
  %137 = load i8**, i8*** @map_fd, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  store i8* %136, i8** %140, align 8
  br label %189

141:                                              ; preds = %78
  %142 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %142, i64 %144
  %146 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %149, i64 %151
  %153 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %155, i64 %157
  %159 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %162, i64 %164
  %166 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %169, i64 %171
  %173 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %176, i64 %178
  %180 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = call i8* @bpf_create_map_node(i64 %148, i8* %154, i32 %161, i32 %168, i32 %175, i32 %182, i32 %183)
  %185 = load i8**, i8*** @map_fd, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  store i8* %184, i8** %188, align 8
  br label %189

189:                                              ; preds = %141, %88
  %190 = load i8**, i8*** @map_fd, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ult i8* %194, null
  br i1 %195, label %196, label %208

196:                                              ; preds = %189
  %197 = load i32, i32* %8, align 4
  %198 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %198, i64 %200
  %202 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = load i32, i32* @errno, align 4
  %205 = load i32, i32* @errno, align 4
  %206 = call i8* @strerror(i32 %205)
  %207 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %197, i8* %203, i32 %204, i8* %206)
  store i32 1, i32* %4, align 4
  br label %240

208:                                              ; preds = %189
  %209 = load i8**, i8*** @map_fd, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %209, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = ptrtoint i8* %213 to i32
  %215 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %215, i64 %217
  %219 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %218, i32 0, i32 0
  store i32 %214, i32* %219, align 8
  %220 = load %struct.bpf_map_data*, %struct.bpf_map_data** %5, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %220, i64 %222
  %224 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @BPF_MAP_TYPE_PROG_ARRAY, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %208
  %230 = load i8**, i8*** @map_fd, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8*, i8** %230, i64 %232
  %234 = load i8*, i8** %233, align 8
  store i8* %234, i8** @prog_array_fd, align 8
  br label %235

235:                                              ; preds = %229, %208
  br label %236

236:                                              ; preds = %235, %33
  %237 = load i32, i32* %8, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %8, align 4
  br label %11

239:                                              ; preds = %11
  store i32 0, i32* %4, align 4
  br label %240

240:                                              ; preds = %239, %196
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i8* @bpf_create_map_in_map_node(i64, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @bpf_create_map_node(i64, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
