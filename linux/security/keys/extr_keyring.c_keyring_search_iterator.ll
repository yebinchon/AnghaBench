; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_search_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_search_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyring_search_context = type { i32, i32, i64, i32, i8*, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.key*, %struct.TYPE_4__*)* }
%struct.key = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.key.0 = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%d}\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" = 0 [!type]\00", align 1
@KEYRING_SEARCH_DO_STATE_CHECK = common dso_local global i32 0, align 4
@KEY_FLAG_INVALIDATED = common dso_local global i32 0, align 4
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@EKEYREVOKED = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [15 x i8] c" = %d [invrev]\00", align 1
@KEYRING_SEARCH_SKIP_EXPIRED = common dso_local global i32 0, align 4
@EKEYEXPIRED = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [15 x i8] c" = %d [expire]\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" = 0 [!match]\00", align 1
@KEYRING_SEARCH_NO_CHECK_PERM = common dso_local global i32 0, align 4
@KEY_NEED_SEARCH = common dso_local global i32 0, align 4
@EACCES = common dso_local global i16 0, align 2
@.str.5 = private unnamed_addr constant [14 x i8] c" = %d [!perm]\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" = %d [neg]\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c" = 1 [found]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @keyring_search_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyring_search_iterator(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.keyring_search_context*, align 8
  %7 = alloca %struct.key.0*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.keyring_search_context*
  store %struct.keyring_search_context* %12, %struct.keyring_search_context** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.key.0* @keyring_ptr_to_key(i8* %13)
  store %struct.key.0* %14, %struct.key.0** %7, align 8
  %15 = load %struct.key.0*, %struct.key.0** %7, align 8
  %16 = getelementptr inbounds %struct.key.0, %struct.key.0* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @READ_ONCE(i32 %17)
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* %8, align 8
  %20 = load %struct.key.0*, %struct.key.0** %7, align 8
  %21 = getelementptr inbounds %struct.key.0, %struct.key.0* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @READ_ONCE(i32 %22)
  %24 = ptrtoint i8* %23 to i16
  store i16 %24, i16* %9, align 2
  %25 = load %struct.key.0*, %struct.key.0** %7, align 8
  %26 = getelementptr inbounds %struct.key.0, %struct.key.0* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kenter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.key.0*, %struct.key.0** %7, align 8
  %30 = getelementptr inbounds %struct.key.0, %struct.key.0* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %33 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %181

39:                                               ; preds = %2
  %40 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %41 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @KEYRING_SEARCH_DO_STATE_CHECK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %103

46:                                               ; preds = %39
  %47 = load %struct.key.0*, %struct.key.0** %7, align 8
  %48 = getelementptr inbounds %struct.key.0, %struct.key.0* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @READ_ONCE(i32 %49)
  %51 = ptrtoint i8* %50 to i64
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* @KEY_FLAG_INVALIDATED, align 4
  %54 = shl i32 1, %53
  %55 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %56 = shl i32 1, %55
  %57 = or i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = and i64 %52, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %46
  %62 = load i16, i16* @EKEYREVOKED, align 2
  %63 = sext i16 %62 to i32
  %64 = sub nsw i32 0, %63
  %65 = trunc i32 %64 to i16
  %66 = call i8* @ERR_PTR(i16 signext %65)
  %67 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %68 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %70 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %177

73:                                               ; preds = %46
  %74 = load i64, i64* %10, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %73
  %77 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %78 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %84 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @KEYRING_SEARCH_SKIP_EXPIRED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %82
  %90 = load i16, i16* @EKEYEXPIRED, align 2
  %91 = sext i16 %90 to i32
  %92 = sub nsw i32 0, %91
  %93 = trunc i32 %92 to i16
  %94 = call i8* @ERR_PTR(i16 signext %93)
  %95 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %96 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %89, %82
  %98 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %99 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %177

102:                                              ; preds = %76, %73
  br label %103

103:                                              ; preds = %102, %39
  %104 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %105 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32 (%struct.key*, %struct.TYPE_4__*)*, i32 (%struct.key*, %struct.TYPE_4__*)** %106, align 8
  %108 = load %struct.key.0*, %struct.key.0** %7, align 8
  %109 = bitcast %struct.key.0* %108 to %struct.key*
  %110 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %111 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %110, i32 0, i32 6
  %112 = call i32 %107(%struct.key* %109, %struct.TYPE_4__* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %103
  %115 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %181

116:                                              ; preds = %103
  %117 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %118 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @KEYRING_SEARCH_NO_CHECK_PERM, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %147, label %123

123:                                              ; preds = %116
  %124 = load %struct.key.0*, %struct.key.0** %7, align 8
  %125 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %126 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @make_key_ref(%struct.key.0* %124, i32 %127)
  %129 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %130 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @KEY_NEED_SEARCH, align 4
  %133 = call i64 @key_task_permission(i8* %128, i32 %131, i32 %132)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %123
  %136 = load i16, i16* @EACCES, align 2
  %137 = sext i16 %136 to i32
  %138 = sub nsw i32 0, %137
  %139 = trunc i32 %138 to i16
  %140 = call i8* @ERR_PTR(i16 signext %139)
  %141 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %142 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %141, i32 0, i32 4
  store i8* %140, i8** %142, align 8
  %143 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %144 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  br label %177

147:                                              ; preds = %123, %116
  %148 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %149 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @KEYRING_SEARCH_DO_STATE_CHECK, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %168

154:                                              ; preds = %147
  %155 = load i16, i16* %9, align 2
  %156 = sext i16 %155 to i32
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = load i16, i16* %9, align 2
  %160 = call i8* @ERR_PTR(i16 signext %159)
  %161 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %162 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  %163 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %164 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %165)
  br label %177

167:                                              ; preds = %154
  br label %168

168:                                              ; preds = %167, %147
  %169 = load %struct.key.0*, %struct.key.0** %7, align 8
  %170 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %171 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @make_key_ref(%struct.key.0* %169, i32 %172)
  %174 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %175 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %174, i32 0, i32 4
  store i8* %173, i8** %175, align 8
  %176 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %181

177:                                              ; preds = %158, %135, %97, %61
  %178 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %179 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %177, %168, %114, %37
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.key.0* @keyring_ptr_to_key(i8*) #1

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i32 @kenter(i8*, i32) #1

declare dso_local i32 @kleave(i8*, ...) #1

declare dso_local i8* @ERR_PTR(i16 signext) #1

declare dso_local i64 @key_task_permission(i8*, i32, i32) #1

declare dso_local i8* @make_key_ref(%struct.key.0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
