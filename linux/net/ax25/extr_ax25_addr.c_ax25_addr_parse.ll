; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_addr.c_ax25_addr_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_addr.c_ax25_addr_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32* }

@AX25_CBIT = common dso_local global i8 0, align 1
@AX25_COMMAND = common dso_local global i32 0, align 4
@AX25_RESPONSE = common dso_local global i32 0, align 4
@AX25_DAMA_FLAG = common dso_local global i8 0, align 1
@AX25_ADDR_LEN = common dso_local global i32 0, align 4
@AX25_EBIT = common dso_local global i8 0, align 1
@AX25_MAX_DIGIS = common dso_local global i32 0, align 4
@AX25_HBIT = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ax25_addr_parse(i8* %0, i32 %1, i32* %2, i32* %3, %struct.TYPE_3__* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 14
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  store i8* null, i8** %8, align 8
  br label %165

20:                                               ; preds = %7
  %21 = load i32*, i32** %14, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load i32*, i32** %14, align 8
  store i32 0, i32* %24, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 6
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @AX25_CBIT, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @AX25_COMMAND, align 4
  %35 = load i32*, i32** %14, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %23
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 13
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @AX25_CBIT, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @AX25_RESPONSE, align 4
  %47 = load i32*, i32** %14, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %36
  br label %49

49:                                               ; preds = %48, %20
  %50 = load i32*, i32** %15, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 13
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = xor i32 %56, -1
  %58 = load i8, i8* @AX25_DAMA_FLAG, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %57, %59
  %61 = load i32*, i32** %15, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %52, %49
  %63 = load i32*, i32** %12, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32*, i32** %12, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i32, i32* @AX25_ADDR_LEN, align 4
  %70 = call i32 @memcpy(i32* %66, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %62
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32*, i32** %11, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 7
  %78 = load i32, i32* @AX25_ADDR_LEN, align 4
  %79 = call i32 @memcpy(i32* %75, i8* %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %71
  %81 = load i32, i32* @AX25_ADDR_LEN, align 4
  %82 = mul nsw i32 2, %81
  %83 = load i8*, i8** %9, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %9, align 8
  %86 = load i32, i32* @AX25_ADDR_LEN, align 4
  %87 = mul nsw i32 2, %86
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 -1, i32* %91, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %153, %80
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 -1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* @AX25_EBIT, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br i1 %103, label %104, label %163

104:                                              ; preds = %94
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* @AX25_MAX_DIGIS, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i8* null, i8** %8, align 8
  br label %165

109:                                              ; preds = %104
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @AX25_ADDR_LEN, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i8* null, i8** %8, align 8
  br label %165

114:                                              ; preds = %109
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* @AX25_ADDR_LEN, align 4
  %123 = call i32 @memcpy(i32* %120, i8* %121, i32 %122)
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 6
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8, i8* @AX25_HBIT, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %114
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %16, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 1, i32* %142, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %153

146:                                              ; preds = %114
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 0, i32* %152, align 4
  br label %153

153:                                              ; preds = %146, %136
  %154 = load i32, i32* @AX25_ADDR_LEN, align 4
  %155 = load i8*, i8** %9, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8* %157, i8** %9, align 8
  %158 = load i32, i32* @AX25_ADDR_LEN, align 4
  %159 = load i32, i32* %10, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %16, align 4
  br label %94

163:                                              ; preds = %94
  %164 = load i8*, i8** %9, align 8
  store i8* %164, i8** %8, align 8
  br label %165

165:                                              ; preds = %163, %113, %108, %19
  %166 = load i8*, i8** %8, align 8
  ret i8* %166
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
