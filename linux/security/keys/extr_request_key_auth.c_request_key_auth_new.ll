; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_request_key_auth.c_request_key_auth_new.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_request_key_auth.c_request_key_auth_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.key = type { i32, i32 }
%struct.request_key_auth = type { i64, i8*, i8*, i32, %struct.cred*, i32, i32 }
%struct.cred = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.request_key_auth** }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@EKEYREVOKED = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@key_type_request_key_auth = common dso_local global i32 0, align 4
@KEY_POS_VIEW = common dso_local global i32 0, align 4
@KEY_POS_READ = common dso_local global i32 0, align 4
@KEY_POS_SEARCH = common dso_local global i32 0, align 4
@KEY_POS_LINK = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_ALLOC_NOT_IN_QUOTA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c" = {%d,%d}\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"= %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @request_key_auth_new(%struct.key* %0, i8* %1, i8* %2, i64 %3, %struct.key* %4) #0 {
  %6 = alloca %struct.key*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.key*, align 8
  %12 = alloca %struct.request_key_auth*, align 8
  %13 = alloca %struct.request_key_auth*, align 8
  %14 = alloca %struct.cred*, align 8
  %15 = alloca %struct.key*, align 8
  %16 = alloca [20 x i8], align 16
  %17 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.key* %4, %struct.key** %11, align 8
  %18 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %18, %struct.cred** %14, align 8
  store %struct.key* null, %struct.key** %15, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %17, align 4
  %21 = load %struct.key*, %struct.key** %7, align 8
  %22 = getelementptr inbounds %struct.key, %struct.key* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kenter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.request_key_auth* @kzalloc(i32 48, i32 %25)
  store %struct.request_key_auth* %26, %struct.request_key_auth** %12, align 8
  %27 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %28 = icmp ne %struct.request_key_auth* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %5
  br label %174

30:                                               ; preds = %5
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @kmemdup(i8* %31, i64 %32, i32 %33)
  %35 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %36 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %38 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  br label %171

42:                                               ; preds = %30
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %45 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %47 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @strlcpy(i32 %48, i8* %49, i32 4)
  %51 = load %struct.cred*, %struct.cred** %14, align 8
  %52 = getelementptr inbounds %struct.cred, %struct.cred* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %102

