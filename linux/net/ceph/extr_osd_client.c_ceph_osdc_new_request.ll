; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_new_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_new_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ceph_osd_client = type { i32 }
%struct.ceph_file_layout = type { i32, i32, i32 }
%struct.ceph_snap_context = type { i32 }
%struct.ceph_vino = type { i32, i32 }

@CEPH_OSD_OP_READ = common dso_local global i32 0, align 4
@CEPH_OSD_OP_WRITE = common dso_local global i32 0, align 4
@CEPH_OSD_OP_ZERO = common dso_local global i32 0, align 4
@CEPH_OSD_OP_TRUNCATE = common dso_local global i32 0, align 4
@CEPH_OSD_OP_CREATE = common dso_local global i32 0, align 4
@CEPH_OSD_OP_DELETE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%llx.%08llx\00", align 1
@CEPH_OSD_FLAG_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ceph_osd_request* @ceph_osdc_new_request(%struct.ceph_osd_client* %0, %struct.ceph_file_layout* %1, i64 %2, i64 %3, i64* %4, i32 %5, i32 %6, i32 %7, i32 %8, %struct.ceph_snap_context* %9, i32 %10, i64 %11, i32 %12) #0 {
  %14 = alloca %struct.ceph_osd_request*, align 8
  %15 = alloca %struct.ceph_vino, align 4
  %16 = alloca %struct.ceph_osd_client*, align 8
  %17 = alloca %struct.ceph_file_layout*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ceph_snap_context*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.ceph_osd_request*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = bitcast %struct.ceph_vino* %15 to i64*
  store i64 %2, i64* %35, align 4
  store %struct.ceph_osd_client* %0, %struct.ceph_osd_client** %16, align 8
  store %struct.ceph_file_layout* %1, %struct.ceph_file_layout** %17, align 8
  store i64 %3, i64* %18, align 8
  store i64* %4, i64** %19, align 8
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store %struct.ceph_snap_context* %9, %struct.ceph_snap_context** %24, align 8
  store i32 %10, i32* %25, align 4
  store i64 %11, i64* %26, align 8
  store i32 %12, i32* %27, align 4
  store i64 0, i64* %29, align 8
  store i64 0, i64* %30, align 8
  store i64 0, i64* %31, align 8
  %36 = load i32, i32* %22, align 4
  %37 = load i32, i32* @CEPH_OSD_OP_READ, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %13
  %40 = load i32, i32* %22, align 4
  %41 = load i32, i32* @CEPH_OSD_OP_WRITE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* @CEPH_OSD_OP_ZERO, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i32, i32* %22, align 4
  %49 = load i32, i32* @CEPH_OSD_OP_TRUNCATE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32, i32* %22, align 4
  %53 = load i32, i32* @CEPH_OSD_OP_CREATE, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %22, align 4
  %57 = load i32, i32* @CEPH_OSD_OP_DELETE, align 4
  %58 = icmp ne i32 %56, %57
  br label %59

59:                                               ; preds = %55, %51, %47, %43, %39, %13
  %60 = phi i1 [ false, %51 ], [ false, %47 ], [ false, %43 ], [ false, %39 ], [ false, %13 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %16, align 8
  %64 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %24, align 8
  %65 = load i32, i32* %21, align 4
  %66 = load i32, i32* %27, align 4
  %67 = load i32, i32* @GFP_NOFS, align 4
  %68 = call %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client* %63, %struct.ceph_snap_context* %64, i32 %65, i32 %66, i32 %67)
  store %struct.ceph_osd_request* %68, %struct.ceph_osd_request** %28, align 8
  %69 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %28, align 8
  %70 = icmp ne %struct.ceph_osd_request* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %32, align 4
  br label %190

74:                                               ; preds = %59
  %75 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %17, align 8
  %76 = load i64, i64* %18, align 8
  %77 = load i64*, i64** %19, align 8
  %78 = call i32 @calc_layout(%struct.ceph_file_layout* %75, i64 %76, i64* %77, i64* %29, i64* %30, i64* %31)
  store i32 %78, i32* %32, align 4
  %79 = load i32, i32* %32, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %190

82:                                               ; preds = %74
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* @CEPH_OSD_OP_CREATE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* @CEPH_OSD_OP_DELETE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86, %82
  %91 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %28, align 8
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %22, align 4
  %94 = call i32 @osd_req_op_init(%struct.ceph_osd_request* %91, i32 %92, i32 %93, i32 0)
  br label %137

