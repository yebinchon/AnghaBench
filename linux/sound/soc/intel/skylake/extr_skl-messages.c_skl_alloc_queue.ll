; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_module_pin = type { i32, i64, %struct.skl_module_cfg*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.skl_module_cfg = type { %struct.skl_module_inst_id }
%struct.skl_module_inst_id = type { i64, i64, i32 }

@SKL_PIN_UNBIND = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skl_module_pin*, %struct.skl_module_cfg*, i32)* @skl_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_alloc_queue(%struct.skl_module_pin* %0, %struct.skl_module_cfg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.skl_module_pin*, align 8
  %6 = alloca %struct.skl_module_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.skl_module_inst_id, align 8
  store %struct.skl_module_pin* %0, %struct.skl_module_pin** %5, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %11 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %10, i32 0, i32 0
  %12 = bitcast %struct.skl_module_inst_id* %9 to i8*
  %13 = bitcast %struct.skl_module_inst_id* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %122, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %125

18:                                               ; preds = %14
  %19 = load %struct.skl_module_pin*, %struct.skl_module_pin** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %19, i64 %21
  %23 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %81

26:                                               ; preds = %18
  %27 = load %struct.skl_module_pin*, %struct.skl_module_pin** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %27, i64 %29
  %31 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %80, label %34

34:                                               ; preds = %26
  %35 = load %struct.skl_module_pin*, %struct.skl_module_pin** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %35, i64 %37
  %39 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SKL_PIN_UNBIND, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %34
  %44 = load %struct.skl_module_pin*, %struct.skl_module_pin** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %44, i64 %46
  %48 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = getelementptr inbounds %struct.skl_module_inst_id, %struct.skl_module_inst_id* %9, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.skl_module_pin*, %struct.skl_module_pin** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %51, i64 %53
  %55 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 %50, i64* %56, align 8
  %57 = getelementptr inbounds %struct.skl_module_inst_id, %struct.skl_module_inst_id* %9, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.skl_module_pin*, %struct.skl_module_pin** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %59, i64 %61
  %63 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i64 %58, i64* %64, align 8
  %65 = getelementptr inbounds %struct.skl_module_inst_id, %struct.skl_module_inst_id* %9, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.skl_module_pin*, %struct.skl_module_pin** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %67, i64 %69
  %71 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 %66, i32* %72, align 8
  %73 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %74 = load %struct.skl_module_pin*, %struct.skl_module_pin** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %74, i64 %76
  %78 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %77, i32 0, i32 2
  store %struct.skl_module_cfg* %73, %struct.skl_module_cfg** %78, align 8
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %128

80:                                               ; preds = %34, %26
  br label %121

81:                                               ; preds = %18
  %82 = load %struct.skl_module_pin*, %struct.skl_module_pin** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %82, i64 %84
  %86 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.skl_module_inst_id, %struct.skl_module_inst_id* %9, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %120

92:                                               ; preds = %81
  %93 = load %struct.skl_module_pin*, %struct.skl_module_pin** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %93, i64 %95
  %97 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.skl_module_inst_id, %struct.skl_module_inst_id* %9, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %92
  %104 = load %struct.skl_module_pin*, %struct.skl_module_pin** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %104, i64 %106
  %108 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SKL_PIN_UNBIND, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %103
  %113 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %114 = load %struct.skl_module_pin*, %struct.skl_module_pin** %5, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %114, i64 %116
  %118 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %117, i32 0, i32 2
  store %struct.skl_module_cfg* %113, %struct.skl_module_cfg** %118, align 8
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %4, align 4
  br label %128

120:                                              ; preds = %103, %92, %81
  br label %121

121:                                              ; preds = %120, %80
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %14

125:                                              ; preds = %14
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %125, %112, %43
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
