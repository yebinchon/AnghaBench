; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_oid_registry.c_look_up_OID.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_oid_registry.c_look_up_OID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32 }

@OID__NR = common dso_local global i32 0, align 4
@oid_search_table = common dso_local global %struct.TYPE_2__* null, align 8
@oid_index = common dso_local global i64* null, align 8
@oid_data = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @look_up_OID(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = sub i64 %17, 1
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %35, %2
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = load i64, i64* %5, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = mul nsw i32 %31, 33
  %33 = load i32, i32* %12, align 4
  %34 = add i32 %33, %32
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load i32, i32* %12, align 4
  %40 = lshr i32 %39, 24
  %41 = load i32, i32* %12, align 4
  %42 = lshr i32 %41, 16
  %43 = xor i32 %40, %42
  %44 = load i32, i32* %12, align 4
  %45 = lshr i32 %44, 8
  %46 = xor i32 %43, %45
  %47 = load i32, i32* %12, align 4
  %48 = xor i32 %46, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %49, 255
  store i32 %50, i32* %12, align 4
  store i32 0, i32* %9, align 4
  %51 = load i32, i32* @OID__NR, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %151, %109, %103, %78, %71, %38
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %152

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %57, %58
  %60 = udiv i32 %59, 2
  store i32 %60, i32* %10, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oid_search_table, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 4
  store i8 %66, i8* %8, align 1
  %67 = load i8, i8* %8, align 1
  %68 = zext i8 %67 to i32
  %69 = load i32, i32* %12, align 4
  %70 = icmp ugt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %11, align 4
  br label %52

73:                                               ; preds = %56
  %74 = load i8, i8* %8, align 1
  %75 = zext i8 %74 to i32
  %76 = load i32, i32* %12, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %52

81:                                               ; preds = %73
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oid_search_table, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %7, align 4
  %88 = load i64*, i64** @oid_index, align 8
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, 1
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** @oid_index, align 8
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %93, %98
  store i64 %99, i64* %13, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* %5, align 8
  %102 = icmp ugt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %81
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %11, align 4
  br label %52

105:                                              ; preds = %81
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* %5, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %52

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %148, %112
  %114 = load i64, i64* %13, align 8
  %115 = icmp ugt i64 %114, 0
  br i1 %115, label %116, label %149

116:                                              ; preds = %113
  %117 = load i8*, i8** @oid_data, align 8
  %118 = load i64*, i64** @oid_index, align 8
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %13, align 8
  %124 = add i64 %123, -1
  store i64 %124, i64* %13, align 8
  %125 = add i64 %122, %124
  %126 = getelementptr inbounds i8, i8* %117, i64 %125
  %127 = load i8, i8* %126, align 1
  store i8 %127, i8* %14, align 1
  %128 = load i8*, i8** %6, align 8
  %129 = load i64, i64* %13, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  %131 = load i8, i8* %130, align 1
  store i8 %131, i8* %15, align 1
  %132 = load i8, i8* %14, align 1
  %133 = zext i8 %132 to i32
  %134 = load i8, i8* %15, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp sgt i32 %133, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %116
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %11, align 4
  br label %151

139:                                              ; preds = %116
  %140 = load i8, i8* %14, align 1
  %141 = zext i8 %140 to i32
  %142 = load i8, i8* %15, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32, i32* %10, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %151

148:                                              ; preds = %139
  br label %113

149:                                              ; preds = %113
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %3, align 4
  br label %154

151:                                              ; preds = %145, %137
  br label %52

152:                                              ; preds = %52
  %153 = load i32, i32* @OID__NR, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %149
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
