; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_expkey_parse.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_expkey_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.auth_domain = type { i32 }
%struct.svc_expkey = type { i32, %struct.TYPE_2__, i32, i32, %struct.auth_domain* }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"found domain %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"found fsidtype %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"found fsid length %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Path seems to be <%s>\0A\00", align 1
@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Found the path %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, i8*, i32)* @expkey_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expkey_parse(%struct.cache_detail* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_detail*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.auth_domain*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.svc_expkey, align 8
  %15 = alloca %struct.svc_expkey*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.auth_domain* null, %struct.auth_domain** %10, align 8
  store %struct.svc_expkey* null, %struct.svc_expkey** %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 10
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %192

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc(i32 %33, i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  br label %174

41:                                               ; preds = %27
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = call i32 @qword_get(i8** %6, i8* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %174

49:                                               ; preds = %41
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = call %struct.auth_domain* @auth_domain_find(i8* %52)
  store %struct.auth_domain* %53, %struct.auth_domain** %10, align 8
  %54 = load %struct.auth_domain*, %struct.auth_domain** %10, align 8
  %55 = icmp ne %struct.auth_domain* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %174

57:                                               ; preds = %49
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = call i32 @qword_get(i8** %6, i8* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %174

67:                                               ; preds = %57
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @simple_strtoul(i8* %68, i8** %13, i32 10)
  store i32 %69, i32* %12, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %174

74:                                               ; preds = %67
  %75 = load i32, i32* %12, align 4
  %76 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @key_len(i32 %77)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %174

81:                                               ; preds = %74
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = call i32 @qword_get(i8** %6, i8* %82, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %174

87:                                               ; preds = %81
  %88 = load i32, i32* %9, align 4
  %89 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @key_len(i32 %91)
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %174

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = call i64 @get_expiry(i8** %6)
  %99 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %174

106:                                              ; preds = %95
  %107 = load %struct.auth_domain*, %struct.auth_domain** %10, align 8
  %108 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 4
  store %struct.auth_domain* %107, %struct.auth_domain** %108, align 8
  %109 = load i32, i32* %12, align 4
  %110 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @memcpy(i32 %112, i8* %113, i32 %114)
  %116 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %117 = call %struct.svc_expkey* @svc_expkey_lookup(%struct.cache_detail* %116, %struct.svc_expkey* %14)
  store %struct.svc_expkey* %117, %struct.svc_expkey** %15, align 8
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %11, align 4
  %120 = load %struct.svc_expkey*, %struct.svc_expkey** %15, align 8
  %121 = icmp ne %struct.svc_expkey* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %106
  br label %174

123:                                              ; preds = %106
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %11, align 4
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* @PAGE_SIZE, align 4
  %128 = call i32 @qword_get(i8** %6, i8* %126, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %174

132:                                              ; preds = %123
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %133)
  store i32 0, i32* %11, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %132
  %138 = load i32, i32* @CACHE_NEGATIVE, align 4
  %139 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = call i32 @set_bit(i32 %138, i64* %140)
  %142 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %143 = load %struct.svc_expkey*, %struct.svc_expkey** %15, align 8
  %144 = call %struct.svc_expkey* @svc_expkey_update(%struct.cache_detail* %142, %struct.svc_expkey* %14, %struct.svc_expkey* %143)
  store %struct.svc_expkey* %144, %struct.svc_expkey** %15, align 8
  %145 = load %struct.svc_expkey*, %struct.svc_expkey** %15, align 8
  %146 = icmp ne %struct.svc_expkey* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %137
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %147, %137
  br label %172

151:                                              ; preds = %132
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 2
  %154 = call i32 @kern_path(i8* %152, i32 0, i32* %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %174

158:                                              ; preds = %151
  %159 = load i8*, i8** %8, align 8
  %160 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %159)
  %161 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %162 = load %struct.svc_expkey*, %struct.svc_expkey** %15, align 8
  %163 = call %struct.svc_expkey* @svc_expkey_update(%struct.cache_detail* %161, %struct.svc_expkey* %14, %struct.svc_expkey* %162)
  store %struct.svc_expkey* %163, %struct.svc_expkey** %15, align 8
  %164 = load %struct.svc_expkey*, %struct.svc_expkey** %15, align 8
  %165 = icmp ne %struct.svc_expkey* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %158
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %11, align 4
  br label %169

169:                                              ; preds = %166, %158
  %170 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 2
  %171 = call i32 @path_put(i32* %170)
  br label %172

172:                                              ; preds = %169, %150
  %173 = call i32 (...) @cache_flush()
  br label %174

174:                                              ; preds = %172, %157, %131, %122, %105, %94, %86, %80, %73, %66, %56, %48, %40
  %175 = load %struct.svc_expkey*, %struct.svc_expkey** %15, align 8
  %176 = icmp ne %struct.svc_expkey* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load %struct.svc_expkey*, %struct.svc_expkey** %15, align 8
  %179 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %178, i32 0, i32 1
  %180 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %181 = call i32 @cache_put(%struct.TYPE_2__* %179, %struct.cache_detail* %180)
  br label %182

182:                                              ; preds = %177, %174
  %183 = load %struct.auth_domain*, %struct.auth_domain** %10, align 8
  %184 = icmp ne %struct.auth_domain* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load %struct.auth_domain*, %struct.auth_domain** %10, align 8
  %187 = call i32 @auth_domain_put(%struct.auth_domain* %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i8*, i8** %8, align 8
  %190 = call i32 @kfree(i8* %189)
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %188, %24
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @qword_get(i8**, i8*, i32) #1

declare dso_local %struct.auth_domain* @auth_domain_find(i8*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @key_len(i32) #1

declare dso_local i64 @get_expiry(i8**) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local %struct.svc_expkey* @svc_expkey_lookup(%struct.cache_detail*, %struct.svc_expkey*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local %struct.svc_expkey* @svc_expkey_update(%struct.cache_detail*, %struct.svc_expkey*, %struct.svc_expkey*) #1

declare dso_local i32 @kern_path(i8*, i32, i32*) #1

declare dso_local i32 @path_put(i32*) #1

declare dso_local i32 @cache_flush(...) #1

declare dso_local i32 @cache_put(%struct.TYPE_2__*, %struct.cache_detail*) #1

declare dso_local i32 @auth_domain_put(%struct.auth_domain*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
