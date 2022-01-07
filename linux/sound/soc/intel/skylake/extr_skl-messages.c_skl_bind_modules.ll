; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_bind_modules.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_bind_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32, i32 }
%struct.skl_module_cfg = type { i64, i64, i64, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.skl_module* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.skl_module = type { i32, i32, %struct.skl_module_iface* }
%struct.skl_module_iface = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.skl_module_fmt }
%struct.skl_module_fmt = type { i32 }
%struct.TYPE_6__ = type { %struct.skl_module_fmt }
%struct.skl_ipc_bind_unbind_msg = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.skl_cpr_pin_fmt = type { i32, i32, i32 }

@SKL_MODULE_INIT_DONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SKL_MODULE_TYPE_COPIER = common dso_local global i64 0, align 8
@CPR_SINK_FMT_PARAM_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"src queue = %d dst queue =%d\0A\00", align 1
@SKL_MODULE_BIND_DONE = common dso_local global i64 0, align 8
@SKL_PIN_BIND_DONE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_bind_modules(%struct.skl_dev* %0, %struct.skl_module_cfg* %1, %struct.skl_module_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.skl_dev*, align 8
  %6 = alloca %struct.skl_module_cfg*, align 8
  %7 = alloca %struct.skl_module_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.skl_ipc_bind_unbind_msg, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.skl_module_fmt*, align 8
  %15 = alloca %struct.skl_cpr_pin_fmt, align 4
  %16 = alloca %struct.skl_module*, align 8
  %17 = alloca %struct.skl_module_iface*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %5, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %6, align 8
  store %struct.skl_module_cfg* %2, %struct.skl_module_cfg** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %19 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %18, i32 0, i32 6
  %20 = load %struct.skl_module*, %struct.skl_module** %19, align 8
  %21 = getelementptr inbounds %struct.skl_module, %struct.skl_module* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %24 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %23, i32 0, i32 6
  %25 = load %struct.skl_module*, %struct.skl_module** %24, align 8
  %26 = getelementptr inbounds %struct.skl_module, %struct.skl_module* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %29 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %30 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %31 = call i32 @skl_dump_bind_info(%struct.skl_dev* %28, %struct.skl_module_cfg* %29, %struct.skl_module_cfg* %30)
  %32 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %33 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SKL_MODULE_INIT_DONE, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %3
  %38 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %39 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SKL_MODULE_INIT_DONE, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %3
  store i32 0, i32* %4, align 4
  br label %195

44:                                               ; preds = %37
  %45 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %46 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %45, i32 0, i32 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @skl_alloc_queue(%struct.TYPE_9__* %47, %struct.skl_module_cfg* %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %195

56:                                               ; preds = %44
  %57 = load i32, i32* %12, align 4
  %58 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %60 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %59, i32 0, i32 3
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @skl_alloc_queue(%struct.TYPE_9__* %61, %struct.skl_module_cfg* %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %69 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %68, i32 0, i32 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @skl_free_queue(%struct.TYPE_9__* %70, i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %195

75:                                               ; preds = %56
  %76 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %77 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SKL_MODULE_TYPE_COPIER, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %124

81:                                               ; preds = %75
  %82 = load i32, i32* %12, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %124

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  %86 = getelementptr inbounds %struct.skl_cpr_pin_fmt, %struct.skl_cpr_pin_fmt* %15, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %88 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %87, i32 0, i32 6
  %89 = load %struct.skl_module*, %struct.skl_module** %88, align 8
  store %struct.skl_module* %89, %struct.skl_module** %16, align 8
  %90 = load %struct.skl_module*, %struct.skl_module** %16, align 8
  %91 = getelementptr inbounds %struct.skl_module, %struct.skl_module* %90, i32 0, i32 2
  %92 = load %struct.skl_module_iface*, %struct.skl_module_iface** %91, align 8
  %93 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %94 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %92, i64 %95
  store %struct.skl_module_iface* %96, %struct.skl_module_iface** %17, align 8
  %97 = load %struct.skl_module_iface*, %struct.skl_module_iface** %17, align 8
  %98 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store %struct.skl_module_fmt* %101, %struct.skl_module_fmt** %14, align 8
  %102 = getelementptr inbounds %struct.skl_cpr_pin_fmt, %struct.skl_cpr_pin_fmt* %15, i32 0, i32 2
  %103 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %14, align 8
  %104 = call i32 @fill_pin_params(i32* %102, %struct.skl_module_fmt* %103)
  %105 = load %struct.skl_module_iface*, %struct.skl_module_iface** %17, align 8
  %106 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store %struct.skl_module_fmt* %111, %struct.skl_module_fmt** %14, align 8
  %112 = getelementptr inbounds %struct.skl_cpr_pin_fmt, %struct.skl_cpr_pin_fmt* %15, i32 0, i32 1
  %113 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %14, align 8
  %114 = call i32 @fill_pin_params(i32* %112, %struct.skl_module_fmt* %113)
  %115 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %116 = bitcast %struct.skl_cpr_pin_fmt* %15 to i8*
  %117 = load i32, i32* @CPR_SINK_FMT_PARAM_ID, align 4
  %118 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %119 = call i32 @skl_set_module_params(%struct.skl_dev* %115, i8* %116, i32 12, i32 %117, %struct.skl_module_cfg* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %84
  br label %183

123:                                              ; preds = %84
  br label %124

124:                                              ; preds = %123, %81, %75
  %125 = load i32, i32* %13, align 4
  %126 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 1
  store i32 %125, i32* %126, align 4
  %127 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %128 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dev_dbg(i32 %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %133)
  %135 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %136 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 6
  store i32 %138, i32* %139, align 4
  %140 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %141 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 5
  store i32 %143, i32* %144, align 4
  %145 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %146 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 4
  store i32 %148, i32* %149, align 4
  %150 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %151 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 3
  store i32 %153, i32* %154, align 4
  %155 = getelementptr inbounds %struct.skl_ipc_bind_unbind_msg, %struct.skl_ipc_bind_unbind_msg* %9, i32 0, i32 2
  store i32 1, i32* %155, align 4
  %156 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %157 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %156, i32 0, i32 0
  %158 = call i32 @skl_ipc_bind_unbind(i32* %157, %struct.skl_ipc_bind_unbind_msg* %9)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %182, label %161

161:                                              ; preds = %124
  %162 = load i64, i64* @SKL_MODULE_BIND_DONE, align 8
  %163 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %164 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  %165 = load i8*, i8** @SKL_PIN_BIND_DONE, align 8
  %166 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %167 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %166, i32 0, i32 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  store i8* %165, i8** %172, align 8
  %173 = load i8*, i8** @SKL_PIN_BIND_DONE, align 8
  %174 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %175 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %174, i32 0, i32 3
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  store i8* %173, i8** %180, align 8
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %4, align 4
  br label %195

182:                                              ; preds = %124
  br label %183

183:                                              ; preds = %182, %122
  %184 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %185 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %184, i32 0, i32 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @skl_free_queue(%struct.TYPE_9__* %186, i32 %187)
  %189 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %190 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %189, i32 0, i32 3
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @skl_free_queue(%struct.TYPE_9__* %191, i32 %192)
  %194 = load i32, i32* %8, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %183, %161, %67, %53, %43
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @skl_dump_bind_info(%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_module_cfg*) #1

declare dso_local i32 @skl_alloc_queue(%struct.TYPE_9__*, %struct.skl_module_cfg*, i32) #1

declare dso_local i32 @skl_free_queue(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @fill_pin_params(i32*, %struct.skl_module_fmt*) #1

declare dso_local i32 @skl_set_module_params(%struct.skl_dev*, i8*, i32, i32, %struct.skl_module_cfg*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @skl_ipc_bind_unbind(i32*, %struct.skl_ipc_bind_unbind_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
