; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_ext_setup_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_ext_setup_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_ext = type { i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.btf_ext_sec_setup_param = type { i64, i32, i32, %struct.btf_ext_info*, i32 }
%struct.btf_ext_info = type { i32, i32, i8* }
%struct.btf_ext_info_sec = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c".BTF.ext %s section is not aligned to 4 bytes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"%s section (off:%u len:%u) is beyond the end of the ELF section .BTF.ext\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c".BTF.ext %s record size not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%s section in .BTF.ext has invalid record size %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s section in .BTF.ext has no records\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"%s section header is not found in .BTF.ext\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"%s section has incorrect num_records in .BTF.ext\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_ext*, %struct.btf_ext_sec_setup_param*)* @btf_ext_setup_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_ext_setup_info(%struct.btf_ext* %0, %struct.btf_ext_sec_setup_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_ext*, align 8
  %5 = alloca %struct.btf_ext_sec_setup_param*, align 8
  %6 = alloca %struct.btf_ext_info_sec*, align 8
  %7 = alloca %struct.btf_ext_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.btf_ext* %0, %struct.btf_ext** %4, align 8
  store %struct.btf_ext_sec_setup_param* %1, %struct.btf_ext_sec_setup_param** %5, align 8
  %14 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %15 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %200

19:                                               ; preds = %2
  %20 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %21 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 3
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %27 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %200

32:                                               ; preds = %19
  %33 = load %struct.btf_ext*, %struct.btf_ext** %4, align 8
  %34 = getelementptr inbounds %struct.btf_ext, %struct.btf_ext* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.btf_ext*, %struct.btf_ext** %4, align 8
  %37 = getelementptr inbounds %struct.btf_ext, %struct.btf_ext* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %35, i64 %41
  %43 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %44 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %42, i64 %46
  store i8* %47, i8** %10, align 8
  %48 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %49 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load %struct.btf_ext*, %struct.btf_ext** %4, align 8
  %53 = getelementptr inbounds %struct.btf_ext, %struct.btf_ext* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.btf_ext*, %struct.btf_ext** %4, align 8
  %56 = getelementptr inbounds %struct.btf_ext, %struct.btf_ext* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr i8, i8* %54, i64 %58
  %60 = load i8*, i8** %10, align 8
  %61 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %62 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr i8, i8* %60, i64 %63
  %65 = icmp ult i8* %59, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %32
  %67 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %68 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %71 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %74 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %72, i64 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %200

79:                                               ; preds = %32
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ult i64 %81, 4
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %85 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %200

90:                                               ; preds = %79
  %91 = load i8*, i8** %10, align 8
  %92 = bitcast i8* %91 to i32*
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %96 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, 3
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99, %90
  %104 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %105 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %200

111:                                              ; preds = %99
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr i8, i8* %112, i64 4
  %114 = bitcast i8* %113 to %struct.btf_ext_info_sec*
  store %struct.btf_ext_info_sec* %114, %struct.btf_ext_info_sec** %6, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = sub i64 %116, 4
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %111
  %122 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %123 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %200

128:                                              ; preds = %111
  br label %129

129:                                              ; preds = %172, %128
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %182

132:                                              ; preds = %129
  store i32 4, i32* %11, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %138 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %200

143:                                              ; preds = %132
  %144 = load %struct.btf_ext_info_sec*, %struct.btf_ext_info_sec** %6, align 8
  %145 = getelementptr inbounds %struct.btf_ext_info_sec, %struct.btf_ext_info_sec* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %151 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %200

156:                                              ; preds = %143
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %9, align 4
  %160 = mul nsw i32 %158, %159
  %161 = add i32 %157, %160
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %156
  %166 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %167 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %200

172:                                              ; preds = %156
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %8, align 4
  %175 = sub nsw i32 %174, %173
  store i32 %175, i32* %8, align 4
  %176 = load %struct.btf_ext_info_sec*, %struct.btf_ext_info_sec** %6, align 8
  %177 = bitcast %struct.btf_ext_info_sec* %176 to i8*
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr i8, i8* %177, i64 %179
  %181 = bitcast i8* %180 to %struct.btf_ext_info_sec*
  store %struct.btf_ext_info_sec* %181, %struct.btf_ext_info_sec** %6, align 8
  br label %129

182:                                              ; preds = %129
  %183 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %184 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %183, i32 0, i32 3
  %185 = load %struct.btf_ext_info*, %struct.btf_ext_info** %184, align 8
  store %struct.btf_ext_info* %185, %struct.btf_ext_info** %7, align 8
  %186 = load %struct.btf_ext_sec_setup_param*, %struct.btf_ext_sec_setup_param** %5, align 8
  %187 = getelementptr inbounds %struct.btf_ext_sec_setup_param, %struct.btf_ext_sec_setup_param* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = sub i64 %188, 4
  %190 = trunc i64 %189 to i32
  %191 = load %struct.btf_ext_info*, %struct.btf_ext_info** %7, align 8
  %192 = getelementptr inbounds %struct.btf_ext_info, %struct.btf_ext_info* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.btf_ext_info*, %struct.btf_ext_info** %7, align 8
  %195 = getelementptr inbounds %struct.btf_ext_info, %struct.btf_ext_info* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load i8*, i8** %10, align 8
  %197 = getelementptr i8, i8* %196, i64 4
  %198 = load %struct.btf_ext_info*, %struct.btf_ext_info** %7, align 8
  %199 = getelementptr inbounds %struct.btf_ext_info, %struct.btf_ext_info* %198, i32 0, i32 2
  store i8* %197, i8** %199, align 8
  store i32 0, i32* %3, align 4
  br label %200

200:                                              ; preds = %182, %165, %149, %136, %121, %103, %83, %66, %25, %18
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