95:                                               ; preds = %86
  %96 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %17, align 8
  %97 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %33, align 4
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %30, align 8
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %34, align 4
  %103 = load i32, i32* %25, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load i64, i64* %26, align 8
  %107 = icmp eq i64 %106, -1
  br i1 %107, label %128, label %108

108:                                              ; preds = %105, %95
  %109 = load i64, i64* %26, align 8
  %110 = load i32, i32* %34, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp ule i64 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i64 0, i64* %26, align 8
  br label %127

114:                                              ; preds = %108
  %115 = load i32, i32* %34, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %26, align 8
  %118 = sub i64 %117, %116
  store i64 %118, i64* %26, align 8
  %119 = load i64, i64* %26, align 8
  %120 = load i32, i32* %33, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp ugt i64 %119, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load i32, i32* %33, align 4
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %26, align 8
  br label %126

126:                                              ; preds = %123, %114
  br label %127

127:                                              ; preds = %126, %113
  br label %128

128:                                              ; preds = %127, %105
  %129 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %28, align 8
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %22, align 4
  %132 = load i64, i64* %30, align 8
  %133 = load i64, i64* %31, align 8
  %134 = load i64, i64* %26, align 8
  %135 = load i32, i32* %25, align 4
  %136 = call i32 @osd_req_op_extent_init(%struct.ceph_osd_request* %129, i32 %130, i32 %131, i64 %132, i64 %133, i64 %134, i32 %135)
  br label %137

137:                                              ; preds = %128, %90
  %138 = load i32, i32* %23, align 4
  %139 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %28, align 8
  %140 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %17, align 8
  %142 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %28, align 8
  %145 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  %147 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %17, align 8
  %148 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ceph_try_get_string(i32 %149)
  %151 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %28, align 8
  %152 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 8
  %154 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %28, align 8
  %155 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %15, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i64, i64* %29, align 8
  %159 = call i32 @ceph_oid_printf(i32* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %157, i64 %158)
  %160 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %15, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %28, align 8
  %163 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %23, align 4
  %165 = load i32, i32* @CEPH_OSD_FLAG_WRITE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %137
  %169 = load i64, i64* %18, align 8
  %170 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %28, align 8
  %171 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %168, %137
  %173 = load i32, i32* %21, align 4
  %174 = icmp sgt i32 %173, 1
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %28, align 8
  %177 = load i32, i32* @GFP_NOFS, align 4
  %178 = load i32, i32* %21, align 4
  %179 = call i32 @__ceph_osdc_alloc_messages(%struct.ceph_osd_request* %176, i32 %177, i32 %178, i32 0)
  store i32 %179, i32* %32, align 4
  br label %184

180:                                              ; preds = %172
  %181 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %28, align 8
  %182 = load i32, i32* @GFP_NOFS, align 4
  %183 = call i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request* %181, i32 %182)
  store i32 %183, i32* %32, align 4
  br label %184

184:                                              ; preds = %180, %175
  %185 = load i32, i32* %32, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %190

188:                                              ; preds = %184
  %189 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %28, align 8
  store %struct.ceph_osd_request* %189, %struct.ceph_osd_request** %14, align 8
  br label %195

190:                                              ; preds = %187, %81, %71
  %191 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %28, align 8
  %192 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %191)
  %193 = load i32, i32* %32, align 4
  %194 = call %struct.ceph_osd_request* @ERR_PTR(i32 %193)
  store %struct.ceph_osd_request* %194, %struct.ceph_osd_request** %14, align 8
  br label %195

195:                                              ; preds = %190, %188
  %196 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %14, align 8
  ret %struct.ceph_osd_request* %196
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ceph_osd_request* @ceph_osdc_alloc_request(%struct.ceph_osd_client*, %struct.ceph_snap_context*, i32, i32, i32) #1

declare dso_local i32 @calc_layout(%struct.ceph_file_layout*, i64, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @osd_req_op_init(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local i32 @osd_req_op_extent_init(%struct.ceph_osd_request*, i32, i32, i64, i64, i64, i32) #1

declare dso_local i32 @ceph_try_get_string(i32) #1

declare dso_local i32 @ceph_oid_printf(i32*, i8*, i32, i64) #1

declare dso_local i32 @__ceph_osdc_alloc_messages(%struct.ceph_osd_request*, i32, i32, i32) #1

declare dso_local i32 @ceph_osdc_alloc_messages(%struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_put_request(%struct.ceph_osd_request*) #1

declare dso_local %struct.ceph_osd_request* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
