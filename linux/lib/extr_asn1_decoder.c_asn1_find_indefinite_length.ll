; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_asn1_decoder.c_asn1_find_indefinite_length.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_asn1_decoder.c_asn1_find_indefinite_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_EOC = common dso_local global i8 0, align 1
@ASN1_LONG_TAG = common dso_local global i8 0, align 1
@ASN1_INDEFINITE_LENGTH = common dso_local global i64 0, align 8
@ASN1_CONS_BIT = common dso_local global i8 0, align 1
@ASN1_PRIM = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [19 x i8] c"Unsupported length\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Indefinite len primitive not permitted\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid length EOC\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Data overrun error\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Missing EOC in indefinite len cons\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*, i64*, i8**)* @asn1_find_indefinite_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_find_indefinite_length(i8* %0, i64 %1, i64* %2, i64* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8** %4, i8*** %11, align 8
  %18 = load i64*, i64** %9, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %14, align 8
  store i32 1, i32* %17, align 4
  br label %20

20:                                               ; preds = %178, %130, %66, %5
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %14, align 8
  %23 = sub i64 %21, %22
  %24 = icmp ult i64 %23, 2
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %190

33:                                               ; preds = %28
  br label %188

34:                                               ; preds = %20
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %14, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %14, align 8
  %38 = getelementptr inbounds i8, i8* %35, i64 %36
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %12, align 1
  %40 = load i8, i8* %12, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @ASN1_EOC, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %34
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %14, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %14, align 8
  %49 = getelementptr inbounds i8, i8* %46, i64 %47
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %186

54:                                               ; preds = %45
  %55 = load i32, i32* %17, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %17, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i64, i64* %14, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %59, %61
  %63 = load i64*, i64** %10, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load i64*, i64** %9, align 8
  store i64 %64, i64* %65, align 8
  store i32 0, i32* %6, align 4
  br label %195

66:                                               ; preds = %54
  br label %20

67:                                               ; preds = %34
  %68 = load i8, i8* %12, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 31
  %71 = load i8, i8* @ASN1_LONG_TAG, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %93, %77
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %14, align 8
  %81 = sub i64 %79, %80
  %82 = icmp ult i64 %81, 2
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %188

87:                                               ; preds = %78
  %88 = load i8*, i8** %7, align 8
  %89 = load i64, i64* %14, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %14, align 8
  %91 = getelementptr inbounds i8, i8* %88, i64 %89
  %92 = load i8, i8* %91, align 1
  store i8 %92, i8* %13, align 1
  br label %93

93:                                               ; preds = %87
  %94 = load i8, i8* %13, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 128
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %78, label %98

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %67
  %100 = load i8*, i8** %7, align 8
  %101 = load i64, i64* %14, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %14, align 8
  %103 = getelementptr inbounds i8, i8* %100, i64 %101
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i64
  store i64 %105, i64* %15, align 8
  %106 = load i64, i64* %15, align 8
  %107 = icmp ule i64 %106, 127
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %171

109:                                              ; preds = %99
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* @ASN1_INDEFINITE_LENGTH, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %109
  %117 = load i8, i8* %12, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* @ASN1_CONS_BIT, align 1
  %120 = zext i8 %119 to i32
  %121 = and i32 %118, %120
  %122 = load i8, i8* @ASN1_PRIM, align 1
  %123 = zext i8 %122 to i32
  %124 = shl i32 %123, 5
  %125 = icmp eq i32 %121, %124
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %116
  br label %184

130:                                              ; preds = %116
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %17, align 4
  br label %20

133:                                              ; preds = %109
  %134 = load i64, i64* %15, align 8
  %135 = sub i64 %134, 128
  store i64 %135, i64* %16, align 8
  %136 = load i64, i64* %16, align 8
  %137 = icmp ugt i64 %136, 7
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %182

142:                                              ; preds = %133
  %143 = load i64, i64* %16, align 8
  %144 = load i64, i64* %8, align 8
  %145 = load i64, i64* %14, align 8
  %146 = sub i64 %144, %145
  %147 = icmp ugt i64 %143, %146
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %188

152:                                              ; preds = %142
  store i64 0, i64* %15, align 8
  br label %153

153:                                              ; preds = %167, %152
  %154 = load i64, i64* %16, align 8
  %155 = icmp ugt i64 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %153
  %157 = load i64, i64* %15, align 8
  %158 = shl i64 %157, 8
  store i64 %158, i64* %15, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = load i64, i64* %14, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %14, align 8
  %162 = getelementptr inbounds i8, i8* %159, i64 %160
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i64
  %165 = load i64, i64* %15, align 8
  %166 = or i64 %165, %164
  store i64 %166, i64* %15, align 8
  br label %167

167:                                              ; preds = %156
  %168 = load i64, i64* %16, align 8
  %169 = add i64 %168, -1
  store i64 %169, i64* %16, align 8
  br label %153

170:                                              ; preds = %153
  br label %171

171:                                              ; preds = %170, %108
  %172 = load i64, i64* %15, align 8
  %173 = load i64, i64* %8, align 8
  %174 = load i64, i64* %14, align 8
  %175 = sub i64 %173, %174
  %176 = icmp ugt i64 %172, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %188

178:                                              ; preds = %171
  %179 = load i64, i64* %15, align 8
  %180 = load i64, i64* %14, align 8
  %181 = add i64 %180, %179
  store i64 %181, i64* %14, align 8
  br label %20

182:                                              ; preds = %141
  %183 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %183, align 8
  br label %192

184:                                              ; preds = %129
  %185 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %185, align 8
  br label %192

186:                                              ; preds = %53
  %187 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %187, align 8
  br label %192

188:                                              ; preds = %177, %151, %86, %33
  %189 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %189, align 8
  br label %192

190:                                              ; preds = %32
  %191 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8** %191, align 8
  br label %192

192:                                              ; preds = %190, %188, %186, %184, %182
  %193 = load i64, i64* %14, align 8
  %194 = load i64*, i64** %9, align 8
  store i64 %193, i64* %194, align 8
  store i32 -1, i32* %6, align 4
  br label %195

195:                                              ; preds = %192, %58
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
