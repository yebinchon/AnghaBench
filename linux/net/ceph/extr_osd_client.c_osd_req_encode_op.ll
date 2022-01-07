; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_encode_op.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_osd_req_encode_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_op = type { i8*, i8*, i32, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_28__, %struct.TYPE_26__, %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_20__ }
%struct.TYPE_18__ = type { i8*, i32, i8*, i8* }
%struct.TYPE_16__ = type { i32, i32, i8*, i8* }
%struct.TYPE_28__ = type { i8*, i8* }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_24__ = type { i8*, i32, i8*, i8* }
%struct.TYPE_22__ = type { i8*, i32, i32 }
%struct.TYPE_20__ = type { i8*, i8*, i8*, i8* }
%struct.ceph_osd_req_op = type { i32, i32, i32, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"unsupported osd opcode %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_osd_op*, %struct.ceph_osd_req_op*)* @osd_req_encode_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osd_req_encode_op(%struct.ceph_osd_op* %0, %struct.ceph_osd_req_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_osd_op*, align 8
  %5 = alloca %struct.ceph_osd_req_op*, align 8
  store %struct.ceph_osd_op* %0, %struct.ceph_osd_op** %4, align 8
  store %struct.ceph_osd_req_op* %1, %struct.ceph_osd_req_op** %5, align 8
  %6 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %7 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %186 [
    i32 133, label %9
    i32 136, label %10
    i32 130, label %10
    i32 129, label %10
    i32 128, label %10
    i32 132, label %10
    i32 144, label %43
    i32 131, label %66
    i32 137, label %94
    i32 138, label %95
    i32 139, label %104
    i32 135, label %105
    i32 134, label %122
    i32 143, label %122
    i32 141, label %153
    i32 140, label %153
    i32 142, label %154
  ]

9:                                                ; preds = %2
  br label %193

10:                                               ; preds = %2, %2, %2, %2, %2
  %11 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %12 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @cpu_to_le64(i32 %14)
  %16 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %17 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 3
  store i8* %15, i8** %18, align 8
  %19 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %20 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_le64(i32 %22)
  %24 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %25 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 2
  store i8* %23, i8** %26, align 8
  %27 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %28 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_le64(i32 %30)
  %32 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %33 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  %35 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %36 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %35, i32 0, i32 9
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %41 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %40, i32 0, i32 9
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  br label %193

43:                                               ; preds = %2
  %44 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %45 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %49 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %52 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %56 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 8
  %58 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %59 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %64 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  br label %193

66:                                               ; preds = %2
  %67 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %68 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @cpu_to_le64(i32 %70)
  %72 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %73 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 3
  store i8* %71, i8** %74, align 8
  %75 = call i8* @cpu_to_le64(i32 0)
  %76 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %77 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 2
  store i8* %75, i8** %78, align 8
  %79 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %80 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %84 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 8
  %86 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %87 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %92 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  br label %193

94:                                               ; preds = %2
  br label %193

95:                                               ; preds = %2
  %96 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %97 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @cpu_to_le64(i32 %99)
  %101 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %102 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  br label %193

104:                                              ; preds = %2
  br label %193

105:                                              ; preds = %2
  %106 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %107 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @cpu_to_le64(i32 %109)
  %111 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %112 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 1
  store i8* %110, i8** %113, align 8
  %114 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %115 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @cpu_to_le64(i32 %117)
  %119 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %120 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  store i8* %118, i8** %121, align 8
  br label %193

122:                                              ; preds = %2, %2
  %123 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %124 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %129 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 3
  store i8* %127, i8** %130, align 8
  %131 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %132 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @cpu_to_le32(i32 %134)
  %136 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %137 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  store i8* %135, i8** %138, align 8
  %139 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %140 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %144 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 4
  %146 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %147 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %151 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  br label %193

153:                                              ; preds = %2, %2
  br label %193

154:                                              ; preds = %2
  %155 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %156 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @cpu_to_le64(i32 %158)
  %160 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %161 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 3
  store i8* %159, i8** %162, align 8
  %163 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %164 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @cpu_to_le64(i32 %166)
  %168 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %169 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 2
  store i8* %167, i8** %170, align 8
  %171 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %172 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %176 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  store i32 %174, i32* %177, align 8
  %178 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %179 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @cpu_to_le32(i32 %181)
  %183 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %184 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  store i8* %182, i8** %185, align 8
  br label %193

186:                                              ; preds = %2
  %187 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %188 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ceph_osd_op_name(i32 %189)
  %191 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %190)
  %192 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %215

193:                                              ; preds = %154, %153, %122, %105, %104, %95, %94, %66, %43, %10, %9
  %194 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %195 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @cpu_to_le16(i32 %196)
  %198 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %199 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %201 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @cpu_to_le32(i32 %202)
  %204 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %205 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %204, i32 0, i32 1
  store i8* %203, i8** %205, align 8
  %206 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %207 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @cpu_to_le32(i32 %208)
  %210 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %4, align 8
  %211 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %210, i32 0, i32 0
  store i8* %209, i8** %211, align 8
  %212 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %213 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %193, %186
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ceph_osd_op_name(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
