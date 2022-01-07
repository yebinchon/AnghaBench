; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_stream.c_sst_send_byte_stream_mrfld.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_stream.c_sst_send_byte_stream_mrfld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, i32 }
%struct.snd_sst_bytes_v2 = type { i64, i8, i32, i32, i32, i32, i32 }
%struct.ipc_post = type { i8, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sst_block = type { i8* }

@.str = private unnamed_addr constant [61 x i8] c"type:%u ipc_msg:%u block:%u task_id:%u pipe: %#x length:%#x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"length is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"msg->mrfld_header.p.header_low_payload:%d\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"fw returned err %d\0A\00", align 1
@SND_SST_BYTES_GET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"read back %d bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_send_byte_stream_mrfld(%struct.intel_sst_drv* %0, %struct.snd_sst_bytes_v2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sst_drv*, align 8
  %5 = alloca %struct.snd_sst_bytes_v2*, align 8
  %6 = alloca %struct.ipc_post*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sst_block*, align 8
  %11 = alloca i8*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %4, align 8
  store %struct.snd_sst_bytes_v2* %1, %struct.snd_sst_bytes_v2** %5, align 8
  store %struct.ipc_post* null, %struct.ipc_post** %6, align 8
  store i32 0, i32* %9, align 4
  store %struct.sst_block* null, %struct.sst_block** %10, align 8
  %12 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %13 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %16 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %19 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %22 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %25 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %28 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %31 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32)
  %34 = call i64 @sst_create_ipc_msg(%struct.ipc_post** %6, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %185

39:                                               ; preds = %2
  %40 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %41 = call i32 @sst_assign_pvt_id(%struct.intel_sst_drv* %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.ipc_post*, %struct.ipc_post** %6, align 8
  %43 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %42, i32 0, i32 1
  %44 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %45 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %48 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @sst_fill_header_mrfld(%struct.TYPE_8__* %43, i32 %46, i32 %49, i32 1, i32 %50)
  %52 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %53 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ipc_post*, %struct.ipc_post** %6, align 8
  %56 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %54, i32* %60, align 4
  %61 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %62 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.ipc_post*, %struct.ipc_post** %6, align 8
  %66 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %70 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = load %struct.ipc_post*, %struct.ipc_post** %6, align 8
  %76 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %75, i32 0, i32 0
  %77 = load i8, i8* %76, align 4
  %78 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %79 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %78, i32 0, i32 1
  %80 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %81 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @memcpy(i8 zeroext %77, i8* %79, i32 %82)
  %84 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %85 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %39
  %89 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %90 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %91 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call %struct.sst_block* @sst_create_block(%struct.intel_sst_drv* %89, i32 %92, i32 %93)
  store %struct.sst_block* %94, %struct.sst_block** %10, align 8
  %95 = load %struct.sst_block*, %struct.sst_block** %10, align 8
  %96 = icmp eq %struct.sst_block* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.ipc_post*, %struct.ipc_post** %6, align 8
  %99 = call i32 @kfree(%struct.ipc_post* %98)
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %9, align 4
  br label %179

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %39
  %104 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %105 = load %struct.ipc_post*, %struct.ipc_post** %6, align 8
  %106 = call i32 @sst_add_to_dispatch_list_and_post(%struct.intel_sst_drv* %104, %struct.ipc_post* %105)
  %107 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %108 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ipc_post*, %struct.ipc_post** %6, align 8
  %111 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %109, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %115)
  %117 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %118 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %103
  %122 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %123 = load %struct.sst_block*, %struct.sst_block** %10, align 8
  %124 = call i32 @sst_wait_timeout(%struct.intel_sst_drv* %122, %struct.sst_block* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %129 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @dev_err(i32 %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  %133 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %134 = load %struct.sst_block*, %struct.sst_block** %10, align 8
  %135 = call i32 @sst_free_block(%struct.intel_sst_drv* %133, %struct.sst_block* %134)
  br label %179

136:                                              ; preds = %121
  br label %137

137:                                              ; preds = %136, %103
  %138 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %139 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SND_SST_BYTES_GET, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %169

143:                                              ; preds = %137
  %144 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %145 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %168

148:                                              ; preds = %143
  %149 = load %struct.sst_block*, %struct.sst_block** %10, align 8
  %150 = getelementptr inbounds %struct.sst_block, %struct.sst_block* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  store i8* %151, i8** %11, align 8
  %152 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %153 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %156 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %158)
  %160 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %161 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %160, i32 0, i32 1
  %162 = load i8, i8* %161, align 8
  %163 = load i8*, i8** %11, align 8
  %164 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %165 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @memcpy(i8 zeroext %162, i8* %163, i32 %166)
  br label %168

168:                                              ; preds = %148, %143
  br label %169

169:                                              ; preds = %168, %137
  %170 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %171 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %176 = load %struct.sst_block*, %struct.sst_block** %10, align 8
  %177 = call i32 @sst_free_block(%struct.intel_sst_drv* %175, %struct.sst_block* %176)
  br label %178

178:                                              ; preds = %174, %169
  br label %179

179:                                              ; preds = %178, %127, %97
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %182 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %181, i32 0, i32 0
  %183 = call i32 @test_and_clear_bit(i32 %180, i32* %182)
  %184 = load i32, i32* %9, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %179, %36
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, ...) #1

declare dso_local i64 @sst_create_ipc_msg(%struct.ipc_post**, i32) #1

declare dso_local i32 @sst_assign_pvt_id(%struct.intel_sst_drv*) #1

declare dso_local i32 @sst_fill_header_mrfld(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8 zeroext, i8*, i32) #1

declare dso_local %struct.sst_block* @sst_create_block(%struct.intel_sst_drv*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ipc_post*) #1

declare dso_local i32 @sst_add_to_dispatch_list_and_post(%struct.intel_sst_drv*, %struct.ipc_post*) #1

declare dso_local i32 @sst_wait_timeout(%struct.intel_sst_drv*, %struct.sst_block*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @sst_free_block(%struct.intel_sst_drv*, %struct.sst_block*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
