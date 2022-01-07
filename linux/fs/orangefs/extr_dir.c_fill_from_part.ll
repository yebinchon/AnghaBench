; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_fill_from_part.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_fill_from_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_dir_part = type { i32 }
%struct.dir_context = type { i32 }
%struct.orangefs_khandle = type { i32 }

@PART_MASK = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orangefs_dir_part*, %struct.dir_context*)* @fill_from_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_from_part(%struct.orangefs_dir_part* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.orangefs_dir_part*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.orangefs_khandle*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.orangefs_dir_part* %0, %struct.orangefs_dir_part** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  store i32 4, i32* %6, align 4
  %12 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %13 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PART_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %4, align 8
  %20 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %158

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = srem i32 %25, 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = srem i32 %30, 8
  %32 = sub nsw i32 8, %31
  %33 = srem i32 %32, 8
  %34 = add nsw i32 %29, %33
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %28, %24
  br label %36

36:                                               ; preds = %154, %124, %35
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %4, align 8
  %39 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %157

42:                                               ; preds = %36
  %43 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %4, align 8
  %44 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 4
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %157

52:                                               ; preds = %42
  %53 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %4, align 8
  %54 = bitcast %struct.orangefs_dir_part* %53 to i8*
  %55 = getelementptr i8, i8* %54, i64 4
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* %55, i64 %57
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 4, %62
  %64 = add i64 %63, 1
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 4, %67
  %69 = add i64 %68, 1
  %70 = urem i64 %69, 8
  %71 = sub i64 8, %70
  %72 = urem i64 %71, 8
  %73 = add i64 %64, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %4, align 8
  %76 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 4
  %84 = icmp ult i64 %78, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %52
  br label %154

86:                                               ; preds = %52
  %87 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %4, align 8
  %88 = bitcast %struct.orangefs_dir_part* %87 to i8*
  %89 = getelementptr i8, i8* %88, i64 4
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr i8, i8* %89, i64 %91
  %93 = getelementptr i8, i8* %92, i64 4
  store i8* %93, i8** %11, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %86
  br label %154

103:                                              ; preds = %86
  %104 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %4, align 8
  %105 = bitcast %struct.orangefs_dir_part* %104 to i8*
  %106 = getelementptr i8, i8* %105, i64 4
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr i8, i8* %106, i64 %108
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr i8, i8* %109, i64 %111
  %113 = bitcast i8* %112 to %struct.orangefs_khandle*
  store %struct.orangefs_khandle* %113, %struct.orangefs_khandle** %7, align 8
  %114 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %7, align 8
  %119 = call i32 @orangefs_khandle_to_ino(%struct.orangefs_khandle* %118)
  %120 = load i32, i32* @DT_UNKNOWN, align 4
  %121 = call i32 @dir_emit(%struct.dir_context* %114, i8* %115, i32 %117, i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %158

124:                                              ; preds = %103
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %126, 4
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = srem i32 %133, 8
  %135 = sub nsw i32 8, %134
  %136 = srem i32 %135, 8
  %137 = add nsw i32 %132, %136
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %4, align 8
  %140 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %138, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @BUG_ON(i32 %143)
  %145 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %146 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @PART_MASK, align 4
  %149 = and i32 %147, %148
  %150 = load i32, i32* %10, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %153 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  br label %36

154:                                              ; preds = %102, %85
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 8
  store i32 %156, i32* %10, align 4
  br label %36

157:                                              ; preds = %51, %36
  store i32 1, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %123, %23
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i32, i32) #1

declare dso_local i32 @orangefs_khandle_to_ino(%struct.orangefs_khandle*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
