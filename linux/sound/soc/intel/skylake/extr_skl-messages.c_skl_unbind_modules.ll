; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_unbind_modules.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_unbind_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_module_cfg = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.skl_module_inst_id, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.skl_module_inst_id = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.skl_ipc_bind_unbind_msg = type { i32, i32, i32, i32, i32, i32, i32 }

@SKL_PIN_BIND_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_unbind_modules(%struct.skl_dev* %0, %struct.skl_module_cfg* %1, %struct.skl_module_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.skl_dev*, align 8
  %6 = alloca %struct.skl_module_cfg*, align 8
  %7 = alloca %struct.skl_module_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.skl_ipc_bind_unbind_msg, align 4
  %10 = alloca %struct.skl_module_inst_id, align 4
  %11 = alloca %struct.skl_module_inst_id, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.skl_dev* %0, %struct.skl_dev** %5, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %6, align 8
  store %struct.skl_module_cfg* %2, %struct.skl_module_cfg** %7, align 8
  %18 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %19 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %18, i32 0, i32 2
  %20 = bitcast %struct.skl_module_inst_id* %10 to i8*
  %21 = bitcast %struct.skl_module_inst_id* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %23 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %22, i32 0, i32 2
  %24 = bitcast %struct.skl_module_inst_id* %11 to i8*
  %25 = bitcast %struct.skl_module_inst_id* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 8 %25, i64 8, i1 false)
  %26 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %27 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %32 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  %36 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %37 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %38 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %39 = call i32 @skl_dump_bind_info(%struct.skl_dev* %36, %struct.skl_module_cfg* %37, %struct.skl_module_cfg* %38)
  %40 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %41 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = bitcast %struct.skl_module_inst_id* %11 to i64*
  %45 = load i64, i64* %44, align 4
  %46 = call i32 @skl_get_queue_index(%struct.TYPE_6__* %42, i64 %45, i32 %43)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %136

50:                                               ; preds = %3
  %51 = load i32, i32* %14, align 4
  %52 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %54 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = bitcast %struct.skl_module_inst_id* %10 to i64*
  %58 = load i64, i64* %57, align 4
  %59 = call i32 @skl_get_queue_index(%struct.TYPE_6__* %55, i64 %58, i32 %56)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %136

63:                                               ; preds = %50
  %64 = load i32, i32* %15, align 4
  %65 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %67 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %16, align 4
  %74 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %75 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @SKL_PIN_BIND_DONE, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %63
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @SKL_PIN_BIND_DONE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %63
  store i32 0, i32* %4, align 4
  br label %136

90:                                               ; preds = %85
  %91 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %92 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.skl_module_inst_id, %struct.skl_module_inst_id* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 6
  store i32 %94, i32* %95, align 4
  %96 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %97 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.skl_module_inst_id, %struct.skl_module_inst_id* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 5
  store i32 %99, i32* %100, align 4
  %101 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %102 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.skl_module_inst_id, %struct.skl_module_inst_id* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 4
  store i32 %104, i32* %105, align 4
  %106 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %107 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.skl_module_inst_id, %struct.skl_module_inst_id* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 3
  store i32 %109, i32* %110, align 4
  %111 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 2
  store i32 0, i32* %111, align 4
  %112 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %113 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %112, i32 0, i32 0
  %114 = call i32 @skl_ipc_bind_unbind(i32* %113, %struct.skl_ipc_bind_unbind_msg* %9)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %90
  %118 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %119 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @skl_free_queue(%struct.TYPE_6__* %120, i32 %121)
  %123 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %124 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %123, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @skl_free_queue(%struct.TYPE_6__* %125, i32 %126)
  %128 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %129 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %133 = call i32 @skl_clear_module_state(%struct.TYPE_6__* %130, i32 %131, %struct.skl_module_cfg* %132)
  br label %134

134:                                              ; preds = %117, %90
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %134, %89, %62, %49
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @skl_dump_bind_info(%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_module_cfg*) #2

declare dso_local i32 @skl_get_queue_index(%struct.TYPE_6__*, i64, i32) #2

declare dso_local i32 @skl_ipc_bind_unbind(i32*, %struct.skl_ipc_bind_unbind_msg*) #2

declare dso_local i32 @skl_free_queue(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @skl_clear_module_state(%struct.TYPE_6__*, i32, %struct.skl_module_cfg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
