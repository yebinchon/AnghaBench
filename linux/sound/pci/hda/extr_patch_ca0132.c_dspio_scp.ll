; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspio_scp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspio_scp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.scp_msg = type { i8*, i32 }

@SCP_MAX_DATA_WORDS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCP_GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"dspio_scp get but has no buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"dspio_scp bad resp buf len parms\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"dspio_scp: send scp msg failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"reply too long for buf\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"RetLen and HdrLen .NE.\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"NULL reply\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"reply ill-formed or errflag set\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32, i32, i8*, i32, i8*, i32*)* @dspio_scp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspio_scp(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.hda_codec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.scp_msg, align 8
  %22 = alloca %struct.scp_msg, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %20, align 4
  %30 = call i32 @memset(%struct.scp_msg* %21, i32 0, i32 16)
  %31 = call i32 @memset(%struct.scp_msg* %22, i32 0, i32 16)
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %9
  %35 = load i8*, i8** %16, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34, %9
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* @SCP_MAX_DATA_WORDS, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %187

44:                                               ; preds = %37
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @SCP_GET, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i8*, i8** %18, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.hda_codec*, %struct.hda_codec** %11, align 8
  %53 = call i32 @codec_dbg(%struct.hda_codec* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  br label %187

56:                                               ; preds = %48, %44
  %57 = load i8*, i8** %18, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i32*, i32** %19, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32*, i32** %19, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62, %59
  %67 = load %struct.hda_codec*, %struct.hda_codec** %11, align 8
  %68 = call i32 @codec_dbg(%struct.hda_codec* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %187

71:                                               ; preds = %62, %56
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @SCP_GET, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %17, align 4
  %80 = zext i32 %79 to i64
  %81 = udiv i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = call i32 @make_scp_header(i32 %72, i32 %73, i32 %77, i32 %78, i32 0, i32 0, i32 0, i32 %82)
  %84 = getelementptr inbounds %struct.scp_msg, %struct.scp_msg* %21, i32 0, i32 1
  store i32 %83, i32* %84, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %71
  %88 = load i32, i32* %17, align 4
  %89 = icmp ugt i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @min(i32 8, i32 %91)
  store i32 %92, i32* %17, align 4
  %93 = getelementptr inbounds %struct.scp_msg, %struct.scp_msg* %21, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = load i32, i32* %17, align 4
  %97 = call i32 @memcpy(i8* %94, i8* %95, i32 %96)
  br label %98

98:                                               ; preds = %90, %87, %71
  store i32 0, i32* %23, align 4
  %99 = load i32, i32* %17, align 4
  %100 = zext i32 %99 to i64
  %101 = add i64 4, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %24, align 4
  %103 = load %struct.hda_codec*, %struct.hda_codec** %11, align 8
  %104 = bitcast %struct.scp_msg* %21 to i8*
  %105 = load i32, i32* %24, align 4
  %106 = bitcast %struct.scp_msg* %22 to i8*
  %107 = call i32 @dspio_send_scp_message(%struct.hda_codec* %103, i8* %104, i32 %105, i8* %106, i32 16, i32* %23)
  store i32 %107, i32* %20, align 4
  %108 = load i32, i32* %20, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %98
  %111 = load %struct.hda_codec*, %struct.hda_codec** %11, align 8
  %112 = call i32 @codec_dbg(%struct.hda_codec* %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* %20, align 4
  store i32 %113, i32* %10, align 4
  br label %187

114:                                              ; preds = %98
  %115 = getelementptr inbounds %struct.scp_msg, %struct.scp_msg* %21, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @extract_scp_header(i32 %116, i32* null, i32* null, i32* %26, i32* null, i32* null, i32* null, i32* null, i32* null)
  %118 = getelementptr inbounds %struct.scp_msg, %struct.scp_msg* %22, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @extract_scp_header(i32 %119, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %27, i32* %28, i32* %29)
  %121 = load i32, i32* %26, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %114
  store i32 0, i32* %10, align 4
  br label %187

124:                                              ; preds = %114
  %125 = load i32, i32* %27, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %180

127:                                              ; preds = %124
  %128 = load i32, i32* %28, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %180, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %23, align 4
  %132 = zext i32 %131 to i64
  %133 = sub i64 %132, 4
  %134 = udiv i64 %133, 4
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %25, align 4
  %136 = load i32*, i32** %19, align 8
  %137 = load i32, i32* %136, align 4
  %138 = zext i32 %137 to i64
  %139 = load i32, i32* %25, align 4
  %140 = zext i32 %139 to i64
  %141 = mul i64 %140, 4
  %142 = icmp ult i64 %138, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %130
  %144 = load %struct.hda_codec*, %struct.hda_codec** %11, align 8
  %145 = call i32 @codec_dbg(%struct.hda_codec* %144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %10, align 4
  br label %187

148:                                              ; preds = %130
  %149 = load i32, i32* %25, align 4
  %150 = load i32, i32* %29, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load %struct.hda_codec*, %struct.hda_codec** %11, align 8
  %154 = call i32 @codec_dbg(%struct.hda_codec* %153, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %10, align 4
  br label %187

157:                                              ; preds = %148
  %158 = load i8*, i8** %18, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %157
  %161 = load %struct.hda_codec*, %struct.hda_codec** %11, align 8
  %162 = call i32 @codec_dbg(%struct.hda_codec* %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %10, align 4
  br label %187

165:                                              ; preds = %157
  %166 = load i32, i32* %25, align 4
  %167 = zext i32 %166 to i64
  %168 = mul i64 %167, 4
  %169 = trunc i64 %168 to i32
  %170 = load i32*, i32** %19, align 8
  store i32 %169, i32* %170, align 4
  %171 = load i8*, i8** %18, align 8
  %172 = getelementptr inbounds %struct.scp_msg, %struct.scp_msg* %22, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = load i32*, i32** %19, align 8
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @memcpy(i8* %171, i8* %173, i32 %175)
  br label %177

177:                                              ; preds = %165
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178
  br label %185

180:                                              ; preds = %127, %124
  %181 = load %struct.hda_codec*, %struct.hda_codec** %11, align 8
  %182 = call i32 @codec_dbg(%struct.hda_codec* %181, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %183 = load i32, i32* @EIO, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %10, align 4
  br label %187

185:                                              ; preds = %179
  %186 = load i32, i32* %20, align 4
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %185, %180, %160, %152, %143, %123, %110, %66, %51, %41
  %188 = load i32, i32* %10, align 4
  ret i32 %188
}

declare dso_local i32 @memset(%struct.scp_msg*, i32, i32) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i32 @make_scp_header(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @dspio_send_scp_message(%struct.hda_codec*, i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @extract_scp_header(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
