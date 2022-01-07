; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_for_each_str_off.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_for_each_str_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dedup = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8* }
%struct.TYPE_4__ = type { i32, %struct.btf_type** }
%struct.btf_type = type { i32 }
%struct.btf_member = type { i32 }
%struct.btf_enum = type { i32 }
%struct.btf_param = type { i32 }
%struct.btf_ext_info_sec = type { i32, i32 }
%struct.bpf_line_info_min = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_dedup*, i32 (i32*, i8*)*, i8*)* @btf_for_each_str_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_for_each_str_off(%struct.btf_dedup* %0, i32 (i32*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf_dedup*, align 8
  %6 = alloca i32 (i32*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.btf_type*, align 8
  %15 = alloca %struct.btf_member*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.btf_enum*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.btf_param*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.btf_ext_info_sec*, align 8
  %22 = alloca %struct.bpf_line_info_min*, align 8
  %23 = alloca i32, align 4
  store %struct.btf_dedup* %0, %struct.btf_dedup** %5, align 8
  store i32 (i32*, i8*)* %1, i32 (i32*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 1, i32* %10, align 4
  br label %24

24:                                               ; preds = %134, %3
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %27 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %25, %30
  br i1 %31, label %32, label %137

32:                                               ; preds = %24
  %33 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %34 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.btf_type**, %struct.btf_type*** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.btf_type*, %struct.btf_type** %37, i64 %39
  %41 = load %struct.btf_type*, %struct.btf_type** %40, align 8
  store %struct.btf_type* %41, %struct.btf_type** %14, align 8
  %42 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %6, align 8
  %43 = load %struct.btf_type*, %struct.btf_type** %14, align 8
  %44 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %43, i32 0, i32 0
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 %42(i32* %44, i8* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %32
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %4, align 4
  br label %228

51:                                               ; preds = %32
  %52 = load %struct.btf_type*, %struct.btf_type** %14, align 8
  %53 = call i32 @btf_kind(%struct.btf_type* %52)
  switch i32 %53, label %132 [
    i32 129, label %54
    i32 128, label %54
    i32 131, label %80
    i32 130, label %106
  ]

54:                                               ; preds = %51, %51
  %55 = load %struct.btf_type*, %struct.btf_type** %14, align 8
  %56 = call %struct.btf_member* @btf_members(%struct.btf_type* %55)
  store %struct.btf_member* %56, %struct.btf_member** %15, align 8
  %57 = load %struct.btf_type*, %struct.btf_type** %14, align 8
  %58 = call i32 @btf_vlen(%struct.btf_type* %57)
  store i32 %58, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %76, %54
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %6, align 8
  %65 = load %struct.btf_member*, %struct.btf_member** %15, align 8
  %66 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %65, i32 0, i32 0
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 %64(i32* %66, i8* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %4, align 4
  br label %228

73:                                               ; preds = %63
  %74 = load %struct.btf_member*, %struct.btf_member** %15, align 8
  %75 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %74, i32 1
  store %struct.btf_member* %75, %struct.btf_member** %15, align 8
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %59

79:                                               ; preds = %59
  br label %133

80:                                               ; preds = %51
  %81 = load %struct.btf_type*, %struct.btf_type** %14, align 8
  %82 = call %struct.btf_enum* @btf_enum(%struct.btf_type* %81)
  store %struct.btf_enum* %82, %struct.btf_enum** %17, align 8
  %83 = load %struct.btf_type*, %struct.btf_type** %14, align 8
  %84 = call i32 @btf_vlen(%struct.btf_type* %83)
  store i32 %84, i32* %18, align 4
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %102, %80
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %6, align 8
  %91 = load %struct.btf_enum*, %struct.btf_enum** %17, align 8
  %92 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %91, i32 0, i32 0
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 %90(i32* %92, i8* %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %4, align 4
  br label %228

99:                                               ; preds = %89
  %100 = load %struct.btf_enum*, %struct.btf_enum** %17, align 8
  %101 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %100, i32 1
  store %struct.btf_enum* %101, %struct.btf_enum** %17, align 8
  br label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %85

105:                                              ; preds = %85
  br label %133

106:                                              ; preds = %51
  %107 = load %struct.btf_type*, %struct.btf_type** %14, align 8
  %108 = call %struct.btf_param* @btf_params(%struct.btf_type* %107)
  store %struct.btf_param* %108, %struct.btf_param** %19, align 8
  %109 = load %struct.btf_type*, %struct.btf_type** %14, align 8
  %110 = call i32 @btf_vlen(%struct.btf_type* %109)
  store i32 %110, i32* %20, align 4
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %128, %106
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %20, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %111
  %116 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %6, align 8
  %117 = load %struct.btf_param*, %struct.btf_param** %19, align 8
  %118 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %117, i32 0, i32 0
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 %116(i32* %118, i8* %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %4, align 4
  br label %228

125:                                              ; preds = %115
  %126 = load %struct.btf_param*, %struct.btf_param** %19, align 8
  %127 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %126, i32 1
  store %struct.btf_param* %127, %struct.btf_param** %19, align 8
  br label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %111

131:                                              ; preds = %111
  br label %133

132:                                              ; preds = %51
  br label %133

133:                                              ; preds = %132, %131, %105, %79
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %24

137:                                              ; preds = %24
  %138 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %139 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %138, i32 0, i32 0
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = icmp ne %struct.TYPE_6__* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  br label %228

143:                                              ; preds = %137
  %144 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %145 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %8, align 8
  %150 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %151 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %157 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr i8, i8* %155, i64 %162
  store i8* %163, i8** %9, align 8
  %164 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %165 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %164, i32 0, i32 0
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %226, %143
  %171 = load i8*, i8** %8, align 8
  %172 = load i8*, i8** %9, align 8
  %173 = icmp ult i8* %171, %172
  br i1 %173, label %174, label %227

174:                                              ; preds = %170
  %175 = load i8*, i8** %8, align 8
  %176 = bitcast i8* %175 to %struct.btf_ext_info_sec*
  store %struct.btf_ext_info_sec* %176, %struct.btf_ext_info_sec** %21, align 8
  %177 = load %struct.btf_ext_info_sec*, %struct.btf_ext_info_sec** %21, align 8
  %178 = getelementptr inbounds %struct.btf_ext_info_sec, %struct.btf_ext_info_sec* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %23, align 4
  %180 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %6, align 8
  %181 = load %struct.btf_ext_info_sec*, %struct.btf_ext_info_sec** %21, align 8
  %182 = getelementptr inbounds %struct.btf_ext_info_sec, %struct.btf_ext_info_sec* %181, i32 0, i32 1
  %183 = load i8*, i8** %7, align 8
  %184 = call i32 %180(i32* %182, i8* %183)
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %174
  %188 = load i32, i32* %12, align 4
  store i32 %188, i32* %4, align 4
  br label %228

189:                                              ; preds = %174
  %190 = load i8*, i8** %8, align 8
  %191 = getelementptr i8, i8* %190, i64 8
  store i8* %191, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %192

192:                                              ; preds = %223, %189
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %23, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %226

196:                                              ; preds = %192
  %197 = load i8*, i8** %8, align 8
  %198 = bitcast i8* %197 to %struct.bpf_line_info_min*
  store %struct.bpf_line_info_min* %198, %struct.bpf_line_info_min** %22, align 8
  %199 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %6, align 8
  %200 = load %struct.bpf_line_info_min*, %struct.bpf_line_info_min** %22, align 8
  %201 = getelementptr inbounds %struct.bpf_line_info_min, %struct.bpf_line_info_min* %200, i32 0, i32 1
  %202 = load i8*, i8** %7, align 8
  %203 = call i32 %199(i32* %201, i8* %202)
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %12, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %196
  %207 = load i32, i32* %12, align 4
  store i32 %207, i32* %4, align 4
  br label %228

208:                                              ; preds = %196
  %209 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %6, align 8
  %210 = load %struct.bpf_line_info_min*, %struct.bpf_line_info_min** %22, align 8
  %211 = getelementptr inbounds %struct.bpf_line_info_min, %struct.bpf_line_info_min* %210, i32 0, i32 0
  %212 = load i8*, i8** %7, align 8
  %213 = call i32 %209(i32* %211, i8* %212)
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %208
  %217 = load i32, i32* %12, align 4
  store i32 %217, i32* %4, align 4
  br label %228

218:                                              ; preds = %208
  %219 = load i32, i32* %13, align 4
  %220 = load i8*, i8** %8, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr i8, i8* %220, i64 %221
  store i8* %222, i8** %8, align 8
  br label %223

223:                                              ; preds = %218
  %224 = load i32, i32* %10, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %10, align 4
  br label %192

226:                                              ; preds = %192
  br label %170

227:                                              ; preds = %170
  store i32 0, i32* %4, align 4
  br label %228

228:                                              ; preds = %227, %216, %206, %187, %142, %123, %97, %71, %49
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local i32 @btf_kind(%struct.btf_type*) #1

declare dso_local %struct.btf_member* @btf_members(%struct.btf_type*) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local %struct.btf_enum* @btf_enum(%struct.btf_type*) #1

declare dso_local %struct.btf_param* @btf_params(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
