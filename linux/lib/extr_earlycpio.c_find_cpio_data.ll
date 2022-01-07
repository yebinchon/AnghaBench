; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_earlycpio.c_find_cpio_data.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_earlycpio.c_find_cpio_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio_data = type { i8*, i32, i8*, i32, i32, i32* }

@C_NFIELDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@C_MAGIC = common dso_local global i64 0, align 8
@C_NAMESIZE = common dso_local global i64 0, align 8
@C_FILESIZE = common dso_local global i64 0, align 8
@C_MODE = common dso_local global i64 0, align 8
@MAX_CPIO_FILE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"File %s exceeding MAX_CPIO_FILE_NAME [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_cpio_data(%struct.cpio_data* noalias sret %0, i8* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64* %4, i64** %9, align 8
  %24 = load i32, i32* @C_NFIELDS, align 4
  %25 = mul nsw i32 8, %24
  %26 = sub nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %10, align 8
  %28 = bitcast %struct.cpio_data* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 40, i1 false)
  %29 = bitcast i8* %28 to %struct.cpio_data*
  %30 = getelementptr inbounds %struct.cpio_data, %struct.cpio_data* %29, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %30, align 8
  %31 = load i32, i32* @C_NFIELDS, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %14, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %20, align 8
  %37 = load i8*, i8** %7, align 8
  store i8* %37, i8** %11, align 8
  br label %38

38:                                               ; preds = %198, %46, %5
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %207

42:                                               ; preds = %38
  %43 = load i8*, i8** %11, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  store i8* %48, i8** %11, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %49, 4
  store i64 %50, i64* %8, align 8
  br label %38

51:                                               ; preds = %42
  store i32 6, i32* %22, align 4
  store i32* %34, i32** %16, align 8
  %52 = load i32, i32* @C_NFIELDS, align 4
  store i32 %52, i32* %21, align 4
  br label %53

53:                                               ; preds = %99, %51
  %54 = load i32, i32* %21, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %53
  store i32 0, i32* %17, align 4
  br label %57

57:                                               ; preds = %88, %74, %56
  %58 = load i32, i32* %22, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %22, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %57
  %62 = load i32, i32* %17, align 4
  %63 = shl i32 %62, 4
  store i32 %63, i32* %17, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %11, align 8
  %66 = load i8, i8* %64, align 1
  store i8 %66, i8* %18, align 1
  %67 = load i8, i8* %18, align 1
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %68, 48
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %19, align 1
  %71 = load i8, i8* %19, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp slt i32 %72, 10
  br i1 %73, label %74, label %79

74:                                               ; preds = %61
  %75 = load i8, i8* %19, align 1
  %76 = zext i8 %75 to i32
  %77 = load i32, i32* %17, align 4
  %78 = add i32 %77, %76
  store i32 %78, i32* %17, align 4
  br label %57

79:                                               ; preds = %61
  %80 = load i8, i8* %18, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %81, 32
  %83 = sub nsw i32 %82, 97
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %19, align 1
  %85 = load i8, i8* %19, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp slt i32 %86, 6
  br i1 %87, label %88, label %94

88:                                               ; preds = %79
  %89 = load i8, i8* %19, align 1
  %90 = zext i8 %89 to i32
  %91 = add nsw i32 %90, 10
  %92 = load i32, i32* %17, align 4
  %93 = add i32 %92, %91
  store i32 %93, i32* %17, align 4
  br label %57

94:                                               ; preds = %79
  br label %208

95:                                               ; preds = %57
  %96 = load i32, i32* %17, align 4
  %97 = load i32*, i32** %16, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %16, align 8
  store i32 %96, i32* %97, align 4
  store i32 8, i32* %22, align 4
  br label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %21, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %21, align 4
  br label %53

102:                                              ; preds = %53
  %103 = load i64, i64* @C_MAGIC, align 8
  %104 = getelementptr inbounds i32, i32* %34, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sub i32 %105, 460545
  %107 = icmp ugt i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %208

