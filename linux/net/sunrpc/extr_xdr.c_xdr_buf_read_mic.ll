; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_buf_read_mic.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_buf_read_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.xdr_netobj = type { i32, i64 }

@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_buf_read_mic(%struct.xdr_buf* %0, %struct.xdr_netobj* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca %struct.xdr_netobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdr_buf, align 8
  %9 = alloca i32, align 4
  store %struct.xdr_buf* %0, %struct.xdr_buf** %5, align 8
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %13 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 0
  %14 = call i64 @xdr_decode_word(%struct.xdr_buf* %10, i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EFAULT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %182

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %23 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %19
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %34 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add i32 %32, %35
  %37 = load i32, i32* %9, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub i32 %41, %42
  %44 = call i32 @xdr_shift_buf(%struct.xdr_buf* %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %31, %19
  %46 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %47 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %59 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add i32 %57, %60
  %62 = load i32, i32* %9, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub i32 %66, %67
  %69 = call i32 @xdr_shrink_pagelen(%struct.xdr_buf* %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %56, %45
  %71 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %74 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @xdr_buf_subsegment(%struct.xdr_buf* %71, %struct.xdr_buf* %8, i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @EFAULT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %182

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %8, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %88 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %8, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %95 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %182

99:                                               ; preds = %81
  %100 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %8, i32 0, i32 3
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %106 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %8, i32 0, i32 3
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %113 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %182

117:                                              ; preds = %99
  %118 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %119 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %122 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %125 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub i32 %123, %126
  %128 = icmp ugt i32 %120, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %117
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %182

132:                                              ; preds = %117
  %133 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %134 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %133, i32 0, i32 3
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %132
  %141 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %142 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %141, i32 0, i32 3
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %148 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %147, i32 0, i32 3
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = zext i32 %152 to i64
  %154 = add nsw i64 %146, %153
  %155 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %156 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  br label %174

157:                                              ; preds = %132
  %158 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %159 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %158, i32 0, i32 2
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %165 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %164, i32 0, i32 2
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = zext i32 %169 to i64
  %171 = add nsw i64 %163, %170
  %172 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %173 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %157, %140
  %175 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %176 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %179 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @__read_bytes_from_xdr_buf(%struct.xdr_buf* %8, i64 %177, i32 %180)
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %174, %129, %116, %98, %78, %16
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i64 @xdr_decode_word(%struct.xdr_buf*, i32, i32*) #1

declare dso_local i32 @xdr_shift_buf(%struct.xdr_buf*, i32) #1

declare dso_local i32 @xdr_shrink_pagelen(%struct.xdr_buf*, i32) #1

declare dso_local i64 @xdr_buf_subsegment(%struct.xdr_buf*, %struct.xdr_buf*, i32, i32) #1

declare dso_local i32 @__read_bytes_from_xdr_buf(%struct.xdr_buf*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
