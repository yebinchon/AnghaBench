; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_subr.c_rose_parse_ccitt.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_subr.c_rose_parse_ccitt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rose_facilities_struct = type { i8, i8, i32, i32 }

@FAC_CCITT_DEST_NSAP = common dso_local global i8 0, align 1
@ROSE_ADDR_LEN = common dso_local global i8 0, align 1
@FAC_CCITT_SRC_NSAP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rose_facilities_struct*, i32)* @rose_parse_ccitt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_parse_ccitt(i8* %0, %struct.rose_facilities_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rose_facilities_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [11 x i8], align 1
  store i8* %0, i8** %5, align 8
  store %struct.rose_facilities_struct* %1, %struct.rose_facilities_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8 0, i8* %9, align 1
  br label %11

11:                                               ; preds = %161, %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 192
  switch i32 %15, label %152 [
    i32 0, label %16
    i32 64, label %29
    i32 128, label %42
    i32 192, label %55
  ]

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %166

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %22, i8** %5, align 8
  %23 = load i8, i8* %9, align 1
  %24 = zext i8 %23 to i32
  %25 = add nsw i32 %24, 2
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %9, align 1
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 2
  store i32 %28, i32* %7, align 4
  br label %152

29:                                               ; preds = %11
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %166

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  store i8* %35, i8** %5, align 8
  %36 = load i8, i8* %9, align 1
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %37, 3
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %9, align 1
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 3
  store i32 %41, i32* %7, align 4
  br label %152

42:                                               ; preds = %11
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %166

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  store i8* %48, i8** %5, align 8
  %49 = load i8, i8* %9, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %50, 4
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %9, align 1
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, 4
  store i32 %54, i32* %7, align 4
  br label %152

55:                                               ; preds = %11
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %166

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %8, align 1
  %63 = load i8, i8* %8, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp slt i32 %64, 10
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = load i8, i8* %8, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sgt i32 %68, 20
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %59
  store i32 -1, i32* %4, align 4
  br label %166

71:                                               ; preds = %66
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @FAC_CCITT_DEST_NSAP, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %71
  %79 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %80 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %79, i32 0, i32 0
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 7
  %83 = load i8, i8* @ROSE_ADDR_LEN, align 1
  %84 = call i32 @memcpy(i8* %80, i8* %82, i8 zeroext %83)
  %85 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 12
  %88 = load i8, i8* %8, align 1
  %89 = zext i8 %88 to i32
  %90 = sub nsw i32 %89, 10
  %91 = trunc i32 %90 to i8
  %92 = call i32 @memcpy(i8* %85, i8* %87, i8 zeroext %91)
  %93 = load i8, i8* %8, align 1
  %94 = zext i8 %93 to i32
  %95 = sub nsw i32 %94, 10
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 %96
  store i8 0, i8* %97, align 1
  %98 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %99 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %98, i32 0, i32 3
  %100 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %101 = call i32 @asc2ax(i32* %99, i8* %100)
  br label %102

102:                                              ; preds = %78, %71
  %103 = load i8*, i8** %5, align 8
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* @FAC_CCITT_SRC_NSAP, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %102
  %110 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %111 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %110, i32 0, i32 1
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 7
  %114 = load i8, i8* @ROSE_ADDR_LEN, align 1
  %115 = call i32 @memcpy(i8* %111, i8* %113, i8 zeroext %114)
  %116 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 12
  %119 = load i8, i8* %8, align 1
  %120 = zext i8 %119 to i32
  %121 = sub nsw i32 %120, 10
  %122 = trunc i32 %121 to i8
  %123 = call i32 @memcpy(i8* %116, i8* %118, i8 zeroext %122)
  %124 = load i8, i8* %8, align 1
  %125 = zext i8 %124 to i32
  %126 = sub nsw i32 %125, 10
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 %127
  store i8 0, i8* %128, align 1
  %129 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %130 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %129, i32 0, i32 2
  %131 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %132 = call i32 @asc2ax(i32* %130, i8* %131)
  br label %133

133:                                              ; preds = %109, %102
  %134 = load i8, i8* %8, align 1
  %135 = zext i8 %134 to i32
  %136 = add nsw i32 %135, 2
  %137 = load i8*, i8** %5, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %5, align 8
  %140 = load i8, i8* %8, align 1
  %141 = zext i8 %140 to i32
  %142 = add nsw i32 %141, 2
  %143 = load i8, i8* %9, align 1
  %144 = zext i8 %143 to i32
  %145 = add nsw i32 %144, %142
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %9, align 1
  %147 = load i8, i8* %8, align 1
  %148 = zext i8 %147 to i32
  %149 = add nsw i32 %148, 2
  %150 = load i32, i32* %7, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %11, %133, %46, %33, %20
  br label %153

153:                                              ; preds = %152
  %154 = load i8*, i8** %5, align 8
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i32, i32* %7, align 4
  %160 = icmp sgt i32 %159, 0
  br label %161

161:                                              ; preds = %158, %153
  %162 = phi i1 [ false, %153 ], [ %160, %158 ]
  br i1 %162, label %11, label %163

163:                                              ; preds = %161
  %164 = load i8, i8* %9, align 1
  %165 = zext i8 %164 to i32
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %163, %70, %58, %45, %32, %19
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @memcpy(i8*, i8*, i8 zeroext) #1

declare dso_local i32 @asc2ax(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