109:                                              ; preds = %102
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %8, align 8
  %112 = sub i64 %111, %110
  store i64 %112, i64* %8, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = load i64, i64* @C_NAMESIZE, align 8
  %115 = getelementptr inbounds i32, i32* %34, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %113, i64 %117
  %119 = call i8* @PTR_ALIGN(i8* %118, i32 4)
  store i8* %119, i8** %12, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = load i64, i64* @C_FILESIZE, align 8
  %122 = getelementptr inbounds i32, i32* %34, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %120, i64 %124
  %126 = call i8* @PTR_ALIGN(i8* %125, i32 4)
  store i8* %126, i8** %13, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  %131 = icmp ugt i8* %127, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %109
  %133 = load i8*, i8** %12, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = icmp ult i8* %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i8*, i8** %13, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = icmp ult i8* %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %132, %109
  br label %208

141:                                              ; preds = %136
  %142 = load i64, i64* @C_MODE, align 8
  %143 = getelementptr inbounds i32, i32* %34, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 61440
  %146 = icmp eq i32 %145, 32768
  br i1 %146, label %147, label %198

147:                                              ; preds = %141
  %148 = load i64, i64* @C_NAMESIZE, align 8
  %149 = getelementptr inbounds i32, i32* %34, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %20, align 8
  %153 = icmp uge i64 %151, %152
  br i1 %153, label %154, label %198

154:                                              ; preds = %147
  %155 = load i8*, i8** %11, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = load i64, i64* %20, align 8
  %158 = call i32 @memcmp(i8* %155, i8* %156, i64 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %198, label %160

160:                                              ; preds = %154
  %161 = load i64*, i64** %9, align 8
  %162 = icmp ne i64* %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %160
  %164 = load i8*, i8** %13, align 8
  %165 = ptrtoint i8* %164 to i64
  %166 = load i8*, i8** %7, align 8
  %167 = ptrtoint i8* %166 to i64
  %168 = sub nsw i64 %165, %167
  %169 = load i64*, i64** %9, align 8
  store i64 %168, i64* %169, align 8
  br label %170

170:                                              ; preds = %163, %160
  %171 = load i64, i64* @C_NAMESIZE, align 8
  %172 = getelementptr inbounds i32, i32* %34, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = zext i32 %173 to i64
  %175 = load i64, i64* %20, align 8
  %176 = sub i64 %174, %175
  %177 = load i32, i32* @MAX_CPIO_FILE_NAME, align 4
  %178 = zext i32 %177 to i64
  %179 = icmp uge i64 %176, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %170
  %181 = load i8*, i8** %11, align 8
  %182 = load i32, i32* @MAX_CPIO_FILE_NAME, align 4
  %183 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %170
  %185 = getelementptr inbounds %struct.cpio_data, %struct.cpio_data* %0, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load i8*, i8** %11, align 8
  %188 = load i64, i64* %20, align 8
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  %190 = load i32, i32* @MAX_CPIO_FILE_NAME, align 4
  %191 = call i32 @strlcpy(i32 %186, i8* %189, i32 %190)
  %192 = load i8*, i8** %12, align 8
  %193 = getelementptr inbounds %struct.cpio_data, %struct.cpio_data* %0, i32 0, i32 2
  store i8* %192, i8** %193, align 8
  %194 = load i64, i64* @C_FILESIZE, align 8
  %195 = getelementptr inbounds i32, i32* %34, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.cpio_data, %struct.cpio_data* %0, i32 0, i32 1
  store i32 %196, i32* %197, align 8
  store i32 1, i32* %23, align 4
  br label %209

198:                                              ; preds = %154, %147, %141
  %199 = load i8*, i8** %13, align 8
  %200 = load i8*, i8** %11, align 8
  %201 = ptrtoint i8* %199 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = load i64, i64* %8, align 8
  %205 = sub i64 %204, %203
  store i64 %205, i64* %8, align 8
  %206 = load i8*, i8** %13, align 8
  store i8* %206, i8** %11, align 8
  br label %38

207:                                              ; preds = %38
  br label %208

208:                                              ; preds = %207, %140, %108, %94
  store i32 1, i32* %23, align 4
  br label %209

209:                                              ; preds = %208, %184
  %210 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %210)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @PTR_ALIGN(i8*, i32) #3

declare dso_local i32 @memcmp(i8*, i8*, i64) #3

declare dso_local i32 @pr_warn(i8*, i8*, i32) #3

declare dso_local i32 @strlcpy(i32, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
