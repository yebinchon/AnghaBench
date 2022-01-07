; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_send_common.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_send_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.xdr_buf = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.page** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }

@MSG_MORE = common dso_local global i32 0, align 4
@MSG_SENDPAGE_NOTLAST = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_send_common(%struct.socket* %0, %struct.xdr_buf* %1, %struct.page* %2, i64 %3, %struct.page* %4, i64 %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.xdr_buf*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %8, align 8
  store %struct.page* %2, %struct.page** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.page* %4, %struct.page** %11, align 8
  store i64 %5, i64* %12, align 8
  %21 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %22 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %21, i32 0, i32 5
  %23 = load %struct.page**, %struct.page*** %22, align 8
  store %struct.page** %23, %struct.page*** %15, align 8
  %24 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %25 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %16, align 8
  %27 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %28 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* @MSG_MORE, align 4
  %31 = load i32, i32* @MSG_SENDPAGE_NOTLAST, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %33 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %34 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  %37 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %38 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %37, i32 0, i32 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %36, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  br label %45

45:                                               ; preds = %44, %6
  %46 = load %struct.socket*, %struct.socket** %7, align 8
  %47 = load %struct.page*, %struct.page** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %50 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %49, i32 0, i32 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %18, align 4
  %56 = call i32 @kernel_sendpage(%struct.socket* %46, %struct.page* %47, i64 %48, i32 %54, i32 %55)
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %20, align 4
  %58 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %59 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %58, i32 0, i32 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %57, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %45
  br label %170

66:                                               ; preds = %45
  %67 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %68 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %67, i32 0, i32 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %19, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %19, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %170

78:                                               ; preds = %66
  %79 = load i64, i64* @PAGE_SIZE, align 8
  %80 = load i64, i64* %16, align 8
  %81 = sub i64 %79, %80
  %82 = load i32, i32* %17, align 4
  %83 = zext i32 %82 to i64
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i64, i64* @PAGE_SIZE, align 8
  %87 = load i64, i64* %16, align 8
  %88 = sub i64 %86, %87
  br label %92

89:                                               ; preds = %78
  %90 = load i32, i32* %17, align 4
  %91 = zext i32 %90 to i64
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi i64 [ %88, %85 ], [ %91, %89 ]
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %138, %92
  %96 = load i32, i32* %17, align 4
  %97 = icmp ugt i32 %96, 0
  br i1 %97, label %98, label %143

98:                                               ; preds = %95
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 0, i32* %18, align 4
  br label %103

103:                                              ; preds = %102, %98
  %104 = load %struct.socket*, %struct.socket** %7, align 8
  %105 = load %struct.page**, %struct.page*** %15, align 8
  %106 = load %struct.page*, %struct.page** %105, align 8
  %107 = load i64, i64* %16, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %18, align 4
  %110 = call i32 @kernel_sendpage(%struct.socket* %104, %struct.page* %106, i64 %107, i32 %108, i32 %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %103
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %20, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %20, align 4
  br label %117

117:                                              ; preds = %113, %103
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %170

122:                                              ; preds = %117
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %19, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %17, align 4
  %128 = sub i32 %127, %126
  store i32 %128, i32* %17, align 4
  %129 = load i64, i64* @PAGE_SIZE, align 8
  %130 = load i32, i32* %17, align 4
  %131 = zext i32 %130 to i64
  %132 = icmp ult i64 %129, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %122
  %134 = load i64, i64* @PAGE_SIZE, align 8
  br label %138

135:                                              ; preds = %122
  %136 = load i32, i32* %17, align 4
  %137 = zext i32 %136 to i64
  br label %138

138:                                              ; preds = %135, %133
  %139 = phi i64 [ %134, %133 ], [ %137, %135 ]
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %14, align 4
  store i64 0, i64* %16, align 8
  %141 = load %struct.page**, %struct.page*** %15, align 8
  %142 = getelementptr inbounds %struct.page*, %struct.page** %141, i32 1
  store %struct.page** %142, %struct.page*** %15, align 8
  br label %95

143:                                              ; preds = %95
  %144 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %145 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %144, i32 0, i32 3
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %143
  %152 = load %struct.socket*, %struct.socket** %7, align 8
  %153 = load %struct.page*, %struct.page** %11, align 8
  %154 = load i64, i64* %12, align 8
  %155 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %156 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %155, i32 0, i32 3
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @kernel_sendpage(%struct.socket* %152, %struct.page* %153, i64 %154, i32 %160, i32 0)
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %13, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %151
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %20, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %20, align 4
  br label %168

168:                                              ; preds = %164, %151
  br label %169

169:                                              ; preds = %168, %143
  br label %170

170:                                              ; preds = %169, %121, %77, %65
  %171 = load i32, i32* %20, align 4
  ret i32 %171
}

declare dso_local i32 @kernel_sendpage(%struct.socket*, %struct.page*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
