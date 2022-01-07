; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c___ceph_osdc_alloc_messages.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c___ceph_osdc_alloc_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32, %struct.ceph_msg*, i64, %struct.TYPE_6__, %struct.ceph_msg*, %struct.TYPE_4__*, i32, %struct.ceph_osd_client* }
%struct.TYPE_6__ = type { i64 }
%struct.ceph_msg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ceph_osd_client = type { i32, i32 }

@CEPH_ENCODING_START_BLK_LEN = common dso_local global i32 0, align 4
@CEPH_PGID_ENCODING_LEN = common dso_local global i32 0, align 4
@CEPH_MSG_OSD_OP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OSD_OPREPLY_FRONT_LEN = common dso_local global i32 0, align 4
@CEPH_MSG_OSD_OPREPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_osd_request*, i32, i32, i32)* @__ceph_osdc_alloc_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ceph_osdc_alloc_messages(%struct.ceph_osd_request* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_osd_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ceph_osd_client*, align 8
  %11 = alloca %struct.ceph_msg*, align 8
  %12 = alloca i32, align 4
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %14 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %13, i32 0, i32 7
  %15 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %14, align 8
  store %struct.ceph_osd_client* %15, %struct.ceph_osd_client** %10, align 8
  %16 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %17 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %16, i32 0, i32 4
  %18 = load %struct.ceph_msg*, %struct.ceph_msg** %17, align 8
  %19 = icmp ne %struct.ceph_msg* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %22 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %21, i32 0, i32 1
  %23 = load %struct.ceph_msg*, %struct.ceph_msg** %22, align 8
  %24 = icmp ne %struct.ceph_msg* %23, null
  br label %25

25:                                               ; preds = %20, %4
  %26 = phi i1 [ true, %4 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %30 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %29, i32 0, i32 3
  %31 = call i32 @ceph_oid_empty(%struct.TYPE_6__* %30)
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %34 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %33, i32 0, i32 6
  %35 = call i32 @ceph_oloc_empty(i32* %34)
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load i32, i32* @CEPH_ENCODING_START_BLK_LEN, align 4
  %38 = load i32, i32* @CEPH_PGID_ENCODING_LEN, align 4
  %39 = add nsw i32 %37, %38
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 12
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* @CEPH_ENCODING_START_BLK_LEN, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 4
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* @CEPH_ENCODING_START_BLK_LEN, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %61 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %60, i32 0, i32 6
  %62 = call i64 @ceph_oloc_encoding_size(i32* %61)
  %63 = add nsw i64 %59, %62
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %12, align 4
  %68 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %69 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 4, %71
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %12, align 4
  %77 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %78 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = add i64 2, %81
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 8
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 8
  store i32 %90, i32* %12, align 4
  %91 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %92 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %91, i32 0, i32 5
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = icmp ne %struct.TYPE_4__* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %25
  %96 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %97 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %96, i32 0, i32 5
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  br label %102

101:                                              ; preds = %25
  br label %102

102:                                              ; preds = %101, %95
  %103 = phi i32 [ %100, %95 ], [ 0, %101 ]
  %104 = mul nsw i32 8, %103
  %105 = add nsw i32 4, %104
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 12
  store i32 %109, i32* %12, align 4
  %110 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %111 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %102
  %115 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %10, align 8
  %116 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %115, i32 0, i32 1
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call %struct.ceph_msg* @ceph_msgpool_get(i32* %116, i32 %117, i32 %118)
  store %struct.ceph_msg* %119, %struct.ceph_msg** %11, align 8
  br label %126

120:                                              ; preds = %102
  %121 = load i32, i32* @CEPH_MSG_OSD_OP, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call %struct.ceph_msg* @ceph_msg_new2(i32 %121, i32 %122, i32 %123, i32 %124, i32 1)
  store %struct.ceph_msg* %125, %struct.ceph_msg** %11, align 8
  br label %126

126:                                              ; preds = %120, %114
  %127 = load %struct.ceph_msg*, %struct.ceph_msg** %11, align 8
  %128 = icmp ne %struct.ceph_msg* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %189

132:                                              ; preds = %126
  %133 = load %struct.ceph_msg*, %struct.ceph_msg** %11, align 8
  %134 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ceph_msg*, %struct.ceph_msg** %11, align 8
  %138 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @memset(i32 %136, i32 0, i32 %140)
  %142 = load %struct.ceph_msg*, %struct.ceph_msg** %11, align 8
  %143 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %144 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %143, i32 0, i32 4
  store %struct.ceph_msg* %142, %struct.ceph_msg** %144, align 8
  %145 = load i32, i32* @OSD_OPREPLY_FRONT_LEN, align 4
  store i32 %145, i32* %12, align 4
  %146 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %147 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %12, align 4
  %154 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %155 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 4
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %12, align 4
  %163 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %164 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %132
  %168 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %10, align 8
  %169 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %168, i32 0, i32 0
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %9, align 4
  %172 = call %struct.ceph_msg* @ceph_msgpool_get(i32* %169, i32 %170, i32 %171)
  store %struct.ceph_msg* %172, %struct.ceph_msg** %11, align 8
  br label %179

173:                                              ; preds = %132
  %174 = load i32, i32* @CEPH_MSG_OSD_OPREPLY, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call %struct.ceph_msg* @ceph_msg_new2(i32 %174, i32 %175, i32 %176, i32 %177, i32 1)
  store %struct.ceph_msg* %178, %struct.ceph_msg** %11, align 8
  br label %179

179:                                              ; preds = %173, %167
  %180 = load %struct.ceph_msg*, %struct.ceph_msg** %11, align 8
  %181 = icmp ne %struct.ceph_msg* %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %5, align 4
  br label %189

185:                                              ; preds = %179
  %186 = load %struct.ceph_msg*, %struct.ceph_msg** %11, align 8
  %187 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %6, align 8
  %188 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %187, i32 0, i32 1
  store %struct.ceph_msg* %186, %struct.ceph_msg** %188, align 8
  store i32 0, i32* %5, align 4
  br label %189

189:                                              ; preds = %185, %182, %129
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ceph_oid_empty(%struct.TYPE_6__*) #1

declare dso_local i32 @ceph_oloc_empty(i32*) #1

declare dso_local i64 @ceph_oloc_encoding_size(i32*) #1

declare dso_local %struct.ceph_msg* @ceph_msgpool_get(i32*, i32, i32) #1

declare dso_local %struct.ceph_msg* @ceph_msg_new2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
