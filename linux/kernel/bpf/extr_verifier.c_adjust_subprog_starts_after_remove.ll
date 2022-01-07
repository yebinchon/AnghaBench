; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_adjust_subprog_starts_after_remove.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_adjust_subprog_starts_after_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.bpf_prog_aux* }
%struct.bpf_prog_aux = type { i32, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i64, i64)* @adjust_subprog_starts_after_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_subprog_starts_after_remove(%struct.bpf_verifier_env* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_prog_aux*, align 8
  %10 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %30, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %14 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %19 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %33

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %11

33:                                               ; preds = %28, %11
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %56, %33
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %38 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %43 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add nsw i64 %50, %51
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %59

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %35

59:                                               ; preds = %54, %35
  %60 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %61 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %68, %69
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %72, %59
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %150

79:                                               ; preds = %75
  %80 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %81 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %83, align 8
  store %struct.bpf_prog_aux* %84, %struct.bpf_prog_aux** %9, align 8
  %85 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %86 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %10, align 4
  %91 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %92 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %98 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %101
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 8, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memmove(%struct.TYPE_5__* %96, %struct.TYPE_5__* %102, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %112 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %9, align 8
  %116 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = icmp ne %struct.TYPE_5__* %117, null
  br i1 %118, label %119, label %149

119:                                              ; preds = %79
  %120 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %9, align 8
  %121 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sub nsw i32 %122, %123
  store i32 %124, i32* %10, align 4
  %125 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %9, align 8
  %126 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %125, i32 0, i32 1
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %9, align 8
  %132 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %131, i32 0, i32 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 8, %138
  %140 = trunc i64 %139 to i32
  %141 = call i32 @memmove(%struct.TYPE_5__* %130, %struct.TYPE_5__* %136, i32 %140)
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %9, align 8
  %146 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %119, %79
  br label %165

150:                                              ; preds = %75
  %151 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %152 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %151, i32 0, i32 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %5, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %150
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %161, %150
  br label %165

165:                                              ; preds = %164, %149
  br label %166

166:                                              ; preds = %183, %165
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %169 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp sle i32 %167, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %166
  %173 = load i64, i64* %6, align 8
  %174 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %175 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %174, i32 0, i32 1
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = sub nsw i64 %181, %173
  store i64 %182, i64* %180, align 8
  br label %183

183:                                              ; preds = %172
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  br label %166

186:                                              ; preds = %166
  ret i32 0
}

declare dso_local i32 @memmove(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
