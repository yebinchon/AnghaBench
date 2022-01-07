; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, i32, i32* }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@p9_proto_2000L = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to allocate copy of option string\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"integer field, but no integer?\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"msize should be at least 4k\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"problem allocating copy of trans arg\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Could not find request transport: %s\0A\00", align 1
@p9_proto_legacy = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"problem allocating copy of version arg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.p9_client*)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opts(i8* %0, %struct.p9_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.p9_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.p9_client* %1, %struct.p9_client** %5, align 8
  %17 = load i32, i32* @MAX_OPT_ARGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* @p9_proto_2000L, align 4
  %22 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %23 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %25 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %24, i32 0, i32 1
  store i32 8192, i32* %25, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %150

29:                                               ; preds = %2
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kstrdup(i8* %30, i32 %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %37 = call i32 @p9_debug(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %150

40:                                               ; preds = %29
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %136, %135, %67, %60, %49, %40
  %43 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %43, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %137

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %42

50:                                               ; preds = %45
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @tokens, align 4
  %53 = call i32 @match_token(i8* %51, i32 %52, i32* %20)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  switch i32 %54, label %135 [
    i32 130, label %55
    i32 129, label %76
    i32 131, label %107
    i32 128, label %111
  ]

55:                                               ; preds = %50
  %56 = getelementptr inbounds i32, i32* %20, i64 0
  %57 = call i32 @match_int(i32* %56, i32* %11)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %62 = call i32 @p9_debug(i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %13, align 4
  br label %42

64:                                               ; preds = %55
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 4096
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %69 = call i32 @p9_debug(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  br label %42

72:                                               ; preds = %64
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %75 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %136

76:                                               ; preds = %50
  %77 = getelementptr inbounds i32, i32* %20, i64 0
  %78 = call i8* @match_strdup(i32* %77)
  store i8* %78, i8** %12, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %85 = call i32 @p9_debug(i32 %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %138

86:                                               ; preds = %76
  %87 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %88 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @v9fs_put_trans(i32* %89)
  %91 = load i8*, i8** %12, align 8
  %92 = call i32* @v9fs_get_trans_by_name(i8* %91)
  %93 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %94 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %93, i32 0, i32 2
  store i32* %92, i32** %94, align 8
  %95 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %96 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %86
  %100 = load i8*, i8** %12, align 8
  %101 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %99, %86
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @kfree(i8* %105)
  br label %136

107:                                              ; preds = %50
  %108 = load i32, i32* @p9_proto_legacy, align 4
  %109 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %110 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %136

111:                                              ; preds = %50
  %112 = getelementptr inbounds i32, i32* %20, i64 0
  %113 = call i8* @match_strdup(i32* %112)
  store i8* %113, i8** %12, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %120 = call i32 @p9_debug(i32 %119, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %138

121:                                              ; preds = %111
  %122 = load i8*, i8** %12, align 8
  %123 = call i32 @get_protocol_version(i8* %122)
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %13, align 4
  br label %132

128:                                              ; preds = %121
  %129 = load i32, i32* %16, align 4
  %130 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %131 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %128, %126
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @kfree(i8* %133)
  br label %136

135:                                              ; preds = %50
  br label %42

136:                                              ; preds = %132, %107, %104, %72
  br label %42

137:                                              ; preds = %42
  br label %138

138:                                              ; preds = %137, %116, %81
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %143 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @v9fs_put_trans(i32* %144)
  br label %146

146:                                              ; preds = %141, %138
  %147 = load i8*, i8** %7, align 8
  %148 = call i32 @kfree(i8* %147)
  %149 = load i32, i32* %13, align 4
  store i32 %149, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %150

150:                                              ; preds = %146, %35, %28
  %151 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i32 @p9_debug(i32, i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i8* @match_strdup(i32*) #2

declare dso_local i32 @v9fs_put_trans(i32*) #2

declare dso_local i32* @v9fs_get_trans_by_name(i8*) #2

declare dso_local i32 @pr_info(i8*, i8*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @get_protocol_version(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
