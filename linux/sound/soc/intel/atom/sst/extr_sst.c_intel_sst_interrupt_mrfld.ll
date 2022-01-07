; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_intel_sst_interrupt_mrfld.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_intel_sst_interrupt_mrfld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.interrupt_reg_mrfld = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%union.ipc_header_mrfld = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i64 }
%union.sst_imr_reg_mrfld = type { i8* }
%struct.ipc_post = type { i32, i32, %union.ipc_header_mrfld, i32 }
%struct.intel_sst_drv = type { %struct.TYPE_14__*, i32, i32, i32, i64, i64, %struct.TYPE_10__, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 (%struct.intel_sst_drv*)* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@SST_ISRX = common dso_local global i32 0, align 4
@SST_IMRX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Mailbox not copied, payload size is: %u\0A\00", align 1
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @intel_sst_interrupt_mrfld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sst_interrupt_mrfld(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %union.interrupt_reg_mrfld, align 8
  %7 = alloca %union.ipc_header_mrfld, align 8
  %8 = alloca %union.sst_imr_reg_mrfld, align 8
  %9 = alloca %struct.ipc_post*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_sst_drv*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.ipc_post* null, %struct.ipc_post** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.intel_sst_drv*
  store %struct.intel_sst_drv* %14, %struct.intel_sst_drv** %11, align 8
  %15 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %17 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SST_ISRX, align 4
  %20 = call i8* @sst_shim_read64(i32 %18, i32 %19)
  %21 = bitcast %union.interrupt_reg_mrfld* %6 to i8**
  store i8* %20, i8** %21, align 8
  %22 = bitcast %union.interrupt_reg_mrfld* %6 to %struct.TYPE_8__*
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %2
  %27 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %28 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %27, i32 0, i32 8
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %31 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %34 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @sst_shim_read64(i32 %32, i32 %36)
  %38 = bitcast %union.ipc_header_mrfld* %7 to i8**
  store i8* %37, i8** %38, align 8
  %39 = bitcast %union.ipc_header_mrfld* %7 to %struct.TYPE_13__*
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %44 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %47 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = bitcast %union.ipc_header_mrfld* %7 to i8**
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @sst_shim_write64(i32 %45, i32 %49, i8* %51)
  %53 = bitcast %union.interrupt_reg_mrfld* %6 to %struct.TYPE_8__*
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %56 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SST_ISRX, align 4
  %59 = bitcast %union.interrupt_reg_mrfld* %6 to i8**
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @sst_shim_write64(i32 %57, i32 %58, i8* %60)
  %62 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %63 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %62, i32 0, i32 8
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %66 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %69 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %68, i32 0, i32 9
  %70 = call i32 @queue_work(i32 %67, i32* %69)
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %26, %2
  %73 = bitcast %union.interrupt_reg_mrfld* %6 to %struct.TYPE_8__*
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %192

77:                                               ; preds = %72
  %78 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %79 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %78, i32 0, i32 8
  %80 = call i32 @spin_lock(i32* %79)
  %81 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %82 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SST_IMRX, align 4
  %85 = call i8* @sst_shim_read64(i32 %83, i32 %84)
  %86 = bitcast %union.sst_imr_reg_mrfld* %8 to i8**
  store i8* %85, i8** %86, align 8
  %87 = bitcast %union.sst_imr_reg_mrfld* %8 to %struct.TYPE_9__*
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %90 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SST_IMRX, align 4
  %93 = bitcast %union.sst_imr_reg_mrfld* %8 to i8**
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @sst_shim_write64(i32 %91, i32 %92, i8* %94)
  %96 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %97 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %96, i32 0, i32 8
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %100 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %103 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @sst_shim_read64(i32 %101, i32 %105)
  %107 = bitcast %union.ipc_header_mrfld* %7 to i8**
  store i8* %106, i8** %107, align 8
  %108 = bitcast %union.ipc_header_mrfld* %7 to %struct.TYPE_13__*
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @sst_create_ipc_msg(%struct.ipc_post** %9, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %77
  %116 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %117 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %116, i32 0, i32 0
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32 (%struct.intel_sst_drv*)*, i32 (%struct.intel_sst_drv*)** %119, align 8
  %121 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %122 = call i32 %120(%struct.intel_sst_drv* %121)
  %123 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %123, i32* %3, align 4
  br label %194

124:                                              ; preds = %77
  %125 = bitcast %union.ipc_header_mrfld* %7 to %struct.TYPE_13__*
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %160

131:                                              ; preds = %124
  %132 = bitcast %union.ipc_header_mrfld* %7 to %struct.TYPE_13__*
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i64 @sst_validate_mailbox_size(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %131
  %139 = load %struct.ipc_post*, %struct.ipc_post** %9, align 8
  %140 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %143 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %146 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %144, %147
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @memcpy_fromio(i32 %141, i64 %148, i32 %149)
  br label %159

151:                                              ; preds = %131
  %152 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %153 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @dev_err(i32 %154, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %155)
  %157 = bitcast %union.ipc_header_mrfld* %7 to %struct.TYPE_13__*
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  store i32 0, i32* %158, align 8
  br label %159

159:                                              ; preds = %151, %138
  br label %160

160:                                              ; preds = %159, %124
  %161 = load %struct.ipc_post*, %struct.ipc_post** %9, align 8
  %162 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %161, i32 0, i32 2
  %163 = bitcast %union.ipc_header_mrfld* %162 to i8*
  %164 = bitcast %union.ipc_header_mrfld* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 32, i1 false)
  %165 = bitcast %union.ipc_header_mrfld* %7 to %struct.TYPE_13__*
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @sst_is_process_reply(i32 %169)
  %171 = load %struct.ipc_post*, %struct.ipc_post** %9, align 8
  %172 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %174 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %173, i32 0, i32 1
  %175 = call i32 @spin_lock(i32* %174)
  %176 = load %struct.ipc_post*, %struct.ipc_post** %9, align 8
  %177 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %176, i32 0, i32 0
  %178 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %179 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %178, i32 0, i32 2
  %180 = call i32 @list_add_tail(i32* %177, i32* %179)
  %181 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %182 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %181, i32 0, i32 1
  %183 = call i32 @spin_unlock(i32* %182)
  %184 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %185 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %184, i32 0, i32 0
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32 (%struct.intel_sst_drv*)*, i32 (%struct.intel_sst_drv*)** %187, align 8
  %189 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %190 = call i32 %188(%struct.intel_sst_drv* %189)
  %191 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %191, i32* %12, align 4
  br label %192

192:                                              ; preds = %160, %72
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %192, %115
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i8* @sst_shim_read64(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sst_shim_write64(i32, i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @sst_create_ipc_msg(%struct.ipc_post**, i64) #1

declare dso_local i64 @sst_validate_mailbox_size(i32) #1

declare dso_local i32 @memcpy_fromio(i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sst_is_process_reply(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
