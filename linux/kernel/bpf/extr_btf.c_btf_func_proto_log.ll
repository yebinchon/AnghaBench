; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_func_proto_log.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_func_proto_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_type = type { i32 }
%struct.btf_param = type { i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"return=%u args=(\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vararg\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%u %s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c", %u %s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c", vararg\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf_verifier_env*, %struct.btf_type*)* @btf_func_proto_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_func_proto_log(%struct.btf_verifier_env* %0, %struct.btf_type* %1) #0 {
  %3 = alloca %struct.btf_verifier_env*, align 8
  %4 = alloca %struct.btf_type*, align 8
  %5 = alloca %struct.btf_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btf_param*, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %3, align 8
  store %struct.btf_type* %1, %struct.btf_type** %4, align 8
  %9 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %10 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %9, i64 1
  %11 = bitcast %struct.btf_type* %10 to %struct.btf_param*
  store %struct.btf_param* %11, %struct.btf_param** %5, align 8
  %12 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %13 = call i32 @btf_type_vlen(%struct.btf_type* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %15 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %16 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (%struct.btf_verifier_env*, i8*, ...) @btf_verifier_log(%struct.btf_verifier_env* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %23 = call i32 (%struct.btf_verifier_env*, i8*, ...) @btf_verifier_log(%struct.btf_verifier_env* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %109

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.btf_param*, %struct.btf_param** %5, align 8
  %29 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %28, i64 0
  %30 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %35 = call i32 (%struct.btf_verifier_env*, i8*, ...) @btf_verifier_log(%struct.btf_verifier_env* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %109

36:                                               ; preds = %27, %24
  %37 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %38 = load %struct.btf_param*, %struct.btf_param** %5, align 8
  %39 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %38, i64 0
  %40 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %43 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.btf_param*, %struct.btf_param** %5, align 8
  %46 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %45, i64 0
  %47 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @__btf_name_by_offset(i32 %44, i32 %48)
  %50 = call i32 (%struct.btf_verifier_env*, i8*, ...) @btf_verifier_log(%struct.btf_verifier_env* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %41, i32 %49)
  store i32 1, i32* %7, align 4
  br label %51

51:                                               ; preds = %75, %36
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %51
  %57 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %58 = load %struct.btf_param*, %struct.btf_param** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %58, i64 %60
  %62 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %65 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.btf_param*, %struct.btf_param** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %67, i64 %69
  %71 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @__btf_name_by_offset(i32 %66, i32 %72)
  %74 = call i32 (%struct.btf_verifier_env*, i8*, ...) @btf_verifier_log(%struct.btf_verifier_env* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %63, i32 %73)
  br label %75

75:                                               ; preds = %56
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %51

78:                                               ; preds = %51
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %108

81:                                               ; preds = %78
  %82 = load %struct.btf_param*, %struct.btf_param** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %82, i64 %85
  store %struct.btf_param* %86, %struct.btf_param** %8, align 8
  %87 = load %struct.btf_param*, %struct.btf_param** %8, align 8
  %88 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %81
  %92 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %93 = load %struct.btf_param*, %struct.btf_param** %8, align 8
  %94 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %97 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.btf_param*, %struct.btf_param** %8, align 8
  %100 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @__btf_name_by_offset(i32 %98, i32 %101)
  %103 = call i32 (%struct.btf_verifier_env*, i8*, ...) @btf_verifier_log(%struct.btf_verifier_env* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %95, i32 %102)
  br label %107

104:                                              ; preds = %81
  %105 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %106 = call i32 (%struct.btf_verifier_env*, i8*, ...) @btf_verifier_log(%struct.btf_verifier_env* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %91
  br label %108

108:                                              ; preds = %107, %78
  br label %109

109:                                              ; preds = %108, %33, %21
  %110 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %111 = call i32 (%struct.btf_verifier_env*, i8*, ...) @btf_verifier_log(%struct.btf_verifier_env* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @btf_type_vlen(%struct.btf_type*) #1

declare dso_local i32 @btf_verifier_log(%struct.btf_verifier_env*, i8*, ...) #1

declare dso_local i32 @__btf_name_by_offset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
