; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_profile = type { i64, i64* }

@.str = private unnamed_addr constant [7 x i8] c"CONFIG\00", align 1
@TOMOYO_MAX_MAC_INDEX = common dso_local global i64 0, align 8
@TOMOYO_MAX_MAC_CATEGORY_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"CONFIG::\00", align 1
@tomoyo_index2category = common dso_local global i64* null, align 8
@tomoyo_category_keywords = common dso_local global i8** null, align 8
@tomoyo_mac_keywords = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"use_default\00", align 1
@TOMOYO_CONFIG_USE_DEFAULT = common dso_local global i64 0, align 8
@tomoyo_mode = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"grant_log\00", align 1
@TOMOYO_CONFIG_WANT_GRANT_LOG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"reject_log\00", align 1
@TOMOYO_CONFIG_WANT_REJECT_LOG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.tomoyo_profile*)* @tomoyo_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_set_mode(i8* %0, i8* %1, %struct.tomoyo_profile* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tomoyo_profile*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.tomoyo_profile* %2, %struct.tomoyo_profile** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* @TOMOYO_MAX_MAC_INDEX, align 8
  %19 = load i64, i64* @TOMOYO_MAX_MAC_CATEGORY_INDEX, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %7, align 8
  %22 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  br label %110

24:                                               ; preds = %3
  %25 = call i64 @tomoyo_str_starts(i8** %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %106

27:                                               ; preds = %24
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %28

28:                                               ; preds = %93, %27
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @TOMOYO_MAX_MAC_INDEX, align 8
  %31 = load i64, i64* @TOMOYO_MAX_MAC_CATEGORY_INDEX, align 8
  %32 = add i64 %30, %31
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %96

34:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @TOMOYO_MAX_MAC_INDEX, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %34
  %39 = load i64*, i64** @tomoyo_index2category, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  %43 = load i8**, i8*** @tomoyo_category_keywords, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @strlen(i8* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @strncmp(i8* %49, i8* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %38
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 58
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 58
  br i1 %71, label %72, label %73

72:                                               ; preds = %63, %54, %38
  br label %93

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %34
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8**, i8*** @tomoyo_mac_keywords, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds i8*, i8** %79, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strcmp(i8* %78, i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  br label %93

86:                                               ; preds = %74
  %87 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %7, align 8
  %88 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %9, align 8
  br label %96

93:                                               ; preds = %85, %72
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %8, align 8
  br label %28

96:                                               ; preds = %86, %28
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* @TOMOYO_MAX_MAC_INDEX, align 8
  %99 = load i64, i64* @TOMOYO_MAX_MAC_CATEGORY_INDEX, align 8
  %100 = add i64 %98, %99
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %190

105:                                              ; preds = %96
  br label %109

106:                                              ; preds = %24
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %190

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109, %17
  %111 = load i8*, i8** %6, align 8
  %112 = call i64 @strstr(i8* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i64, i64* @TOMOYO_CONFIG_USE_DEFAULT, align 8
  store i64 %115, i64* %9, align 8
  br label %167

116:                                              ; preds = %110
  store i64 0, i64* %13, align 8
  br label %117

117:                                              ; preds = %134, %116
  %118 = load i64, i64* %13, align 8
  %119 = icmp ult i64 %118, 4
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load i8*, i8** %6, align 8
  %122 = load i8**, i8*** @tomoyo_mode, align 8
  %123 = load i64, i64* %13, align 8
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @strstr(i8* %121, i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %120
  %129 = load i64, i64* %9, align 8
  %130 = and i64 %129, -8
  %131 = load i64, i64* %13, align 8
  %132 = or i64 %130, %131
  store i64 %132, i64* %9, align 8
  br label %133

133:                                              ; preds = %128, %120
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %13, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %13, align 8
  br label %117

137:                                              ; preds = %117
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* @TOMOYO_CONFIG_USE_DEFAULT, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %166

141:                                              ; preds = %137
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @tomoyo_find_yesno(i8* %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  switch i32 %143, label %153 [
    i32 1, label %144
    i32 0, label %148
  ]

144:                                              ; preds = %141
  %145 = load i64, i64* @TOMOYO_CONFIG_WANT_GRANT_LOG, align 8
  %146 = load i64, i64* %9, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %9, align 8
  br label %153

148:                                              ; preds = %141
  %149 = load i64, i64* @TOMOYO_CONFIG_WANT_GRANT_LOG, align 8
  %150 = xor i64 %149, -1
  %151 = load i64, i64* %9, align 8
  %152 = and i64 %151, %150
  store i64 %152, i64* %9, align 8
  br label %153

153:                                              ; preds = %141, %148, %144
  %154 = load i8*, i8** %6, align 8
  %155 = call i32 @tomoyo_find_yesno(i8* %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  switch i32 %155, label %165 [
    i32 1, label %156
    i32 0, label %160
  ]

156:                                              ; preds = %153
  %157 = load i64, i64* @TOMOYO_CONFIG_WANT_REJECT_LOG, align 8
  %158 = load i64, i64* %9, align 8
  %159 = or i64 %158, %157
  store i64 %159, i64* %9, align 8
  br label %165

160:                                              ; preds = %153
  %161 = load i64, i64* @TOMOYO_CONFIG_WANT_REJECT_LOG, align 8
  %162 = xor i64 %161, -1
  %163 = load i64, i64* %9, align 8
  %164 = and i64 %163, %162
  store i64 %164, i64* %9, align 8
  br label %165

165:                                              ; preds = %153, %160, %156
  br label %166

166:                                              ; preds = %165, %137
  br label %167

167:                                              ; preds = %166, %114
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* @TOMOYO_MAX_MAC_INDEX, align 8
  %170 = load i64, i64* @TOMOYO_MAX_MAC_CATEGORY_INDEX, align 8
  %171 = add i64 %169, %170
  %172 = icmp ult i64 %168, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %167
  %174 = load i64, i64* %9, align 8
  %175 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %7, align 8
  %176 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %175, i32 0, i32 1
  %177 = load i64*, i64** %176, align 8
  %178 = load i64, i64* %8, align 8
  %179 = getelementptr inbounds i64, i64* %177, i64 %178
  store i64 %174, i64* %179, align 8
  br label %189

180:                                              ; preds = %167
  %181 = load i64, i64* %9, align 8
  %182 = load i64, i64* @TOMOYO_CONFIG_USE_DEFAULT, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i64, i64* %9, align 8
  %186 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %7, align 8
  %187 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  br label %188

188:                                              ; preds = %184, %180
  br label %189

189:                                              ; preds = %188, %173
  store i32 0, i32* %4, align 4
  br label %190

190:                                              ; preds = %189, %106, %102
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @tomoyo_str_starts(i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @tomoyo_find_yesno(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
