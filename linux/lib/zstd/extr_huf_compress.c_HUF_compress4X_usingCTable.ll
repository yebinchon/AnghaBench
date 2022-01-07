; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_huf_compress.c_HUF_compress4X_usingCTable.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_huf_compress.c_HUF_compress4X_usingCTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cSize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_compress4X_usingCTable(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i64, i64* %10, align 8
  %19 = add i64 %18, 3
  %20 = udiv i64 %19, 4
  store i64 %20, i64* %12, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %14, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %15, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %16, align 8
  %31 = load i32*, i32** %15, align 8
  store i32* %31, i32** %17, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %32, 17
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %160

35:                                               ; preds = %5
  %36 = load i64, i64* %10, align 8
  %37 = icmp ult i64 %36, 12
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i64 0, i64* %6, align 8
  br label %160

39:                                               ; preds = %35
  %40 = load i32*, i32** %17, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  store i32* %41, i32** %17, align 8
  %42 = load i64, i64* @cSize, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = ptrtoint i32* %44 to i64
  %47 = ptrtoint i32* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = load i32*, i32** %13, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @HUF_compress1X_usingCTable(i32* %43, i32 %50, i32* %51, i64 %52, i32* %53)
  %55 = call i32 @CHECK_V_F(i64 %42, i32 %54)
  %56 = load i64, i64* @cSize, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  store i64 0, i64* %6, align 8
  br label %160

59:                                               ; preds = %39
  %60 = load i32*, i32** %15, align 8
  %61 = load i64, i64* @cSize, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @ZSTD_writeLE16(i32* %60, i32 %62)
  %64 = load i64, i64* @cSize, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 %64
  store i32* %66, i32** %17, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 %67
  store i32* %69, i32** %13, align 8
  %70 = load i64, i64* @cSize, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = ptrtoint i32* %72 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = load i32*, i32** %13, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @HUF_compress1X_usingCTable(i32* %71, i32 %78, i32* %79, i64 %80, i32* %81)
  %83 = call i32 @CHECK_V_F(i64 %70, i32 %82)
  %84 = load i64, i64* @cSize, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %59
  store i64 0, i64* %6, align 8
  br label %160

87:                                               ; preds = %59
  %88 = load i32*, i32** %15, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i64, i64* @cSize, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @ZSTD_writeLE16(i32* %89, i32 %91)
  %93 = load i64, i64* @cSize, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 %93
  store i32* %95, i32** %17, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 %96
  store i32* %98, i32** %13, align 8
  %99 = load i64, i64* @cSize, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = ptrtoint i32* %101 to i64
  %104 = ptrtoint i32* %102 to i64
  %105 = sub i64 %103, %104
  %106 = sdiv exact i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = load i32*, i32** %13, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 @HUF_compress1X_usingCTable(i32* %100, i32 %107, i32* %108, i64 %109, i32* %110)
  %112 = call i32 @CHECK_V_F(i64 %99, i32 %111)
  %113 = load i64, i64* @cSize, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %87
  store i64 0, i64* %6, align 8
  br label %160

116:                                              ; preds = %87
  %117 = load i32*, i32** %15, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = load i64, i64* @cSize, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @ZSTD_writeLE16(i32* %118, i32 %120)
  %122 = load i64, i64* @cSize, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 %122
  store i32* %124, i32** %17, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load i32*, i32** %13, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 %125
  store i32* %127, i32** %13, align 8
  %128 = load i64, i64* @cSize, align 8
  %129 = load i32*, i32** %17, align 8
  %130 = load i32*, i32** %16, align 8
  %131 = load i32*, i32** %17, align 8
  %132 = ptrtoint i32* %130 to i64
  %133 = ptrtoint i32* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 4
  %136 = trunc i64 %135 to i32
  %137 = load i32*, i32** %13, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = ptrtoint i32* %138 to i64
  %141 = ptrtoint i32* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 4
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @HUF_compress1X_usingCTable(i32* %129, i32 %136, i32* %137, i64 %143, i32* %144)
  %146 = call i32 @CHECK_V_F(i64 %128, i32 %145)
  %147 = load i64, i64* @cSize, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %116
  store i64 0, i64* %6, align 8
  br label %160

150:                                              ; preds = %116
  %151 = load i64, i64* @cSize, align 8
  %152 = load i32*, i32** %17, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 %151
  store i32* %153, i32** %17, align 8
  %154 = load i32*, i32** %17, align 8
  %155 = load i32*, i32** %15, align 8
  %156 = ptrtoint i32* %154 to i64
  %157 = ptrtoint i32* %155 to i64
  %158 = sub i64 %156, %157
  %159 = sdiv exact i64 %158, 4
  store i64 %159, i64* %6, align 8
  br label %160

160:                                              ; preds = %150, %149, %115, %86, %58, %38, %34
  %161 = load i64, i64* %6, align 8
  ret i64 %161
}

declare dso_local i32 @CHECK_V_F(i64, i32) #1

declare dso_local i32 @HUF_compress1X_usingCTable(i32*, i32, i32*, i64, i32*) #1

declare dso_local i32 @ZSTD_writeLE16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
