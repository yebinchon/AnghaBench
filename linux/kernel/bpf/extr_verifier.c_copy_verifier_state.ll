; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_copy_verifier_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_copy_verifier_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_state = type { i32, i32, %struct.bpf_func_state**, i32, i32, i32, i32, i32, i32, i32 }
%struct.bpf_func_state = type { i32 }

@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_state*, %struct.bpf_verifier_state*)* @copy_verifier_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_verifier_state(%struct.bpf_verifier_state* %0, %struct.bpf_verifier_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_verifier_state*, align 8
  %5 = alloca %struct.bpf_verifier_state*, align 8
  %6 = alloca %struct.bpf_func_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bpf_verifier_state* %0, %struct.bpf_verifier_state** %4, align 8
  store %struct.bpf_verifier_state* %1, %struct.bpf_verifier_state** %5, align 8
  %10 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %11 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %17 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %20 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %2
  %24 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %25 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @kfree(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @GFP_USER, align 4
  %30 = call i32 @kmalloc(i32 %28, i32 %29)
  %31 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %32 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 8
  %33 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %34 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %170

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %43 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %46 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @memcpy(i32 %44, i32 %47, i32 %48)
  %50 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %51 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %54 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %56 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %80, %41
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %62 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 %60, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %67 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %66, i32 0, i32 2
  %68 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %68, i64 %70
  %72 = load %struct.bpf_func_state*, %struct.bpf_func_state** %71, align 8
  %73 = call i32 @free_func_state(%struct.bpf_func_state* %72)
  %74 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %75 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %74, i32 0, i32 2
  %76 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %76, i64 %78
  store %struct.bpf_func_state* null, %struct.bpf_func_state** %79, align 8
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %59

83:                                               ; preds = %59
  %84 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %85 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %88 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 4
  %89 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %90 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %93 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %95 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %98 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 8
  %99 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %100 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %103 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  %104 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %105 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %108 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %110 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %113 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %115 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %118 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %166, %83
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %122 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp sle i32 %120, %123
  br i1 %124, label %125, label %169

125:                                              ; preds = %119
  %126 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %127 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %126, i32 0, i32 2
  %128 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %128, i64 %130
  %132 = load %struct.bpf_func_state*, %struct.bpf_func_state** %131, align 8
  store %struct.bpf_func_state* %132, %struct.bpf_func_state** %6, align 8
  %133 = load %struct.bpf_func_state*, %struct.bpf_func_state** %6, align 8
  %134 = icmp ne %struct.bpf_func_state* %133, null
  br i1 %134, label %151, label %135

135:                                              ; preds = %125
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call %struct.bpf_func_state* @kzalloc(i32 4, i32 %136)
  store %struct.bpf_func_state* %137, %struct.bpf_func_state** %6, align 8
  %138 = load %struct.bpf_func_state*, %struct.bpf_func_state** %6, align 8
  %139 = icmp ne %struct.bpf_func_state* %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %170

143:                                              ; preds = %135
  %144 = load %struct.bpf_func_state*, %struct.bpf_func_state** %6, align 8
  %145 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %146 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %145, i32 0, i32 2
  %147 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %147, i64 %149
  store %struct.bpf_func_state* %144, %struct.bpf_func_state** %150, align 8
  br label %151

151:                                              ; preds = %143, %125
  %152 = load %struct.bpf_func_state*, %struct.bpf_func_state** %6, align 8
  %153 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %154 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %153, i32 0, i32 2
  %155 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %155, i64 %157
  %159 = load %struct.bpf_func_state*, %struct.bpf_func_state** %158, align 8
  %160 = call i32 @copy_func_state(%struct.bpf_func_state* %152, %struct.bpf_func_state* %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %151
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %3, align 4
  br label %170

165:                                              ; preds = %151
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %119

169:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %163, %140, %37
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @free_func_state(%struct.bpf_func_state*) #1

declare dso_local %struct.bpf_func_state* @kzalloc(i32, i32) #1

declare dso_local i32 @copy_func_state(%struct.bpf_func_state*, %struct.bpf_func_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
