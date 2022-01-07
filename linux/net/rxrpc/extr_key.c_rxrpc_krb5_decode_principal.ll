; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_key.c_rxrpc_krb5_decode_principal.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_key.c_rxrpc_krb5_decode_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_principal = type { i32, i64*, i64** }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c",{%x,%x,%x},%u\00", align 1
@AFSTOKEN_K5_COMPONENTS_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AFSTOKEN_STRING_MAX = common dso_local global i32 0, align 4
@AFSTOKEN_K5_REALM_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/...@%s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" = 0 [toklen=%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_principal*, i32**, i32*)* @rxrpc_krb5_decode_principal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_krb5_decode_principal(%struct.krb5_principal* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.krb5_principal*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.krb5_principal* %0, %struct.krb5_principal** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ule i32 %18, 12
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %253

23:                                               ; preds = %3
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ntohl(i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ntohl(i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ntohl(i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %31, i32 %35, i32 %36)
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %8, align 8
  %40 = load i32, i32* %38, align 4
  %41 = call i32 @ntohl(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub i32 %42, 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ule i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %23
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @AFSTOKEN_K5_COMPONENTS_MAX, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %23
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %253

53:                                               ; preds = %46
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %56 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %58, 1
  %60 = mul i32 %59, 4
  %61 = icmp ule i32 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %253

65:                                               ; preds = %53
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i64** @kcalloc(i32 %66, i32 8, i32 %67)
  %69 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %70 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %69, i32 0, i32 2
  store i64** %68, i64*** %70, align 8
  %71 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %72 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %71, i32 0, i32 2
  %73 = load i64**, i64*** %72, align 8
  %74 = icmp ne i64** %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %65
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %253

78:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %167, %78
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %170

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = icmp ult i32 %84, 4
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %253

89:                                               ; preds = %83
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %8, align 8
  %92 = load i32, i32* %90, align 4
  %93 = call i32 @ntohl(i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %9, align 4
  %95 = sub i32 %94, 4
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ule i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @AFSTOKEN_STRING_MAX, align 4
  %101 = icmp ugt i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98, %89
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %253

105:                                              ; preds = %98
  %106 = load i32, i32* %12, align 4
  %107 = add i32 %106, 3
  %108 = and i32 %107, -4
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ugt i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %253

115:                                              ; preds = %105
  %116 = load i32, i32* %12, align 4
  %117 = add i32 %116, 1
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call i8* @kmalloc(i32 %117, i32 %118)
  %120 = bitcast i8* %119 to i64*
  %121 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %122 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %121, i32 0, i32 2
  %123 = load i64**, i64*** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i64*, i64** %123, i64 %125
  store i64* %120, i64** %126, align 8
  %127 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %128 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %127, i32 0, i32 2
  %129 = load i64**, i64*** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i64*, i64** %129, i64 %131
  %133 = load i64*, i64** %132, align 8
  %134 = icmp ne i64* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %115
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %253

138:                                              ; preds = %115
  %139 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %140 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %139, i32 0, i32 2
  %141 = load i64**, i64*** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i64*, i64** %141, i64 %143
  %145 = load i64*, i64** %144, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @memcpy(i64* %145, i32* %146, i32 %147)
  %149 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %150 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %149, i32 0, i32 2
  %151 = load i64**, i64*** %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i64*, i64** %151, i64 %153
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  store i64 0, i64* %158, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %9, align 4
  %161 = sub i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %13, align 4
  %163 = lshr i32 %162, 2
  %164 = load i32*, i32** %8, align 8
  %165 = zext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32* %166, i32** %8, align 8
  br label %167

167:                                              ; preds = %138
  %168 = load i32, i32* %11, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %79

170:                                              ; preds = %79
  %171 = load i32, i32* %9, align 4
  %172 = icmp ult i32 %171, 4
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %4, align 4
  br label %253

176:                                              ; preds = %170
  %177 = load i32*, i32** %8, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %8, align 8
  %179 = load i32, i32* %177, align 4
  %180 = call i32 @ntohl(i32 %179)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %9, align 4
  %182 = sub i32 %181, 4
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp ule i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %176
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* @AFSTOKEN_K5_REALM_MAX, align 4
  %188 = icmp ugt i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %185, %176
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %4, align 4
  br label %253

192:                                              ; preds = %185
  %193 = load i32, i32* %12, align 4
  %194 = add i32 %193, 3
  %195 = and i32 %194, -4
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp ugt i32 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %192
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %4, align 4
  br label %253

202:                                              ; preds = %192
  %203 = load i32, i32* %12, align 4
  %204 = add i32 %203, 1
  %205 = load i32, i32* @GFP_KERNEL, align 4
  %206 = call i8* @kmalloc(i32 %204, i32 %205)
  %207 = bitcast i8* %206 to i64*
  %208 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %209 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %208, i32 0, i32 1
  store i64* %207, i64** %209, align 8
  %210 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %211 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %210, i32 0, i32 1
  %212 = load i64*, i64** %211, align 8
  %213 = icmp ne i64* %212, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %202
  %215 = load i32, i32* @ENOMEM, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %4, align 4
  br label %253

217:                                              ; preds = %202
  %218 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %219 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %218, i32 0, i32 1
  %220 = load i64*, i64** %219, align 8
  %221 = load i32*, i32** %8, align 8
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @memcpy(i64* %220, i32* %221, i32 %222)
  %224 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %225 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %224, i32 0, i32 1
  %226 = load i64*, i64** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  store i64 0, i64* %229, align 8
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* %9, align 4
  %232 = sub i32 %231, %230
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* %13, align 4
  %234 = lshr i32 %233, 2
  %235 = load i32*, i32** %8, align 8
  %236 = zext i32 %234 to i64
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  store i32* %237, i32** %8, align 8
  %238 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %239 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %238, i32 0, i32 2
  %240 = load i64**, i64*** %239, align 8
  %241 = getelementptr inbounds i64*, i64** %240, i64 0
  %242 = load i64*, i64** %241, align 8
  %243 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %244 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %243, i32 0, i32 1
  %245 = load i64*, i64** %244, align 8
  %246 = call i32 @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64* %242, i64* %245)
  %247 = load i32*, i32** %8, align 8
  %248 = load i32**, i32*** %6, align 8
  store i32* %247, i32** %248, align 8
  %249 = load i32, i32* %9, align 4
  %250 = load i32*, i32** %7, align 8
  store i32 %249, i32* %250, align 4
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @_leave(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %251)
  store i32 0, i32* %4, align 4
  br label %253

253:                                              ; preds = %217, %214, %199, %189, %173, %135, %112, %102, %86, %75, %62, %50, %20
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64** @kcalloc(i32, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @_debug(i8*, i64*, i64*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
