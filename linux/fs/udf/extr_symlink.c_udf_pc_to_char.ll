; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_symlink.c_udf_pc_to_char.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_symlink.c_udf_pc_to_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.pathComponent = type { i32, i32, i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32, i8*, i32)* @udf_pc_to_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_pc_to_char(%struct.super_block* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pathComponent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %16 = load i8*, i8** %10, align 8
  store i8* %16, i8** %15, align 8
  %17 = load i32, i32* %11, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %131, %5
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %132

23:                                               ; preds = %19
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = bitcast i8* %27 to %struct.pathComponent*
  store %struct.pathComponent* %28, %struct.pathComponent** %12, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 12
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load %struct.pathComponent*, %struct.pathComponent** %12, align 8
  %34 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %131 [
    i32 1, label %36
    i32 2, label %48
    i32 3, label %60
    i32 4, label %73
    i32 5, label %86
  ]

36:                                               ; preds = %23
  %37 = load %struct.pathComponent*, %struct.pathComponent** %12, align 8
  %38 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.pathComponent*, %struct.pathComponent** %12, align 8
  %43 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %131

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %23, %47
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @ENAMETOOLONG, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %144

54:                                               ; preds = %48
  %55 = load i8*, i8** %10, align 8
  store i8* %55, i8** %15, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %15, align 8
  store i8 47, i8* %56, align 1
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %11, align 4
  br label %131

60:                                               ; preds = %23
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 3
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @ENAMETOOLONG, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %144

66:                                               ; preds = %60
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 @memcpy(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %69 = load i8*, i8** %15, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  store i8* %70, i8** %15, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %71, 3
  store i32 %72, i32* %11, align 4
  br label %131

73:                                               ; preds = %23
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @ENAMETOOLONG, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %144

79:                                               ; preds = %73
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 @memcpy(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %82 = load i8*, i8** %15, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  store i8* %83, i8** %15, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %84, 2
  store i32 %85, i32* %11, align 4
  br label %131

86:                                               ; preds = %23
  %87 = load %struct.pathComponent*, %struct.pathComponent** %12, align 8
  %88 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %144

98:                                               ; preds = %86
  %99 = load %struct.super_block*, %struct.super_block** %7, align 8
  %100 = load %struct.pathComponent*, %struct.pathComponent** %12, align 8
  %101 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.pathComponent*, %struct.pathComponent** %12, align 8
  %104 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %15, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @udf_get_filename(%struct.super_block* %99, i32 %102, i32 %105, i8* %106, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %6, align 4
  br label %144

113:                                              ; preds = %98
  %114 = load i32, i32* %14, align 4
  %115 = load i8*, i8** %15, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %15, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %119, %118
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %113
  %124 = load i32, i32* @ENAMETOOLONG, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %6, align 4
  br label %144

126:                                              ; preds = %113
  %127 = load i8*, i8** %15, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %15, align 8
  store i8 47, i8* %127, align 1
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %23, %126, %79, %66, %54, %41
  br label %19

132:                                              ; preds = %19
  %133 = load i8*, i8** %15, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = icmp ugt i8* %133, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i8*, i8** %15, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 -1
  store i8 0, i8* %139, align 1
  br label %143

140:                                              ; preds = %132
  %141 = load i8*, i8** %15, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  store i8 0, i8* %142, align 1
  br label %143

143:                                              ; preds = %140, %137
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %143, %123, %111, %95, %76, %63, %51
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @udf_get_filename(%struct.super_block*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
