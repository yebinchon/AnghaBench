; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_setup_request_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_setup_request_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i64, %struct.ceph_osd_req_op*, %struct.ceph_msg*, %struct.ceph_msg* }
%struct.ceph_osd_req_op = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, i64, %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.ceph_msg = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request*)* @setup_request_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_request_data(%struct.ceph_osd_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_request*, align 8
  %3 = alloca %struct.ceph_msg*, align 8
  %4 = alloca %struct.ceph_msg*, align 8
  %5 = alloca %struct.ceph_osd_req_op*, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %2, align 8
  %6 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %7 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %6, i32 0, i32 3
  %8 = load %struct.ceph_msg*, %struct.ceph_msg** %7, align 8
  store %struct.ceph_msg* %8, %struct.ceph_msg** %3, align 8
  %9 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %10 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %9, i32 0, i32 2
  %11 = load %struct.ceph_msg*, %struct.ceph_msg** %10, align 8
  store %struct.ceph_msg* %11, %struct.ceph_msg** %4, align 8
  %12 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %12, i32 0, i32 3
  %14 = load %struct.ceph_msg*, %struct.ceph_msg** %13, align 8
  %15 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %20 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %19, i32 0, i32 2
  %21 = load %struct.ceph_msg*, %struct.ceph_msg** %20, align 8
  %22 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %1
  br label %174

26:                                               ; preds = %18
  %27 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %28 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %33 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ true, %26 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %41 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %40, i32 0, i32 1
  %42 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %41, align 8
  store %struct.ceph_osd_req_op* %42, %struct.ceph_osd_req_op** %5, align 8
  br label %43

43:                                               ; preds = %171, %36
  %44 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %45 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %46 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %45, i32 0, i32 1
  %47 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %46, align 8
  %48 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %49 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %47, i64 %50
  %52 = icmp ne %struct.ceph_osd_req_op* %44, %51
  br i1 %52, label %53, label %174

53:                                               ; preds = %43
  %54 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %55 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %170 [
    i32 129, label %57
    i32 128, label %57
    i32 131, label %73
    i32 137, label %73
    i32 133, label %94
    i32 136, label %100
    i32 130, label %106
    i32 132, label %111
    i32 135, label %117
    i32 138, label %123
    i32 134, label %159
  ]

57:                                               ; preds = %53, %53
  %58 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %59 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %62 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %60, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON(i32 %66)
  %68 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %69 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %70 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = call i32 @ceph_osdc_msg_data_add(%struct.ceph_msg* %68, i32* %71)
  br label %170

73:                                               ; preds = %53, %53
  %74 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %75 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %78 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %77, i32 0, i32 9
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %82 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %81, i32 0, i32 9
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %80, %84
  %86 = icmp ne i64 %76, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @WARN_ON(i32 %87)
  %89 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %90 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %91 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %90, i32 0, i32 9
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = call i32 @ceph_osdc_msg_data_add(%struct.ceph_msg* %89, i32* %92)
  br label %170

94:                                               ; preds = %53
  %95 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %96 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %97 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = call i32 @ceph_osdc_msg_data_add(%struct.ceph_msg* %95, i32* %98)
  br label %170

100:                                              ; preds = %53
  %101 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %102 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %103 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = call i32 @ceph_osdc_msg_data_add(%struct.ceph_msg* %101, i32* %104)
  br label %170

106:                                              ; preds = %53
  %107 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %108 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %109 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %108, i32 0, i32 6
  %110 = call i32 @ceph_osdc_msg_data_add(%struct.ceph_msg* %107, i32* %109)
  br label %170

111:                                              ; preds = %53
  %112 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %113 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %114 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = call i32 @ceph_osdc_msg_data_add(%struct.ceph_msg* %112, i32* %115)
  br label %170

117:                                              ; preds = %53
  %118 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %119 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %120 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = call i32 @ceph_osdc_msg_data_add(%struct.ceph_msg* %118, i32* %121)
  br label %170

123:                                              ; preds = %53
  %124 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %125 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %128 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %132 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %130, %134
  %136 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %137 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %135, %139
  %141 = icmp ne i64 %126, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @WARN_ON(i32 %142)
  %144 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %145 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %146 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = call i32 @ceph_osdc_msg_data_add(%struct.ceph_msg* %144, i32* %147)
  %149 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %150 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %151 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = call i32 @ceph_osdc_msg_data_add(%struct.ceph_msg* %149, i32* %152)
  %154 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %155 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %156 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = call i32 @ceph_osdc_msg_data_add(%struct.ceph_msg* %154, i32* %157)
  br label %170

159:                                              ; preds = %53
  %160 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %161 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %162 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = call i32 @ceph_osdc_msg_data_add(%struct.ceph_msg* %160, i32* %163)
  %165 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %166 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %167 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = call i32 @ceph_osdc_msg_data_add(%struct.ceph_msg* %165, i32* %168)
  br label %170

170:                                              ; preds = %53, %159, %123, %117, %111, %106, %100, %94, %73, %57
  br label %171

171:                                              ; preds = %170
  %172 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %5, align 8
  %173 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %172, i32 1
  store %struct.ceph_osd_req_op* %173, %struct.ceph_osd_req_op** %5, align 8
  br label %43

174:                                              ; preds = %25, %43
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ceph_osdc_msg_data_add(%struct.ceph_msg*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
