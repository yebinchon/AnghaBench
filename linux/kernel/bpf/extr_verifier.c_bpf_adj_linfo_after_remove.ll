; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_bpf_adj_linfo_after_remove.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_bpf_adj_linfo_after_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i64, %struct.TYPE_4__*, %struct.bpf_prog* }
%struct.TYPE_4__ = type { i64 }
%struct.bpf_prog = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.bpf_line_info* }
%struct.bpf_line_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i64, i64)* @bpf_adj_linfo_after_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_adj_linfo_after_remove(%struct.bpf_verifier_env* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bpf_prog*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bpf_line_info*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %15 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %14, i32 0, i32 2
  %16 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  store %struct.bpf_prog* %16, %struct.bpf_prog** %8, align 8
  %17 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %18 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %204

25:                                               ; preds = %3
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %27 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.bpf_line_info*, %struct.bpf_line_info** %29, align 8
  store %struct.bpf_line_info* %30, %struct.bpf_line_info** %13, align 8
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %45, %25
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.bpf_line_info*, %struct.bpf_line_info** %13, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %36, i64 %37
  %39 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp uge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %48

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %31

48:                                               ; preds = %43, %31
  %49 = load i64, i64* %9, align 8
  store i64 %49, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %50

50:                                               ; preds = %69, %48
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.bpf_line_info*, %struct.bpf_line_info** %13, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %55, i64 %56
  %58 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %60, %61
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %68

67:                                               ; preds = %54
  br label %72

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %9, align 8
  br label %50

72:                                               ; preds = %67, %50
  %73 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %74 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %106

78:                                               ; preds = %72
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %95, label %85

85:                                               ; preds = %81
  %86 = load %struct.bpf_line_info*, %struct.bpf_line_info** %13, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %86, i64 %87
  %89 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %91, %92
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %85, %81
  %96 = load i64, i64* %11, align 8
  %97 = add i64 %96, -1
  store i64 %97, i64* %11, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = add i64 %98, %99
  %101 = load %struct.bpf_line_info*, %struct.bpf_line_info** %13, align 8
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %9, align 8
  %104 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %101, i64 %103
  %105 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %104, i32 0, i32 0
  store i64 %100, i64* %105, align 8
  br label %106

106:                                              ; preds = %95, %85, %78, %72
  %107 = load i64, i64* %11, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %134

109:                                              ; preds = %106
  %110 = load %struct.bpf_line_info*, %struct.bpf_line_info** %13, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %110, i64 %111
  %113 = load %struct.bpf_line_info*, %struct.bpf_line_info** %13, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %113, i64 %114
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %9, align 8
  %118 = sub i64 %116, %117
  %119 = mul i64 8, %118
  %120 = trunc i64 %119 to i32
  %121 = call i32 @memmove(%struct.bpf_line_info* %112, %struct.bpf_line_info* %115, i32 %120)
  %122 = load i64, i64* %11, align 8
  %123 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %124 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %123, i32 0, i32 1
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = sub i64 %127, %122
  store i64 %128, i64* %126, align 8
  %129 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %130 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %12, align 8
  br label %134

134:                                              ; preds = %109, %106
  %135 = load i64, i64* %10, align 8
  store i64 %135, i64* %9, align 8
  br label %136

136:                                              ; preds = %148, %134
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* %12, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %136
  %141 = load i64, i64* %7, align 8
  %142 = load %struct.bpf_line_info*, %struct.bpf_line_info** %13, align 8
  %143 = load i64, i64* %9, align 8
  %144 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %142, i64 %143
  %145 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = sub i64 %146, %141
  store i64 %147, i64* %145, align 8
  br label %148

148:                                              ; preds = %140
  %149 = load i64, i64* %9, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %9, align 8
  br label %136

151:                                              ; preds = %136
  store i64 0, i64* %9, align 8
  br label %152

152:                                              ; preds = %200, %151
  %153 = load i64, i64* %9, align 8
  %154 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %155 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ule i64 %153, %156
  br i1 %157, label %158, label %203

158:                                              ; preds = %152
  %159 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %160 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %159, i32 0, i32 1
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i64, i64* %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %10, align 8
  %167 = icmp ugt i64 %165, %166
  br i1 %167, label %168, label %199

168:                                              ; preds = %158
  %169 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %170 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %169, i32 0, i32 1
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = load i64, i64* %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %10, align 8
  %177 = load i64, i64* %11, align 8
  %178 = add i64 %176, %177
  %179 = icmp uge i64 %175, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %168
  %181 = load i64, i64* %11, align 8
  %182 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %183 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %182, i32 0, i32 1
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = load i64, i64* %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = sub i64 %188, %181
  store i64 %189, i64* %187, align 8
  br label %198

190:                                              ; preds = %168
  %191 = load i64, i64* %10, align 8
  %192 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %193 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %192, i32 0, i32 1
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = load i64, i64* %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  store i64 %191, i64* %197, align 8
  br label %198

198:                                              ; preds = %190, %180
  br label %199

199:                                              ; preds = %198, %158
  br label %200

200:                                              ; preds = %199
  %201 = load i64, i64* %9, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %9, align 8
  br label %152

203:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  br label %204

204:                                              ; preds = %203, %24
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i32 @memmove(%struct.bpf_line_info*, %struct.bpf_line_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
