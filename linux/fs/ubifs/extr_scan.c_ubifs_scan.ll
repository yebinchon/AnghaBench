; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_scan.c_ubifs_scan.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_scan.c_ubifs_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_scan_leb = type { i32 }
%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_ch = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"look at LEB %d:%d (%d bytes left)\00", align 1
@SCANNED_EMPTY_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"bad node\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"empty space starts at non-aligned offset %d\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"corrupt empty space at LEB %d:%d\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"LEB %d scanning failed\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"LEB %d scanning failed, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_scan_leb* @ubifs_scan(%struct.ubifs_info* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ubifs_scan_leb*, align 8
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_scan_leb*, align 8
  %16 = alloca %struct.ubifs_ch*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %19, i64 %21
  store i8* %22, i8** %12, align 8
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %14, align 4
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = call %struct.ubifs_scan_leb* @ubifs_start_scan(%struct.ubifs_info* %28, i32 %29, i32 %30, i8* %31)
  store %struct.ubifs_scan_leb* %32, %struct.ubifs_scan_leb** %15, align 8
  %33 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %15, align 8
  %34 = call i64 @IS_ERR(%struct.ubifs_scan_leb* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %15, align 8
  store %struct.ubifs_scan_leb* %37, %struct.ubifs_scan_leb** %6, align 8
  br label %208

38:                                               ; preds = %5
  br label %39

39:                                               ; preds = %98, %59, %38
  %40 = load i32, i32* %14, align 4
  %41 = icmp sge i32 %40, 8
  br i1 %41, label %42, label %114

42:                                               ; preds = %39
  %43 = load i8*, i8** %12, align 8
  %44 = bitcast i8* %43 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %44, %struct.ubifs_ch** %16, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @dbg_scan(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = call i32 (...) @cond_resched()
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ubifs_scan_a_node(%struct.ubifs_info* %50, i8* %51, i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %42
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr i8, i8* %64, i64 %65
  store i8* %66, i8** %12, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %14, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %14, align 4
  br label %39

70:                                               ; preds = %42
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* @SCANNED_EMPTY_SPACE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %114

75:                                               ; preds = %70
  %76 = load i32, i32* %18, align 4
  switch i32 %76, label %84 [
    i32 128, label %77
    i32 129, label %80
    i32 130, label %81
    i32 131, label %81
  ]

77:                                               ; preds = %75
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %79 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %180

80:                                               ; preds = %75
  br label %89

81:                                               ; preds = %75, %75
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %83 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %180

84:                                               ; preds = %75
  %85 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %86 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %13, align 4
  br label %199

89:                                               ; preds = %80
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %91 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %15, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @ubifs_add_snod(%struct.ubifs_info* %90, %struct.ubifs_scan_leb* %91, i8* %92, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %199

98:                                               ; preds = %89
  %99 = load %struct.ubifs_ch*, %struct.ubifs_ch** %16, align 8
  %100 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le32_to_cpu(i32 %101)
  %103 = call i32 @ALIGN(i32 %102, i32 8)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i8*, i8** %12, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr i8, i8* %108, i64 %109
  store i8* %110, i8** %12, align 8
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %14, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %14, align 4
  br label %39

114:                                              ; preds = %74, %39
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %117 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = srem i32 %115, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %114
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %125, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %124, %121
  br label %180

129:                                              ; preds = %114
  %130 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %131 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %15, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @ubifs_end_scan(%struct.ubifs_info* %130, %struct.ubifs_scan_leb* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %145, %129
  %136 = load i32, i32* %14, align 4
  %137 = icmp sgt i32 %136, 4
  br i1 %137, label %138, label %152

138:                                              ; preds = %135
  %139 = load i8*, i8** %12, align 8
  %140 = bitcast i8* %139 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, -1
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %152

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 4
  store i32 %147, i32* %9, align 4
  %148 = load i8*, i8** %12, align 8
  %149 = getelementptr i8, i8* %148, i64 4
  store i8* %149, i8** %12, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sub nsw i32 %150, 4
  store i32 %151, i32* %14, align 4
  br label %135

152:                                              ; preds = %143, %135
  br label %153

153:                                              ; preds = %171, %152
  %154 = load i32, i32* %14, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %178

156:                                              ; preds = %153
  %157 = load i8*, i8** %12, align 8
  %158 = bitcast i8* %157 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 255
  br i1 %160, label %161, label %170

161:                                              ; preds = %156
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %161
  %165 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %9, align 4
  %168 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %161
  br label %180

170:                                              ; preds = %156
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  %174 = load i8*, i8** %12, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %12, align 8
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %14, align 4
  br label %153

178:                                              ; preds = %153
  %179 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %15, align 8
  store %struct.ubifs_scan_leb* %179, %struct.ubifs_scan_leb** %6, align 8
  br label %208

180:                                              ; preds = %169, %128, %81, %77
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %192, label %183

183:                                              ; preds = %180
  %184 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load i8*, i8** %12, align 8
  %188 = call i32 @ubifs_scanned_corruption(%struct.ubifs_info* %184, i32 %185, i32 %186, i8* %187)
  %189 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %189, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %183, %180
  %193 = load i32, i32* @EUCLEAN, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %13, align 4
  %195 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %15, align 8
  %196 = call i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb* %195)
  %197 = load i32, i32* %13, align 4
  %198 = call %struct.ubifs_scan_leb* @ERR_PTR(i32 %197)
  store %struct.ubifs_scan_leb* %198, %struct.ubifs_scan_leb** %6, align 8
  br label %208

199:                                              ; preds = %97, %84
  %200 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %200, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %201, i32 %202)
  %204 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %15, align 8
  %205 = call i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb* %204)
  %206 = load i32, i32* %13, align 4
  %207 = call %struct.ubifs_scan_leb* @ERR_PTR(i32 %206)
  store %struct.ubifs_scan_leb* %207, %struct.ubifs_scan_leb** %6, align 8
  br label %208

208:                                              ; preds = %199, %192, %178, %36
  %209 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %6, align 8
  ret %struct.ubifs_scan_leb* %209
}

declare dso_local %struct.ubifs_scan_leb* @ubifs_start_scan(%struct.ubifs_info*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_scan_leb*) #1

declare dso_local i32 @dbg_scan(i8*, i32, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @ubifs_scan_a_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, ...) #1

declare dso_local i32 @ubifs_add_snod(%struct.ubifs_info*, %struct.ubifs_scan_leb*, i8*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_end_scan(%struct.ubifs_info*, %struct.ubifs_scan_leb*, i32, i32) #1

declare dso_local i32 @ubifs_scanned_corruption(%struct.ubifs_info*, i32, i32, i8*) #1

declare dso_local i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb*) #1

declare dso_local %struct.ubifs_scan_leb* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
