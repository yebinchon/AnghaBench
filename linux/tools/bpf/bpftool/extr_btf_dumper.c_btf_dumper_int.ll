; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c_btf_dumper_int.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c_btf_dumper_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_type = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%hhu\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%hd\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%hhd\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\22%c\22\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"0x%hhx\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\22\\u00%02hhx\22\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_type*, i8, i8*, i32*, i32)* @btf_dumper_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dumper_int(%struct.btf_type* %0, i8 signext %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.btf_type* %0, %struct.btf_type** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %15 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %14, i64 1
  %16 = bitcast %struct.btf_type* %15 to i32*
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BTF_INT_BITS(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i8, i8* %8, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %5
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @BTF_INT_OFFSET(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %13, align 4
  %30 = call i64 @BITS_PER_BYTE_MASKED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %23, %5
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i8, i8* %8, align 1
  %36 = load i8*, i8** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @btf_dumper_int_bits(i32 %34, i8 signext %35, i8* %36, i32* %37, i32 %38)
  store i32 0, i32* %6, align 4
  br label %199

40:                                               ; preds = %28
  %41 = load i32, i32* %13, align 4
  %42 = icmp eq i32 %41, 128
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32*, i32** %10, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @btf_int128_print(i32* %44, i8* %45, i32 %46)
  store i32 0, i32* %6, align 4
  br label %199

48:                                               ; preds = %40
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @BTF_INT_ENCODING(i32 %50)
  switch i32 %51, label %195 [
    i32 0, label %52
    i32 128, label %106
    i32 129, label %164
    i32 130, label %189
  ]

52:                                               ; preds = %48
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @BTF_INT_BITS(i32 %54)
  %56 = icmp eq i32 %55, 64
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32*, i32** %10, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @jsonw_printf(i32* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %60)
  br label %105

62:                                               ; preds = %52
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @BTF_INT_BITS(i32 %64)
  %66 = icmp eq i32 %65, 32
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32*, i32** %10, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = trunc i32 %71 to i8
  %73 = call i32 @jsonw_printf(i32* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext %72)
  br label %104

74:                                               ; preds = %62
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @BTF_INT_BITS(i32 %76)
  %78 = icmp eq i32 %77, 16
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32*, i32** %10, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @jsonw_printf(i32* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8 signext %82)
  br label %103

84:                                               ; preds = %74
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @BTF_INT_BITS(i32 %86)
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32*, i32** %10, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @jsonw_printf(i32* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8 signext %92)
  br label %102

94:                                               ; preds = %84
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i8, i8* %8, align 1
  %98 = load i8*, i8** %9, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @btf_dumper_int_bits(i32 %96, i8 signext %97, i8* %98, i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %94, %89
  br label %103

103:                                              ; preds = %102, %79
  br label %104

104:                                              ; preds = %103, %67
  br label %105

105:                                              ; preds = %104, %57
  br label %198

106:                                              ; preds = %48
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @BTF_INT_BITS(i32 %108)
  %110 = icmp eq i32 %109, 64
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i32*, i32** %10, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = bitcast i8* %113 to i64*
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i8
  %117 = call i32 @jsonw_printf(i32* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8 signext %116)
  br label %163

118:                                              ; preds = %106
  %119 = load i32*, i32** %12, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @BTF_INT_BITS(i32 %120)
  %122 = icmp eq i32 %121, 32
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i32*, i32** %10, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = bitcast i8* %125 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = trunc i32 %127 to i8
  %129 = call i32 @jsonw_printf(i32* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8 signext %128)
  br label %162

130:                                              ; preds = %118
  %131 = load i32*, i32** %12, align 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @BTF_INT_BITS(i32 %132)
  %134 = icmp eq i32 %133, 16
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i32*, i32** %10, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = bitcast i8* %137 to i16*
  %139 = load i16, i16* %138, align 2
  %140 = trunc i16 %139 to i8
  %141 = call i32 @jsonw_printf(i32* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8 signext %140)
  br label %161

142:                                              ; preds = %130
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @BTF_INT_BITS(i32 %144)
  %146 = icmp eq i32 %145, 8
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i32*, i32** %10, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = load i8, i8* %149, align 1
  %151 = call i32 @jsonw_printf(i32* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8 signext %150)
  br label %160

152:                                              ; preds = %142
  %153 = load i32*, i32** %12, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i8, i8* %8, align 1
  %156 = load i8*, i8** %9, align 8
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @btf_dumper_int_bits(i32 %154, i8 signext %155, i8* %156, i32* %157, i32 %158)
  br label %160

160:                                              ; preds = %152, %147
  br label %161

161:                                              ; preds = %160, %135
  br label %162

162:                                              ; preds = %161, %123
  br label %163

163:                                              ; preds = %162, %111
  br label %198

164:                                              ; preds = %48
  %165 = load i8*, i8** %9, align 8
  %166 = load i8, i8* %165, align 1
  %167 = call i32 @isprint(i8 signext %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load i32*, i32** %10, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = load i8, i8* %171, align 1
  %173 = call i32 @jsonw_printf(i32* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8 signext %172)
  br label %188

174:                                              ; preds = %164
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load i32*, i32** %10, align 8
  %179 = load i8*, i8** %9, align 8
  %180 = load i8, i8* %179, align 1
  %181 = call i32 @jsonw_printf(i32* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8 signext %180)
  br label %187

182:                                              ; preds = %174
  %183 = load i32*, i32** %10, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = load i8, i8* %184, align 1
  %186 = call i32 @jsonw_printf(i32* %183, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8 signext %185)
  br label %187

187:                                              ; preds = %182, %177
  br label %188

188:                                              ; preds = %187, %169
  br label %198

189:                                              ; preds = %48
  %190 = load i32*, i32** %10, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = bitcast i8* %191 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @jsonw_bool(i32* %190, i32 %193)
  br label %198

195:                                              ; preds = %48
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %6, align 4
  br label %199

198:                                              ; preds = %189, %188, %163, %105
  store i32 0, i32* %6, align 4
  br label %199

199:                                              ; preds = %198, %195, %43, %32
  %200 = load i32, i32* %6, align 4
  ret i32 %200
}

declare dso_local i32 @BTF_INT_BITS(i32) #1

declare dso_local i64 @BTF_INT_OFFSET(i32) #1

declare dso_local i64 @BITS_PER_BYTE_MASKED(i32) #1

declare dso_local i32 @btf_dumper_int_bits(i32, i8 signext, i8*, i32*, i32) #1

declare dso_local i32 @btf_int128_print(i32*, i8*, i32) #1

declare dso_local i32 @BTF_INT_ENCODING(i32) #1

declare dso_local i32 @jsonw_printf(i32*, i8*, i8 signext) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @jsonw_bool(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
