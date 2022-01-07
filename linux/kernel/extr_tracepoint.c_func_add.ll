; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_tracepoint.c_func_add.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_tracepoint.c_func_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint_func = type { i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tracepoint_func* (%struct.tracepoint_func**, %struct.tracepoint_func*, i32)* @func_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tracepoint_func* @func_add(%struct.tracepoint_func** %0, %struct.tracepoint_func* %1, i32 %2) #0 {
  %4 = alloca %struct.tracepoint_func*, align 8
  %5 = alloca %struct.tracepoint_func**, align 8
  %6 = alloca %struct.tracepoint_func*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tracepoint_func*, align 8
  %9 = alloca %struct.tracepoint_func*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tracepoint_func** %0, %struct.tracepoint_func*** %5, align 8
  store %struct.tracepoint_func* %1, %struct.tracepoint_func** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %12 = load %struct.tracepoint_func*, %struct.tracepoint_func** %6, align 8
  %13 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.tracepoint_func* @ERR_PTR(i32 %22)
  store %struct.tracepoint_func* %23, %struct.tracepoint_func** %4, align 8
  br label %157

24:                                               ; preds = %3
  %25 = load %struct.tracepoint_func**, %struct.tracepoint_func*** %5, align 8
  %26 = load %struct.tracepoint_func*, %struct.tracepoint_func** %25, align 8
  %27 = call i32 @debug_print_probes(%struct.tracepoint_func* %26)
  %28 = load %struct.tracepoint_func**, %struct.tracepoint_func*** %5, align 8
  %29 = load %struct.tracepoint_func*, %struct.tracepoint_func** %28, align 8
  store %struct.tracepoint_func* %29, %struct.tracepoint_func** %8, align 8
  %30 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %31 = icmp ne %struct.tracepoint_func* %30, null
  br i1 %31, label %32, label %86

32:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %82, %32
  %34 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %34, i64 %36
  %38 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %85

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %45, i64 %47
  %49 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %53, %44, %41
  %56 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %56, i64 %58
  %60 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.tracepoint_func*, %struct.tracepoint_func** %6, align 8
  %63 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %55
  %67 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %67, i64 %69
  %71 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.tracepoint_func*, %struct.tracepoint_func** %6, align 8
  %74 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = load i32, i32* @EEXIST, align 4
  %79 = sub nsw i32 0, %78
  %80 = call %struct.tracepoint_func* @ERR_PTR(i32 %79)
  store %struct.tracepoint_func* %80, %struct.tracepoint_func** %4, align 8
  br label %157

81:                                               ; preds = %66, %55
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %33

85:                                               ; preds = %33
  br label %86

86:                                               ; preds = %85, %24
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 2
  %89 = call %struct.tracepoint_func* @allocate_probes(i32 %88)
  store %struct.tracepoint_func* %89, %struct.tracepoint_func** %9, align 8
  %90 = load %struct.tracepoint_func*, %struct.tracepoint_func** %9, align 8
  %91 = icmp eq %struct.tracepoint_func* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  %95 = call %struct.tracepoint_func* @ERR_PTR(i32 %94)
  store %struct.tracepoint_func* %95, %struct.tracepoint_func** %4, align 8
  br label %157

96:                                               ; preds = %86
  %97 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %98 = icmp ne %struct.tracepoint_func* %97, null
  br i1 %98, label %99, label %136

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %11, align 4
  %104 = load %struct.tracepoint_func*, %struct.tracepoint_func** %9, align 8
  %105 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 24
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memcpy(%struct.tracepoint_func* %104, %struct.tracepoint_func* %105, i32 %109)
  br label %135

111:                                              ; preds = %99
  %112 = load %struct.tracepoint_func*, %struct.tracepoint_func** %9, align 8
  %113 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 24
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memcpy(%struct.tracepoint_func* %112, %struct.tracepoint_func* %113, i32 %117)
  %119 = load %struct.tracepoint_func*, %struct.tracepoint_func** %9, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %119, i64 %121
  %123 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %122, i64 1
  %124 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %124, i64 %126
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = sub nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 24
  %133 = trunc i64 %132 to i32
  %134 = call i32 @memcpy(%struct.tracepoint_func* %123, %struct.tracepoint_func* %127, i32 %133)
  br label %135

135:                                              ; preds = %111, %102
  br label %137

136:                                              ; preds = %96
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %136, %135
  %138 = load %struct.tracepoint_func*, %struct.tracepoint_func** %9, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %138, i64 %140
  %142 = load %struct.tracepoint_func*, %struct.tracepoint_func** %6, align 8
  %143 = bitcast %struct.tracepoint_func* %141 to i8*
  %144 = bitcast %struct.tracepoint_func* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 8 %144, i64 24, i1 false)
  %145 = load %struct.tracepoint_func*, %struct.tracepoint_func** %9, align 8
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %145, i64 %148
  %150 = getelementptr inbounds %struct.tracepoint_func, %struct.tracepoint_func* %149, i32 0, i32 0
  store i64 0, i64* %150, align 8
  %151 = load %struct.tracepoint_func*, %struct.tracepoint_func** %9, align 8
  %152 = load %struct.tracepoint_func**, %struct.tracepoint_func*** %5, align 8
  store %struct.tracepoint_func* %151, %struct.tracepoint_func** %152, align 8
  %153 = load %struct.tracepoint_func**, %struct.tracepoint_func*** %5, align 8
  %154 = load %struct.tracepoint_func*, %struct.tracepoint_func** %153, align 8
  %155 = call i32 @debug_print_probes(%struct.tracepoint_func* %154)
  %156 = load %struct.tracepoint_func*, %struct.tracepoint_func** %8, align 8
  store %struct.tracepoint_func* %156, %struct.tracepoint_func** %4, align 8
  br label %157

157:                                              ; preds = %137, %92, %77, %20
  %158 = load %struct.tracepoint_func*, %struct.tracepoint_func** %4, align 8
  ret %struct.tracepoint_func* %158
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.tracepoint_func* @ERR_PTR(i32) #1

declare dso_local i32 @debug_print_probes(%struct.tracepoint_func*) #1

declare dso_local %struct.tracepoint_func* @allocate_probes(i32) #1

declare dso_local i32 @memcpy(%struct.tracepoint_func*, %struct.tracepoint_func*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
