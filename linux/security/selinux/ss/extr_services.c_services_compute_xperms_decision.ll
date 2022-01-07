; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_services_compute_xperms_decision.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_services_compute_xperms_decision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extended_perms_decision = type { i64, %struct.TYPE_12__*, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.avtab_node = type { %struct.TYPE_16__, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_11__ = type { i64 }

@AVTAB_XPERMS_IOCTLFUNCTION = common dso_local global i64 0, align 8
@AVTAB_XPERMS_IOCTLDRIVER = common dso_local global i64 0, align 8
@AVTAB_XPERMS_ALLOWED = common dso_local global i64 0, align 8
@XPERMS_ALLOWED = common dso_local global i32 0, align 4
@AVTAB_XPERMS_AUDITALLOW = common dso_local global i64 0, align 8
@XPERMS_AUDITALLOW = common dso_local global i32 0, align 4
@AVTAB_XPERMS_DONTAUDIT = common dso_local global i64 0, align 8
@XPERMS_DONTAUDIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @services_compute_xperms_decision(%struct.extended_perms_decision* %0, %struct.avtab_node* %1) #0 {
  %3 = alloca %struct.extended_perms_decision*, align 8
  %4 = alloca %struct.avtab_node*, align 8
  %5 = alloca i32, align 4
  store %struct.extended_perms_decision* %0, %struct.extended_perms_decision** %3, align 8
  store %struct.avtab_node* %1, %struct.avtab_node** %4, align 8
  %6 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %7 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AVTAB_XPERMS_IOCTLFUNCTION, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %3, align 8
  %17 = getelementptr inbounds %struct.extended_perms_decision, %struct.extended_perms_decision* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %20 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %18, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %293

28:                                               ; preds = %15
  br label %58

29:                                               ; preds = %2
  %30 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %31 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AVTAB_XPERMS_IOCTLDRIVER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %29
  %40 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %41 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %3, align 8
  %49 = getelementptr inbounds %struct.extended_perms_decision, %struct.extended_perms_decision* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @security_xperm_test(i32* %47, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %39
  br label %293

54:                                               ; preds = %39
  br label %57

55:                                               ; preds = %29
  %56 = call i32 (...) @BUG()
  br label %57

57:                                               ; preds = %55, %54
  br label %58

58:                                               ; preds = %57, %28
  %59 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %60 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AVTAB_XPERMS_ALLOWED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %135

65:                                               ; preds = %58
  %66 = load i32, i32* @XPERMS_ALLOWED, align 4
  %67 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %3, align 8
  %68 = getelementptr inbounds %struct.extended_perms_decision, %struct.extended_perms_decision* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %72 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AVTAB_XPERMS_IOCTLDRIVER, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %65
  %81 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %3, align 8
  %82 = getelementptr inbounds %struct.extended_perms_decision, %struct.extended_perms_decision* %81, i32 0, i32 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @memset(i32* %85, i32 255, i32 8)
  br label %87

87:                                               ; preds = %80, %65
  %88 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %89 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AVTAB_XPERMS_IOCTLFUNCTION, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %134

97:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %130, %97
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %3, align 8
  %101 = getelementptr inbounds %struct.extended_perms_decision, %struct.extended_perms_decision* %100, i32 0, i32 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @ARRAY_SIZE(i32* %104)
  %106 = icmp ult i32 %99, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %98
  %108 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %109 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %3, align 8
  %121 = getelementptr inbounds %struct.extended_perms_decision, %struct.extended_perms_decision* %120, i32 0, i32 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %119
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %107
  %131 = load i32, i32* %5, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %98

133:                                              ; preds = %98
  br label %134

134:                                              ; preds = %133, %87
  br label %293

135:                                              ; preds = %58
  %136 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %137 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @AVTAB_XPERMS_AUDITALLOW, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %212

142:                                              ; preds = %135
  %143 = load i32, i32* @XPERMS_AUDITALLOW, align 4
  %144 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %3, align 8
  %145 = getelementptr inbounds %struct.extended_perms_decision, %struct.extended_perms_decision* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %149 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @AVTAB_XPERMS_IOCTLDRIVER, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %142
  %158 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %3, align 8
  %159 = getelementptr inbounds %struct.extended_perms_decision, %struct.extended_perms_decision* %158, i32 0, i32 3
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @memset(i32* %162, i32 255, i32 8)
  br label %164

164:                                              ; preds = %157, %142
  %165 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %166 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @AVTAB_XPERMS_IOCTLFUNCTION, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %211

174:                                              ; preds = %164
  store i32 0, i32* %5, align 4
  br label %175

175:                                              ; preds = %207, %174
  %176 = load i32, i32* %5, align 4
  %177 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %3, align 8
  %178 = getelementptr inbounds %struct.extended_perms_decision, %struct.extended_perms_decision* %177, i32 0, i32 3
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @ARRAY_SIZE(i32* %181)
  %183 = icmp ult i32 %176, %182
  br i1 %183, label %184, label %210

184:                                              ; preds = %175
  %185 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %186 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %3, align 8
  %198 = getelementptr inbounds %struct.extended_perms_decision, %struct.extended_perms_decision* %197, i32 0, i32 3
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %196
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %184
  %208 = load i32, i32* %5, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %5, align 4
  br label %175

210:                                              ; preds = %175
  br label %211

211:                                              ; preds = %210, %164
  br label %292

212:                                              ; preds = %135
  %213 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %214 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @AVTAB_XPERMS_DONTAUDIT, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %289

219:                                              ; preds = %212
  %220 = load i32, i32* @XPERMS_DONTAUDIT, align 4
  %221 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %3, align 8
  %222 = getelementptr inbounds %struct.extended_perms_decision, %struct.extended_perms_decision* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 8
  %225 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %226 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @AVTAB_XPERMS_IOCTLDRIVER, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %219
  %235 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %3, align 8
  %236 = getelementptr inbounds %struct.extended_perms_decision, %struct.extended_perms_decision* %235, i32 0, i32 1
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 @memset(i32* %239, i32 255, i32 8)
  br label %241

241:                                              ; preds = %234, %219
  %242 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %243 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @AVTAB_XPERMS_IOCTLFUNCTION, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %288

251:                                              ; preds = %241
  store i32 0, i32* %5, align 4
  br label %252

252:                                              ; preds = %284, %251
  %253 = load i32, i32* %5, align 4
  %254 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %3, align 8
  %255 = getelementptr inbounds %struct.extended_perms_decision, %struct.extended_perms_decision* %254, i32 0, i32 1
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @ARRAY_SIZE(i32* %258)
  %260 = icmp ult i32 %253, %259
  br i1 %260, label %261, label %287

261:                                              ; preds = %252
  %262 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %263 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %5, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.extended_perms_decision*, %struct.extended_perms_decision** %3, align 8
  %275 = getelementptr inbounds %struct.extended_perms_decision, %struct.extended_perms_decision* %274, i32 0, i32 1
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %5, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %273
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %261
  %285 = load i32, i32* %5, align 4
  %286 = add i32 %285, 1
  store i32 %286, i32* %5, align 4
  br label %252

287:                                              ; preds = %252
  br label %288

288:                                              ; preds = %287, %241
  br label %291

289:                                              ; preds = %212
  %290 = call i32 (...) @BUG()
  br label %291

291:                                              ; preds = %289, %288
  br label %292

292:                                              ; preds = %291, %211
  br label %293

293:                                              ; preds = %27, %53, %292, %134
  ret void
}

declare dso_local i32 @security_xperm_test(i32*, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
