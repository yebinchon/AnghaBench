; ModuleID = '/home/carl/AnghaBench/linux/net/dns_resolver/extr_dns_query.c_dns_query.c'
source_filename = "/home/carl/AnghaBench/linux/net/dns_resolver/extr_dns_query.c_dns_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.key = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.key** }
%struct.user_key_payload = type { i32, i32 }
%struct.cred = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s,%*.*s,%zu,%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"call request_key(,%s,%s)\00", align 1
@dns_resolver_cache = common dso_local global i32 0, align 4
@key_type_dns_resolver = common dso_local global i32 0, align 4
@KEY_FLAG_ROOT_CAN_INVAL = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@dns_key_error = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_query(%struct.net* %0, i8* %1, i8* %2, i64 %3, i8* %4, i8** %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.key*, align 8
  %19 = alloca %struct.user_key_payload*, align 8
  %20 = alloca %struct.cred*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = load i64, i64* %13, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* %13, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i8*, i8** %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @kenter(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %29, i32 %31, i8* %32, i64 %33, i8* %34)
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %8
  %39 = load i64, i64* %13, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %8
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %207

44:                                               ; preds = %38
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @strlen(i8* %48)
  store i64 %49, i64* %21, align 8
  %50 = load i64, i64* %21, align 8
  %51 = icmp ult i64 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %207

55:                                               ; preds = %47
  %56 = load i64, i64* %21, align 8
  %57 = add i64 %56, 1
  %58 = load i64, i64* %22, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %22, align 8
  br label %60

60:                                               ; preds = %55, %44
  %61 = load i64, i64* %13, align 8
  %62 = icmp ult i64 %61, 3
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %13, align 8
  %65 = icmp ugt i64 %64, 255
  br i1 %65, label %66, label %69

66:                                               ; preds = %63, %60
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %207

69:                                               ; preds = %63
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %70, 1
  %72 = load i64, i64* %22, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %22, align 8
  %74 = load i64, i64* %22, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @kmalloc(i64 %74, i32 %75)
  store i8* %76, i8** %23, align 8
  %77 = load i8*, i8** %23, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %69
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  br label %207

82:                                               ; preds = %69
  %83 = load i8*, i8** %23, align 8
  store i8* %83, i8** %24, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i8*, i8** %24, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load i64, i64* %21, align 8
  %90 = call i32 @memcpy(i8* %87, i8* %88, i64 %89)
  %91 = load i64, i64* %21, align 8
  %92 = load i8*, i8** %24, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8* %93, i8** %24, align 8
  %94 = load i8*, i8** %24, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %24, align 8
  store i8 58, i8* %94, align 1
  br label %96

96:                                               ; preds = %86, %82
  %97 = load i8*, i8** %24, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @memcpy(i8* %97, i8* %98, i64 %99)
  %101 = load i64, i64* %13, align 8
  %102 = load i8*, i8** %24, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %103, i8** %24, align 8
  %104 = load i8*, i8** %24, align 8
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %14, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %96
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %108

108:                                              ; preds = %107, %96
  %109 = load i8*, i8** %23, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = call i32 @kdebug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %109, i8* %110)
  %112 = load i32, i32* @dns_resolver_cache, align 4
  %113 = call %struct.cred* @override_creds(i32 %112)
  store %struct.cred* %113, %struct.cred** %20, align 8
  %114 = load i8*, i8** %23, align 8
  %115 = load %struct.net*, %struct.net** %10, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = call %struct.key* @request_key_net(i32* @key_type_dns_resolver, i8* %114, %struct.net* %115, i8* %116)
  store %struct.key* %117, %struct.key** %18, align 8
  %118 = load %struct.cred*, %struct.cred** %20, align 8
  %119 = call i32 @revert_creds(%struct.cred* %118)
  %120 = load i8*, i8** %23, align 8
  %121 = call i32 @kfree(i8* %120)
  %122 = load %struct.key*, %struct.key** %18, align 8
  %123 = call i64 @IS_ERR(%struct.key* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %108
  %126 = load %struct.key*, %struct.key** %18, align 8
  %127 = call i32 @PTR_ERR(%struct.key* %126)
  store i32 %127, i32* %25, align 4
  br label %203

128:                                              ; preds = %108
  %129 = load %struct.key*, %struct.key** %18, align 8
  %130 = getelementptr inbounds %struct.key, %struct.key* %129, i32 0, i32 0
  %131 = call i32 @down_read(i32* %130)
  %132 = load i32, i32* @KEY_FLAG_ROOT_CAN_INVAL, align 4
  %133 = load %struct.key*, %struct.key** %18, align 8
  %134 = getelementptr inbounds %struct.key, %struct.key* %133, i32 0, i32 4
  %135 = call i32 @set_bit(i32 %132, i32* %134)
  %136 = load i32, i32* @KEY_USR_VIEW, align 4
  %137 = load %struct.key*, %struct.key** %18, align 8
  %138 = getelementptr inbounds %struct.key, %struct.key* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load %struct.key*, %struct.key** %18, align 8
  %142 = call i32 @key_validate(%struct.key* %141)
  store i32 %142, i32* %25, align 4
  %143 = load i32, i32* %25, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %128
  br label %191

146:                                              ; preds = %128
  %147 = load %struct.key*, %struct.key** %18, align 8
  %148 = getelementptr inbounds %struct.key, %struct.key* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load %struct.key**, %struct.key*** %149, align 8
  %151 = load i64, i64* @dns_key_error, align 8
  %152 = getelementptr inbounds %struct.key*, %struct.key** %150, i64 %151
  %153 = load %struct.key*, %struct.key** %152, align 8
  %154 = call i32 @PTR_ERR(%struct.key* %153)
  store i32 %154, i32* %25, align 4
  %155 = load i32, i32* %25, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %146
  br label %191

158:                                              ; preds = %146
  %159 = load %struct.key*, %struct.key** %18, align 8
  %160 = call %struct.user_key_payload* @user_key_payload_locked(%struct.key* %159)
  store %struct.user_key_payload* %160, %struct.user_key_payload** %19, align 8
  %161 = load %struct.user_key_payload*, %struct.user_key_payload** %19, align 8
  %162 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %26, align 4
  %164 = load i8**, i8*** %15, align 8
  %165 = icmp ne i8** %164, null
  br i1 %165, label %166, label %181

166:                                              ; preds = %158
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %25, align 4
  %169 = load %struct.user_key_payload*, %struct.user_key_payload** %19, align 8
  %170 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %26, align 4
  %173 = load i32, i32* @GFP_KERNEL, align 4
  %174 = call i8* @kmemdup_nul(i32 %171, i32 %172, i32 %173)
  %175 = load i8**, i8*** %15, align 8
  store i8* %174, i8** %175, align 8
  %176 = load i8**, i8*** %15, align 8
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %166
  br label %191

180:                                              ; preds = %166
  br label %181

181:                                              ; preds = %180, %158
  %182 = load i32*, i32** %16, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load %struct.key*, %struct.key** %18, align 8
  %186 = getelementptr inbounds %struct.key, %struct.key* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %16, align 8
  store i32 %187, i32* %188, align 4
  br label %189

189:                                              ; preds = %184, %181
  %190 = load i32, i32* %26, align 4
  store i32 %190, i32* %25, align 4
  br label %191

191:                                              ; preds = %189, %179, %157, %145
  %192 = load %struct.key*, %struct.key** %18, align 8
  %193 = getelementptr inbounds %struct.key, %struct.key* %192, i32 0, i32 0
  %194 = call i32 @up_read(i32* %193)
  %195 = load i32, i32* %17, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load %struct.key*, %struct.key** %18, align 8
  %199 = call i32 @key_invalidate(%struct.key* %198)
  br label %200

200:                                              ; preds = %197, %191
  %201 = load %struct.key*, %struct.key** %18, align 8
  %202 = call i32 @key_put(%struct.key* %201)
  br label %203

203:                                              ; preds = %200, %125
  %204 = load i32, i32* %25, align 4
  %205 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* %25, align 4
  store i32 %206, i32* %9, align 4
  br label %207

207:                                              ; preds = %203, %79, %66, %52, %41
  %208 = load i32, i32* %9, align 4
  ret i32 %208
}

declare dso_local i32 @kenter(i8*, i8*, i32, i32, i8*, i64, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kdebug(i8*, i8*, i8*) #1

declare dso_local %struct.cred* @override_creds(i32) #1

declare dso_local %struct.key* @request_key_net(i32*, i8*, %struct.net*, i8*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @key_validate(%struct.key*) #1

declare dso_local %struct.user_key_payload* @user_key_payload_locked(%struct.key*) #1

declare dso_local i8* @kmemdup_nul(i32, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @key_invalidate(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @kleave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
