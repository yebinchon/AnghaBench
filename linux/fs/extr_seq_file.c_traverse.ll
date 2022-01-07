; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_seq_file.c_traverse.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_seq_file.c_traverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64, i64, i32, i8*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i32*)*, i8* (%struct.seq_file*, i32*)* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i64)* @traverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverse(%struct.seq_file* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 5
  store i32 0, i32* %12, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %172

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %28 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = call i8* @seq_buf_alloc(i32 %26)
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %172

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %20
  %41 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %42 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i8* (%struct.seq_file*, i32*)*, i8* (%struct.seq_file*, i32*)** %44, align 8
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %48 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %47, i32 0, i32 5
  %49 = call i8* %45(%struct.seq_file* %46, i32* %48)
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %127, %40
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %128

53:                                               ; preds = %50
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @PTR_ERR(i8* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %128

60:                                               ; preds = %53
  %61 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %62 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %64, align 8
  %66 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 %65(%struct.seq_file* %66, i8* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %128

72:                                               ; preds = %60
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  %77 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %78 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %72
  %80 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %81 = call i64 @seq_has_overflowed(%struct.seq_file* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %138

84:                                               ; preds = %79
  %85 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %86 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %85, i32 0, i32 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i8* (%struct.seq_file*, i8*, i32*)*, i8* (%struct.seq_file*, i8*, i32*)** %88, align 8
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %93 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %92, i32 0, i32 5
  %94 = call i8* %89(%struct.seq_file* %90, i8* %91, i32* %93)
  store i8* %94, i8** %8, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %97 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = load i64, i64* %5, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %84
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* %6, align 8
  %105 = sub nsw i64 %103, %104
  %106 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %107 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %109 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %112 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  br label %128

115:                                              ; preds = %84
  %116 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %117 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %6, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %6, align 8
  %121 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %122 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* %5, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  br label %128

127:                                              ; preds = %115
  br label %50

128:                                              ; preds = %126, %102, %71, %59, %50
  %129 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %130 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %129, i32 0, i32 4
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %132, align 8
  %134 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 %133(%struct.seq_file* %134, i8* %135)
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %3, align 4
  br label %172

138:                                              ; preds = %83
  %139 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %140 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %139, i32 0, i32 4
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %142, align 8
  %144 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 %143(%struct.seq_file* %144, i8* %145)
  %147 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %148 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @kvfree(i8* %149)
  %151 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %152 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  %153 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %154 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = shl i32 %155, 1
  store i32 %156, i32* %154, align 8
  %157 = call i8* @seq_buf_alloc(i32 %156)
  %158 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %159 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  %160 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %161 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %160, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %138
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  br label %170

167:                                              ; preds = %138
  %168 = load i32, i32* @EAGAIN, align 4
  %169 = sub nsw i32 0, %168
  br label %170

170:                                              ; preds = %167, %164
  %171 = phi i32 [ %166, %164 ], [ %169, %167 ]
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %128, %36, %19
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i8* @seq_buf_alloc(i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @seq_has_overflowed(%struct.seq_file*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
