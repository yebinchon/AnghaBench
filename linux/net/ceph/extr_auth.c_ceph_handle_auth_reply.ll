; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth.c_ceph_handle_auth_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth.c_ceph_handle_auth_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i8*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ceph_auth_client*, i32, i8*, i8*)*, i32, i32 (%struct.ceph_auth_client*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"handle_auth_reply %p %p\0A\00", align 1
@bad = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c" result %d '%.*s' gid %llu len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c" set global_id %lld -> %lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"error %d on auth protocol %d init\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"auth method '%s' error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to decode auth msg\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_handle_auth_reply(%struct.ceph_auth_client* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.ceph_auth_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr i8, i8* %23, i64 %24
  store i8* %25, i8** %12, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %21, align 4
  %28 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %29 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %28, i32 0, i32 3
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 (i8*, i8*, i8*, ...) @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32)
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* @bad, align 4
  %36 = call i32 @ceph_decode_need(i8** %11, i8* %34, i32 20, i32 %35)
  %37 = call i8* @ceph_decode_32(i8** %11)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = call i8* @ceph_decode_32(i8** %11)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %14, align 4
  %41 = call i8* @ceph_decode_64(i8** %11)
  store i8* %41, i8** %15, align 8
  %42 = call i8* @ceph_decode_32(i8** %11)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %18, align 4
  %44 = load i8*, i8** %11, align 8
  store i8* %44, i8** %16, align 8
  %45 = load i32, i32* %18, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr i8, i8* %46, i64 %47
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* @bad, align 4
  %51 = call i32 @ceph_decode_need(i8** %11, i8* %49, i32 4, i32 %50)
  %52 = call i8* @ceph_decode_32(i8** %11)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %20, align 4
  %54 = load i8*, i8** %11, align 8
  store i8* %54, i8** %19, align 8
  %55 = load i32, i32* %20, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr i8, i8* %56, i64 %57
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = icmp ne i8* %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %5
  br label %189

63:                                               ; preds = %5
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load i32, i32* %20, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load i8*, i8** %19, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = load i32, i32* %18, align 4
  %73 = call i32 (i8*, i8*, i8*, ...) @dout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %66, i8* %69, i8* %70, i8* %71, i32 %72)
  %74 = load i8*, i8** %16, align 8
  %75 = load i32, i32* %18, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %74, i64 %76
  store i8* %77, i8** %17, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %63
  %81 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %82 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = icmp ne i8* %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %88 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = call i32 (i8*, i8*, i8*, ...) @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %89, i8* %90)
  %92 = load i8*, i8** %15, align 8
  %93 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %94 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %86, %80, %63
  %96 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %97 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %151

100:                                              ; preds = %95
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %14, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %21, align 4
  br label %184

108:                                              ; preds = %103, %100
  %109 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %110 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %108
  %114 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %115 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %121 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %120, i32 0, i32 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32 (%struct.ceph_auth_client*)*, i32 (%struct.ceph_auth_client*)** %123, align 8
  %125 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %126 = call i32 %124(%struct.ceph_auth_client* %125)
  %127 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %128 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %127, i32 0, i32 2
  store i32 0, i32* %128, align 4
  %129 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %130 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %129, i32 0, i32 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %130, align 8
  br label %131

131:                                              ; preds = %119, %113, %108
  %132 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %133 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %131
  %138 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @ceph_auth_init_protocol(%struct.ceph_auth_client* %138, i32 %139)
  store i32 %140, i32* %21, align 4
  %141 = load i32, i32* %21, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load i32, i32* %21, align 4
  %145 = load i32, i32* %13, align 4
  %146 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %144, i32 %145)
  br label %184

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147, %131
  %149 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %150 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %149, i32 0, i32 1
  store i32 0, i32* %150, align 8
  br label %151

151:                                              ; preds = %148, %95
  %152 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %153 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %152, i32 0, i32 4
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32 (%struct.ceph_auth_client*, i32, i8*, i8*)*, i32 (%struct.ceph_auth_client*, i32, i8*, i8*)** %155, align 8
  %157 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %158 = load i32, i32* %14, align 4
  %159 = load i8*, i8** %16, align 8
  %160 = load i8*, i8** %17, align 8
  %161 = call i32 %156(%struct.ceph_auth_client* %157, i32 %158, i8* %159, i8* %160)
  store i32 %161, i32* %21, align 4
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* @EAGAIN, align 4
  %164 = sub nsw i32 0, %163
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %151
  %167 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @ceph_build_auth_request(%struct.ceph_auth_client* %167, i8* %168, i64 %169)
  store i32 %170, i32* %21, align 4
  br label %183

171:                                              ; preds = %151
  %172 = load i32, i32* %21, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %176 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %175, i32 0, i32 4
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %21, align 4
  %181 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %174, %171
  br label %183

183:                                              ; preds = %182, %166
  br label %184

184:                                              ; preds = %189, %183, %143, %106
  %185 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %186 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %185, i32 0, i32 3
  %187 = call i32 @mutex_unlock(i32* %186)
  %188 = load i32, i32* %21, align 4
  ret i32 %188

189:                                              ; preds = %62
  %190 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %21, align 4
  br label %184
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dout(i8*, i8*, i8*, ...) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i8* @ceph_decode_32(i8**) #1

declare dso_local i8* @ceph_decode_64(i8**) #1

declare dso_local i32 @ceph_auth_init_protocol(%struct.ceph_auth_client*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ceph_build_auth_request(%struct.ceph_auth_client*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
