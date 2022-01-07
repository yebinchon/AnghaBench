; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_switch_subbuf.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_switch_subbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { i32, i32, i64, i32*, %struct.TYPE_5__*, i8*, i8*, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.rchan_buf*, i8*, i8*, i32)* }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @relay_switch_subbuf(%struct.rchan_buf* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rchan_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.rchan_buf* %0, %struct.rchan_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %12 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %11, i32 0, i32 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %10, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %204

21:                                               ; preds = %2
  %22 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %23 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %27 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  %32 = icmp ne i64 %25, %31
  br i1 %32, label %33, label %126

33:                                               ; preds = %21
  %34 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %35 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %34, i32 0, i32 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %40 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = sub i64 %38, %42
  %44 = trunc i64 %43 to i32
  %45 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %46 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %48 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %51 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %50, i32 0, i32 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = urem i64 %49, %54
  store i64 %55, i64* %8, align 8
  %56 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %57 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %60 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %65 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %69 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %68, i32 0, i32 10
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %33
  %73 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %74 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %73, i32 0, i32 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %79 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 %77, %84
  %86 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %87 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %86, i32 0, i32 10
  %88 = load i64, i64* %87, align 8
  %89 = call %struct.TYPE_6__* @d_inode(i64 %88)
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, %85
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  br label %115

95:                                               ; preds = %33
  %96 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %97 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %96, i32 0, i32 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %102 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = sub i64 %100, %107
  %109 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %110 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = add i64 %112, %108
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 8
  br label %115

115:                                              ; preds = %95, %72
  %116 = call i32 (...) @smp_mb()
  %117 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %118 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %117, i32 0, i32 8
  %119 = call i64 @waitqueue_active(i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %123 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %122, i32 0, i32 7
  %124 = call i32 @irq_work_queue(i32* %123)
  br label %125

125:                                              ; preds = %121, %115
  br label %126

126:                                              ; preds = %125, %21
  %127 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %128 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %127, i32 0, i32 5
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %6, align 8
  %130 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %131 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %134 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %133, i32 0, i32 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = urem i64 %132, %137
  store i64 %138, i64* %9, align 8
  %139 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %140 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %139, i32 0, i32 6
  %141 = load i8*, i8** %140, align 8
  %142 = load i64, i64* %9, align 8
  %143 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %144 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %143, i32 0, i32 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = mul i64 %142, %147
  %149 = getelementptr i8, i8* %141, i64 %148
  store i8* %149, i8** %7, align 8
  %150 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %151 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %150, i32 0, i32 0
  store i32 0, i32* %151, align 8
  %152 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %153 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %152, i32 0, i32 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32 (%struct.rchan_buf*, i8*, i8*, i32)*, i32 (%struct.rchan_buf*, i8*, i8*, i32)** %157, align 8
  %159 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %160 = load i8*, i8** %7, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %163 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 %158(%struct.rchan_buf* %159, i8* %160, i8* %161, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %177, label %167

167:                                              ; preds = %126
  %168 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %169 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %168, i32 0, i32 4
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, 1
  %174 = trunc i64 %173 to i32
  %175 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %176 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  store i64 0, i64* %3, align 8
  br label %210

177:                                              ; preds = %126
  %178 = load i8*, i8** %7, align 8
  %179 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %180 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %179, i32 0, i32 5
  store i8* %178, i8** %180, align 8
  %181 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %182 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* %9, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32 0, i32* %185, align 4
  %186 = load i64, i64* %5, align 8
  %187 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %188 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = add i64 %186, %190
  %192 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %193 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %192, i32 0, i32 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ugt i64 %191, %196
  %198 = zext i1 %197 to i32
  %199 = call i64 @unlikely(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %177
  br label %204

202:                                              ; preds = %177
  %203 = load i64, i64* %5, align 8
  store i64 %203, i64* %3, align 8
  br label %210

204:                                              ; preds = %201, %20
  %205 = load i64, i64* %5, align 8
  %206 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %207 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %206, i32 0, i32 4
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  store i64 %205, i64* %209, align 8
  store i64 0, i64* %3, align 8
  br label %210

210:                                              ; preds = %204, %202, %167
  %211 = load i64, i64* %3, align 8
  ret i64 %211
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_6__* @d_inode(i64) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @irq_work_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
