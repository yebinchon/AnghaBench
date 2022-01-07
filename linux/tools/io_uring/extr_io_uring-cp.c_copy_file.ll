; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-cp.c_copy_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-cp.c_copy_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_uring = type { i32 }
%struct.io_uring_cqe = type { i64 }
%struct.io_data = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@QD = common dso_local global i64 0, align 8
@BS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"io_uring_submit: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"io_uring_peek_cqe: %s\0A\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"cqe failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_uring*, i64)* @copy_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_file(%struct.io_uring* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.io_uring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.io_uring_cqe*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.io_data*, align 8
  store %struct.io_uring* %0, %struct.io_uring** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %208, %2
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ true, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %209

25:                                               ; preds = %23
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %12, align 8
  br label %27

27:                                               ; preds = %56, %25
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %27
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %32, %33
  %35 = load i64, i64* @QD, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %65

38:                                               ; preds = %30
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* @BS, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @BS, align 8
  store i64 %43, i64* %14, align 8
  br label %49

44:                                               ; preds = %38
  %45 = load i64, i64* %14, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %65

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %42
  %50 = load %struct.io_uring*, %struct.io_uring** %4, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @queue_read(%struct.io_uring* %50, i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %65

56:                                               ; preds = %49
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %5, align 8
  %59 = sub nsw i64 %58, %57
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %27

65:                                               ; preds = %55, %47, %37, %27
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.io_uring*, %struct.io_uring** %4, align 8
  %71 = call i32 @io_uring_submit(%struct.io_uring* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 0, %76
  %78 = call i8* @strerror(i32 %77)
  %79 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %78)
  br label %209

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %65
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %204, %146, %121, %81
  %83 = load i64, i64* %9, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %208

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load %struct.io_uring*, %struct.io_uring** %4, align 8
  %90 = call i32 @io_uring_wait_cqe(%struct.io_uring* %89, %struct.io_uring_cqe** %8)
  store i32 %90, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %94

91:                                               ; preds = %85
  %92 = load %struct.io_uring*, %struct.io_uring** %4, align 8
  %93 = call i32 @io_uring_peek_cqe(%struct.io_uring* %92, %struct.io_uring_cqe** %8)
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* @stderr, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 0, %99
  %101 = call i8* @strerror(i32 %100)
  %102 = call i32 @fprintf(i32 %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  store i32 1, i32* %3, align 4
  br label %210

103:                                              ; preds = %94
  %104 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %8, align 8
  %105 = icmp ne %struct.io_uring_cqe* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  br label %208

107:                                              ; preds = %103
  %108 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %8, align 8
  %109 = call %struct.io_data* @io_uring_cqe_get_data(%struct.io_uring_cqe* %108)
  store %struct.io_data* %109, %struct.io_data** %15, align 8
  %110 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %8, align 8
  %111 = getelementptr inbounds %struct.io_uring_cqe, %struct.io_uring_cqe* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %107
  %115 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %8, align 8
  %116 = getelementptr inbounds %struct.io_uring_cqe, %struct.io_uring_cqe* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @EAGAIN, align 8
  %119 = sub nsw i64 0, %118
  %120 = icmp eq i64 %117, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load %struct.io_uring*, %struct.io_uring** %4, align 8
  %123 = load %struct.io_data*, %struct.io_data** %15, align 8
  %124 = call i32 @queue_prepped(%struct.io_uring* %122, %struct.io_data* %123)
  %125 = load %struct.io_uring*, %struct.io_uring** %4, align 8
  %126 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %8, align 8
  %127 = call i32 @io_uring_cqe_seen(%struct.io_uring* %125, %struct.io_uring_cqe* %126)
  br label %82

128:                                              ; preds = %114
  %129 = load i32, i32* @stderr, align 4
  %130 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %8, align 8
  %131 = getelementptr inbounds %struct.io_uring_cqe, %struct.io_uring_cqe* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 0, %132
  %134 = trunc i64 %133 to i32
  %135 = call i8* @strerror(i32 %134)
  %136 = call i32 @fprintf(i32 %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %135)
  store i32 1, i32* %3, align 4
  br label %210

137:                                              ; preds = %107
  %138 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %8, align 8
  %139 = getelementptr inbounds %struct.io_uring_cqe, %struct.io_uring_cqe* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.io_data*, %struct.io_data** %15, align 8
  %142 = getelementptr inbounds %struct.io_data, %struct.io_data* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %140, %144
  br i1 %145, label %146, label %180

146:                                              ; preds = %137
  %147 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %8, align 8
  %148 = getelementptr inbounds %struct.io_uring_cqe, %struct.io_uring_cqe* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.io_data*, %struct.io_data** %15, align 8
  %151 = getelementptr inbounds %struct.io_data, %struct.io_data* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %149
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %152, align 8
  %157 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %8, align 8
  %158 = getelementptr inbounds %struct.io_uring_cqe, %struct.io_uring_cqe* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.io_data*, %struct.io_data** %15, align 8
  %161 = getelementptr inbounds %struct.io_data, %struct.io_data* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = sub i64 %163, %159
  store i64 %164, i64* %162, align 8
  %165 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %8, align 8
  %166 = getelementptr inbounds %struct.io_uring_cqe, %struct.io_uring_cqe* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.io_data*, %struct.io_data** %15, align 8
  %169 = getelementptr inbounds %struct.io_data, %struct.io_data* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %167
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %169, align 8
  %174 = load %struct.io_uring*, %struct.io_uring** %4, align 8
  %175 = load %struct.io_data*, %struct.io_data** %15, align 8
  %176 = call i32 @queue_prepped(%struct.io_uring* %174, %struct.io_data* %175)
  %177 = load %struct.io_uring*, %struct.io_uring** %4, align 8
  %178 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %8, align 8
  %179 = call i32 @io_uring_cqe_seen(%struct.io_uring* %177, %struct.io_uring_cqe* %178)
  br label %82

180:                                              ; preds = %137
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.io_data*, %struct.io_data** %15, align 8
  %183 = getelementptr inbounds %struct.io_data, %struct.io_data* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %181
  %187 = load %struct.io_uring*, %struct.io_uring** %4, align 8
  %188 = load %struct.io_data*, %struct.io_data** %15, align 8
  %189 = call i32 @queue_write(%struct.io_uring* %187, %struct.io_data* %188)
  %190 = load %struct.io_data*, %struct.io_data** %15, align 8
  %191 = getelementptr inbounds %struct.io_data, %struct.io_data* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %9, align 8
  %194 = sub nsw i64 %193, %192
  store i64 %194, i64* %9, align 8
  %195 = load i64, i64* %6, align 8
  %196 = add i64 %195, -1
  store i64 %196, i64* %6, align 8
  %197 = load i64, i64* %7, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %7, align 8
  br label %204

199:                                              ; preds = %181
  %200 = load %struct.io_data*, %struct.io_data** %15, align 8
  %201 = call i32 @free(%struct.io_data* %200)
  %202 = load i64, i64* %7, align 8
  %203 = add i64 %202, -1
  store i64 %203, i64* %7, align 8
  br label %204

204:                                              ; preds = %199, %186
  %205 = load %struct.io_uring*, %struct.io_uring** %4, align 8
  %206 = load %struct.io_uring_cqe*, %struct.io_uring_cqe** %8, align 8
  %207 = call i32 @io_uring_cqe_seen(%struct.io_uring* %205, %struct.io_uring_cqe* %206)
  br label %82

208:                                              ; preds = %106, %82
  br label %17

209:                                              ; preds = %74, %23
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %209, %128, %97
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i64 @queue_read(%struct.io_uring*, i64, i64) #1

declare dso_local i32 @io_uring_submit(%struct.io_uring*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @io_uring_wait_cqe(%struct.io_uring*, %struct.io_uring_cqe**) #1

declare dso_local i32 @io_uring_peek_cqe(%struct.io_uring*, %struct.io_uring_cqe**) #1

declare dso_local %struct.io_data* @io_uring_cqe_get_data(%struct.io_uring_cqe*) #1

declare dso_local i32 @queue_prepped(%struct.io_uring*, %struct.io_data*) #1

declare dso_local i32 @io_uring_cqe_seen(%struct.io_uring*, %struct.io_uring_cqe*) #1

declare dso_local i32 @queue_write(%struct.io_uring*, %struct.io_data*) #1

declare dso_local i32 @free(%struct.io_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
