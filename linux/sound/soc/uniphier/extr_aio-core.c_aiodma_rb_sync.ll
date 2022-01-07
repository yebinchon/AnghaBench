; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_rb_sync.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_rb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aiodma_rb_sync(%struct.uniphier_aio_sub* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.uniphier_aio_sub*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %10 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %9, i32 0, i32 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %4
  %17 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %18 = call i8* @aiodma_rb_get_rp(%struct.uniphier_aio_sub* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %25 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %27 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %16
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 2, %31
  %33 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %34 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 2, %37
  %39 = call i32 @aiodma_rb_set_threshold(%struct.uniphier_aio_sub* %35, i8* %36, i32 %38)
  %40 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %41 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %46 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %48 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %30
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %55 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* %53, i64 %57
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %55, align 8
  br label %60

60:                                               ; preds = %52, %30
  br label %61

61:                                               ; preds = %60, %16
  %62 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %63 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %64 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr i8, i8* %66, i64 %67
  %69 = call i32 @aiodma_rb_set_wp(%struct.uniphier_aio_sub* %62, i8* %68)
  br label %124

70:                                               ; preds = %4
  %71 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %72 = call i8* @aiodma_rb_get_wp(%struct.uniphier_aio_sub* %71)
  %73 = load i8*, i8** %6, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %79 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %81 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %115

84:                                               ; preds = %70
  %85 = load i32, i32* %8, align 4
  %86 = mul nsw i32 2, %85
  %87 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %88 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = mul nsw i32 2, %91
  %93 = call i32 @aiodma_rb_set_threshold(%struct.uniphier_aio_sub* %89, i8* %90, i32 %92)
  %94 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %95 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %100 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %102 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %84
  %107 = load i8*, i8** %7, align 8
  %108 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %109 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr i8, i8* %107, i64 %111
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %109, align 8
  br label %114

114:                                              ; preds = %106, %84
  br label %115

115:                                              ; preds = %114, %70
  %116 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %117 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %118 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr i8, i8* %120, i64 %121
  %123 = call i32 @aiodma_rb_set_rp(%struct.uniphier_aio_sub* %116, i8* %122)
  br label %124

124:                                              ; preds = %115, %61
  %125 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %126 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %129 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %127, %130
  %132 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %133 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %137 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %140 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %124
  %144 = load i8*, i8** %7, align 8
  %145 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %146 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = getelementptr i8, i8* %144, i64 %148
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* %146, align 8
  br label %151

151:                                              ; preds = %143, %124
  %152 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %153 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %156 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %154, %157
  %159 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %160 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %164 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %167 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %151
  %171 = load i8*, i8** %7, align 8
  %172 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %173 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr i8, i8* %171, i64 %175
  %177 = ptrtoint i8* %176 to i32
  store i32 %177, i32* %173, align 4
  br label %178

178:                                              ; preds = %170, %151
  %179 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %180 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %183 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  %184 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %185 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %188 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 8
  ret void
}

declare dso_local i8* @aiodma_rb_get_rp(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @aiodma_rb_set_threshold(%struct.uniphier_aio_sub*, i8*, i32) #1

declare dso_local i32 @aiodma_rb_set_wp(%struct.uniphier_aio_sub*, i8*) #1

declare dso_local i8* @aiodma_rb_get_wp(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @aiodma_rb_set_rp(%struct.uniphier_aio_sub*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
