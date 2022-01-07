; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_xlate_to_uni.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_xlate_to_uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 (i8*, i32, i32*)* }

@UTF16_HOST_ENDIAN = common dso_local global i32 0, align 4
@FAT_LFN_LEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32*, i32*, i32, i32, %struct.nls_table*)* @xlate_to_uni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlate_to_uni(i8* %0, i32 %1, i8* %2, i32* %3, i32* %4, i32 %5, i32 %6, %struct.nls_table* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nls_table*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [2 x i32], align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.nls_table* %7, %struct.nls_table** %17, align 8
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @UTF16_HOST_ENDIAN, align 4
  %30 = load i8*, i8** %12, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* @FAT_LFN_LEN, align 4
  %33 = add nsw i32 %32, 2
  %34 = call i32 @utf8s_to_utf16s(i8* %27, i32 %28, i32 %29, i32* %31, i32 %33)
  %35 = load i32*, i32** %14, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32*, i32** %14, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  br label %196

42:                                               ; preds = %26
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FAT_LFN_LEN, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @ENAMETOOLONG, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %196

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load i8*, i8** %12, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  store i8* %57, i8** %19, align 8
  br label %152

58:                                               ; preds = %8
  store i32 0, i32* %20, align 4
  %59 = load i8*, i8** %10, align 8
  store i8* %59, i8** %18, align 8
  %60 = load i8*, i8** %12, align 8
  store i8* %60, i8** %19, align 8
  %61 = load i32*, i32** %14, align 8
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %140, %58
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FAT_LFN_LEN, align 4
  %70 = icmp slt i32 %68, %69
  br label %71

71:                                               ; preds = %66, %62
  %72 = phi i1 [ false, %62 ], [ %70, %66 ]
  br i1 %72, label %73, label %144

73:                                               ; preds = %71
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %113

76:                                               ; preds = %73
  %77 = load i8*, i8** %18, align 8
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 58
  br i1 %80, label %81, label %113

81:                                               ; preds = %76
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %83, 5
  %85 = icmp sgt i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %9, align 4
  br label %196

89:                                               ; preds = %81
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %91 = load i8*, i8** %18, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = call i64 @hex2bin(i32* %90, i8* %92, i32 2)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %9, align 4
  br label %196

98:                                               ; preds = %89
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 8
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %101, %103
  %105 = load i8*, i8** %19, align 8
  %106 = bitcast i8* %105 to i32*
  store i32 %104, i32* %106, align 4
  %107 = load i8*, i8** %19, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  store i8* %108, i8** %19, align 8
  %109 = load i8*, i8** %18, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 5
  store i8* %110, i8** %18, align 8
  %111 = load i32, i32* %20, align 4
  %112 = add nsw i32 %111, 5
  store i32 %112, i32* %20, align 4
  br label %139

113:                                              ; preds = %76, %73
  %114 = load %struct.nls_table*, %struct.nls_table** %17, align 8
  %115 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %114, i32 0, i32 0
  %116 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %115, align 8
  %117 = load i8*, i8** %18, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %20, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i8*, i8** %19, align 8
  %122 = bitcast i8* %121 to i32*
  %123 = call i32 %116(i8* %117, i32 %120, i32* %122)
  store i32 %123, i32* %22, align 4
  %124 = load i32, i32* %22, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %113
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %9, align 4
  br label %196

129:                                              ; preds = %113
  %130 = load i32, i32* %22, align 4
  %131 = load i8*, i8** %18, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8* %133, i8** %18, align 8
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* %20, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %20, align 4
  %137 = load i8*, i8** %19, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  store i8* %138, i8** %19, align 8
  br label %139

139:                                              ; preds = %129, %98
  br label %140

140:                                              ; preds = %139
  %141 = load i32*, i32** %14, align 8
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %62

144:                                              ; preds = %71
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i32, i32* @ENAMETOOLONG, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %9, align 4
  br label %196

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %51
  %153 = load i32*, i32** %14, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %13, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32*, i32** %14, align 8
  %157 = load i32, i32* %156, align 4
  %158 = srem i32 %157, 13
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %195

160:                                              ; preds = %152
  %161 = load i8*, i8** %19, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %19, align 8
  store i8 0, i8* %161, align 1
  %163 = load i8*, i8** %19, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %19, align 8
  store i8 0, i8* %163, align 1
  %165 = load i32*, i32** %14, align 8
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load i32*, i32** %14, align 8
  %169 = load i32, i32* %168, align 4
  %170 = srem i32 %169, 13
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %194

172:                                              ; preds = %160
  %173 = load i32*, i32** %14, align 8
  %174 = load i32, i32* %173, align 4
  %175 = srem i32 %174, 13
  %176 = sub nsw i32 13, %175
  store i32 %176, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %177

177:                                              ; preds = %186, %172
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* %21, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %177
  %182 = load i8*, i8** %19, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %19, align 8
  store i8 -1, i8* %182, align 1
  %184 = load i8*, i8** %19, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %19, align 8
  store i8 -1, i8* %184, align 1
  br label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %20, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %20, align 4
  br label %177

189:                                              ; preds = %177
  %190 = load i32, i32* %21, align 4
  %191 = load i32*, i32** %14, align 8
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, %190
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %189, %160
  br label %195

195:                                              ; preds = %194, %152
  store i32 0, i32* %9, align 4
  br label %196

196:                                              ; preds = %195, %148, %126, %95, %86, %47, %39
  %197 = load i32, i32* %9, align 4
  ret i32 %197
}

declare dso_local i32 @utf8s_to_utf16s(i8*, i32, i32, i32*, i32) #1

declare dso_local i64 @hex2bin(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