55:                                               ; preds = %42
  %56 = load %struct.cred*, %struct.cred** %14, align 8
  %57 = getelementptr inbounds %struct.cred, %struct.cred* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @down_read(i32* %59)
  %61 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %62 = load %struct.cred*, %struct.cred** %14, align 8
  %63 = getelementptr inbounds %struct.cred, %struct.cred* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = call i64 @test_bit(i32 %61, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %55
  %69 = load %struct.cred*, %struct.cred** %14, align 8
  %70 = getelementptr inbounds %struct.cred, %struct.cred* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @up_read(i32* %72)
  %74 = load i32, i32* @EKEYREVOKED, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %17, align 4
  br label %171

76:                                               ; preds = %55
  %77 = load %struct.cred*, %struct.cred** %14, align 8
  %78 = getelementptr inbounds %struct.cred, %struct.cred* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.request_key_auth**, %struct.request_key_auth*** %81, align 8
  %83 = getelementptr inbounds %struct.request_key_auth*, %struct.request_key_auth** %82, i64 0
  %84 = load %struct.request_key_auth*, %struct.request_key_auth** %83, align 8
  store %struct.request_key_auth* %84, %struct.request_key_auth** %13, align 8
  %85 = load %struct.request_key_auth*, %struct.request_key_auth** %13, align 8
  %86 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %85, i32 0, i32 4
  %87 = load %struct.cred*, %struct.cred** %86, align 8
  %88 = call i8* @get_cred(%struct.cred* %87)
  %89 = bitcast i8* %88 to %struct.cred*
  %90 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %91 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %90, i32 0, i32 4
  store %struct.cred* %89, %struct.cred** %91, align 8
  %92 = load %struct.request_key_auth*, %struct.request_key_auth** %13, align 8
  %93 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %96 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.cred*, %struct.cred** %14, align 8
  %98 = getelementptr inbounds %struct.cred, %struct.cred* %97, i32 0, i32 2
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = call i32 @up_read(i32* %100)
  br label %113

102:                                              ; preds = %42
  %103 = load %struct.cred*, %struct.cred** %14, align 8
  %104 = call i8* @get_cred(%struct.cred* %103)
  %105 = bitcast i8* %104 to %struct.cred*
  %106 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %107 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %106, i32 0, i32 4
  store %struct.cred* %105, %struct.cred** %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %112 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %102, %76
  %114 = load %struct.key*, %struct.key** %7, align 8
  %115 = call i8* @key_get(%struct.key* %114)
  %116 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %117 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load %struct.key*, %struct.key** %11, align 8
  %119 = call i8* @key_get(%struct.key* %118)
  %120 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %121 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %123 = load %struct.key*, %struct.key** %7, align 8
  %124 = getelementptr inbounds %struct.key, %struct.key* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @sprintf(i8* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %128 = load %struct.cred*, %struct.cred** %14, align 8
  %129 = getelementptr inbounds %struct.cred, %struct.cred* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.cred*, %struct.cred** %14, align 8
  %132 = getelementptr inbounds %struct.cred, %struct.cred* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.cred*, %struct.cred** %14, align 8
  %135 = load i32, i32* @KEY_POS_VIEW, align 4
  %136 = load i32, i32* @KEY_POS_READ, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @KEY_POS_SEARCH, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @KEY_POS_LINK, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @KEY_USR_VIEW, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @KEY_ALLOC_NOT_IN_QUOTA, align 4
  %145 = call %struct.key* @key_alloc(i32* @key_type_request_key_auth, i8* %127, i32 %130, i32 %133, %struct.cred* %134, i32 %143, i32 %144, i32* null)
  store %struct.key* %145, %struct.key** %15, align 8
  %146 = load %struct.key*, %struct.key** %15, align 8
  %147 = call i64 @IS_ERR(%struct.key* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %113
  %150 = load %struct.key*, %struct.key** %15, align 8
  %151 = call i32 @PTR_ERR(%struct.key* %150)
  store i32 %151, i32* %17, align 4
  br label %171

152:                                              ; preds = %113
  %153 = load %struct.key*, %struct.key** %15, align 8
  %154 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %155 = call i32 @key_instantiate_and_link(%struct.key* %153, %struct.request_key_auth* %154, i32 0, i32* null, i32* null)
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %17, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %168

159:                                              ; preds = %152
  %160 = load %struct.key*, %struct.key** %15, align 8
  %161 = getelementptr inbounds %struct.key, %struct.key* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.key*, %struct.key** %15, align 8
  %164 = getelementptr inbounds %struct.key, %struct.key* %163, i32 0, i32 1
  %165 = call i32 @refcount_read(i32* %164)
  %166 = call i32 (i8*, i32, ...) @kleave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %162, i32 %165)
  %167 = load %struct.key*, %struct.key** %15, align 8
  store %struct.key* %167, %struct.key** %6, align 8
  br label %179

168:                                              ; preds = %158
  %169 = load %struct.key*, %struct.key** %15, align 8
  %170 = call i32 @key_put(%struct.key* %169)
  br label %171

171:                                              ; preds = %168, %149, %68, %41
  %172 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %173 = call i32 @free_request_key_auth(%struct.request_key_auth* %172)
  br label %174

174:                                              ; preds = %171, %29
  %175 = load i32, i32* %17, align 4
  %176 = call i32 (i8*, i32, ...) @kleave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %17, align 4
  %178 = call %struct.key* @ERR_PTR(i32 %177)
  store %struct.key* %178, %struct.key** %6, align 8
  br label %179

179:                                              ; preds = %174, %159
  %180 = load %struct.key*, %struct.key** %6, align 8
  ret %struct.key* %180
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @kenter(i8*, i32) #1

declare dso_local %struct.request_key_auth* @kzalloc(i32, i32) #1

declare dso_local i32 @kmemdup(i8*, i64, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i8* @get_cred(%struct.cred*) #1

declare dso_local i8* @key_get(%struct.key*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.key* @key_alloc(i32*, i8*, i32, i32, %struct.cred*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @key_instantiate_and_link(%struct.key*, %struct.request_key_auth*, i32, i32*, i32*) #1

declare dso_local i32 @kleave(i8*, i32, ...) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @free_request_key_auth(%struct.request_key_auth*) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
