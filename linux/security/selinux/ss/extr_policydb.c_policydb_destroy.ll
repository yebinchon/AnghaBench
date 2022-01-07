; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_policydb_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_policydb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32, i32, i32, i32*, %struct.TYPE_4__, i32, i32, %struct.role_trans*, %struct.role_trans*, %struct.role_trans*, %struct.ocontext**, i32, i32*, %struct.role_trans*, %struct.role_trans*, %struct.role_trans*, i32**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.ocontext = type { %struct.ocontext* }
%struct.role_trans = type { %struct.role_trans*, %struct.ocontext*, %struct.role_trans* }
%struct.TYPE_3__ = type { i32 }
%struct.genfs = type { %struct.genfs*, %struct.ocontext*, %struct.genfs* }
%struct.role_allow = type { %struct.role_allow*, %struct.ocontext*, %struct.role_allow* }

@SYM_NUM = common dso_local global i32 0, align 4
@destroy_f = common dso_local global i32* null, align 8
@OCON_NUM = common dso_local global i32 0, align 4
@OCON_FSUSE = common dso_local global i32 0, align 4
@filenametr_destroy = common dso_local global i32 0, align 4
@range_tr_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @policydb_destroy(%struct.policydb* %0) #0 {
  %2 = alloca %struct.policydb*, align 8
  %3 = alloca %struct.ocontext*, align 8
  %4 = alloca %struct.ocontext*, align 8
  %5 = alloca %struct.genfs*, align 8
  %6 = alloca %struct.genfs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.role_allow*, align 8
  %9 = alloca %struct.role_allow*, align 8
  %10 = alloca %struct.role_trans*, align 8
  %11 = alloca %struct.role_trans*, align 8
  store %struct.policydb* %0, %struct.policydb** %2, align 8
  store %struct.role_allow* null, %struct.role_allow** %9, align 8
  store %struct.role_trans* null, %struct.role_trans** %11, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %41, %1
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SYM_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = call i32 (...) @cond_resched()
  %18 = load %struct.policydb*, %struct.policydb** %2, align 8
  %19 = getelementptr inbounds %struct.policydb, %struct.policydb* %18, i32 0, i32 17
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @destroy_f, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @hashtab_map(i32 %25, i32 %30, i32* null)
  %32 = load %struct.policydb*, %struct.policydb** %2, align 8
  %33 = getelementptr inbounds %struct.policydb, %struct.policydb* %32, i32 0, i32 17
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hashtab_destroy(i32 %39)
  br label %41

41:                                               ; preds = %16
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %12

44:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %58, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SYM_NUM, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load %struct.policydb*, %struct.policydb** %2, align 8
  %51 = getelementptr inbounds %struct.policydb, %struct.policydb* %50, i32 0, i32 16
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @kvfree(i32* %56)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %45

61:                                               ; preds = %45
  %62 = load %struct.policydb*, %struct.policydb** %2, align 8
  %63 = getelementptr inbounds %struct.policydb, %struct.policydb* %62, i32 0, i32 15
  %64 = load %struct.role_trans*, %struct.role_trans** %63, align 8
  %65 = call i32 @kfree(%struct.role_trans* %64)
  %66 = load %struct.policydb*, %struct.policydb** %2, align 8
  %67 = getelementptr inbounds %struct.policydb, %struct.policydb* %66, i32 0, i32 14
  %68 = load %struct.role_trans*, %struct.role_trans** %67, align 8
  %69 = call i32 @kfree(%struct.role_trans* %68)
  %70 = load %struct.policydb*, %struct.policydb** %2, align 8
  %71 = getelementptr inbounds %struct.policydb, %struct.policydb* %70, i32 0, i32 13
  %72 = load %struct.role_trans*, %struct.role_trans** %71, align 8
  %73 = call i32 @kfree(%struct.role_trans* %72)
  %74 = load %struct.policydb*, %struct.policydb** %2, align 8
  %75 = getelementptr inbounds %struct.policydb, %struct.policydb* %74, i32 0, i32 12
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @kvfree(i32* %76)
  %78 = load %struct.policydb*, %struct.policydb** %2, align 8
  %79 = getelementptr inbounds %struct.policydb, %struct.policydb* %78, i32 0, i32 11
  %80 = call i32 @avtab_destroy(i32* %79)
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %112, %61
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @OCON_NUM, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %115

85:                                               ; preds = %81
  %86 = call i32 (...) @cond_resched()
  %87 = load %struct.policydb*, %struct.policydb** %2, align 8
  %88 = getelementptr inbounds %struct.policydb, %struct.policydb* %87, i32 0, i32 10
  %89 = load %struct.ocontext**, %struct.ocontext*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %89, i64 %91
  %93 = load %struct.ocontext*, %struct.ocontext** %92, align 8
  store %struct.ocontext* %93, %struct.ocontext** %3, align 8
  br label %94

94:                                               ; preds = %97, %85
  %95 = load %struct.ocontext*, %struct.ocontext** %3, align 8
  %96 = icmp ne %struct.ocontext* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load %struct.ocontext*, %struct.ocontext** %3, align 8
  store %struct.ocontext* %98, %struct.ocontext** %4, align 8
  %99 = load %struct.ocontext*, %struct.ocontext** %3, align 8
  %100 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %99, i32 0, i32 0
  %101 = load %struct.ocontext*, %struct.ocontext** %100, align 8
  store %struct.ocontext* %101, %struct.ocontext** %3, align 8
  %102 = load %struct.ocontext*, %struct.ocontext** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @ocontext_destroy(%struct.ocontext* %102, i32 %103)
  br label %94

105:                                              ; preds = %94
  %106 = load %struct.policydb*, %struct.policydb** %2, align 8
  %107 = getelementptr inbounds %struct.policydb, %struct.policydb* %106, i32 0, i32 10
  %108 = load %struct.ocontext**, %struct.ocontext*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %108, i64 %110
  store %struct.ocontext* null, %struct.ocontext** %111, align 8
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %81

115:                                              ; preds = %81
  %116 = load %struct.policydb*, %struct.policydb** %2, align 8
  %117 = getelementptr inbounds %struct.policydb, %struct.policydb* %116, i32 0, i32 9
  %118 = load %struct.role_trans*, %struct.role_trans** %117, align 8
  %119 = bitcast %struct.role_trans* %118 to %struct.genfs*
  store %struct.genfs* %119, %struct.genfs** %5, align 8
  br label %120

120:                                              ; preds = %144, %115
  %121 = load %struct.genfs*, %struct.genfs** %5, align 8
  %122 = icmp ne %struct.genfs* %121, null
  br i1 %122, label %123, label %152

123:                                              ; preds = %120
  %124 = call i32 (...) @cond_resched()
  %125 = load %struct.genfs*, %struct.genfs** %5, align 8
  %126 = getelementptr inbounds %struct.genfs, %struct.genfs* %125, i32 0, i32 2
  %127 = load %struct.genfs*, %struct.genfs** %126, align 8
  %128 = bitcast %struct.genfs* %127 to %struct.role_trans*
  %129 = call i32 @kfree(%struct.role_trans* %128)
  %130 = load %struct.genfs*, %struct.genfs** %5, align 8
  %131 = getelementptr inbounds %struct.genfs, %struct.genfs* %130, i32 0, i32 1
  %132 = load %struct.ocontext*, %struct.ocontext** %131, align 8
  store %struct.ocontext* %132, %struct.ocontext** %3, align 8
  br label %133

133:                                              ; preds = %136, %123
  %134 = load %struct.ocontext*, %struct.ocontext** %3, align 8
  %135 = icmp ne %struct.ocontext* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load %struct.ocontext*, %struct.ocontext** %3, align 8
  store %struct.ocontext* %137, %struct.ocontext** %4, align 8
  %138 = load %struct.ocontext*, %struct.ocontext** %3, align 8
  %139 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %138, i32 0, i32 0
  %140 = load %struct.ocontext*, %struct.ocontext** %139, align 8
  store %struct.ocontext* %140, %struct.ocontext** %3, align 8
  %141 = load %struct.ocontext*, %struct.ocontext** %4, align 8
  %142 = load i32, i32* @OCON_FSUSE, align 4
  %143 = call i32 @ocontext_destroy(%struct.ocontext* %141, i32 %142)
  br label %133

144:                                              ; preds = %133
  %145 = load %struct.genfs*, %struct.genfs** %5, align 8
  store %struct.genfs* %145, %struct.genfs** %6, align 8
  %146 = load %struct.genfs*, %struct.genfs** %5, align 8
  %147 = getelementptr inbounds %struct.genfs, %struct.genfs* %146, i32 0, i32 0
  %148 = load %struct.genfs*, %struct.genfs** %147, align 8
  store %struct.genfs* %148, %struct.genfs** %5, align 8
  %149 = load %struct.genfs*, %struct.genfs** %6, align 8
  %150 = bitcast %struct.genfs* %149 to %struct.role_trans*
  %151 = call i32 @kfree(%struct.role_trans* %150)
  br label %120

152:                                              ; preds = %120
  %153 = load %struct.policydb*, %struct.policydb** %2, align 8
  %154 = getelementptr inbounds %struct.policydb, %struct.policydb* %153, i32 0, i32 9
  store %struct.role_trans* null, %struct.role_trans** %154, align 8
  %155 = load %struct.policydb*, %struct.policydb** %2, align 8
  %156 = call i32 @cond_policydb_destroy(%struct.policydb* %155)
  %157 = load %struct.policydb*, %struct.policydb** %2, align 8
  %158 = getelementptr inbounds %struct.policydb, %struct.policydb* %157, i32 0, i32 8
  %159 = load %struct.role_trans*, %struct.role_trans** %158, align 8
  store %struct.role_trans* %159, %struct.role_trans** %10, align 8
  br label %160

160:                                              ; preds = %168, %152
  %161 = load %struct.role_trans*, %struct.role_trans** %10, align 8
  %162 = icmp ne %struct.role_trans* %161, null
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = call i32 (...) @cond_resched()
  %165 = load %struct.role_trans*, %struct.role_trans** %11, align 8
  %166 = call i32 @kfree(%struct.role_trans* %165)
  %167 = load %struct.role_trans*, %struct.role_trans** %10, align 8
  store %struct.role_trans* %167, %struct.role_trans** %11, align 8
  br label %168

168:                                              ; preds = %163
  %169 = load %struct.role_trans*, %struct.role_trans** %10, align 8
  %170 = getelementptr inbounds %struct.role_trans, %struct.role_trans* %169, i32 0, i32 0
  %171 = load %struct.role_trans*, %struct.role_trans** %170, align 8
  store %struct.role_trans* %171, %struct.role_trans** %10, align 8
  br label %160

172:                                              ; preds = %160
  %173 = load %struct.role_trans*, %struct.role_trans** %11, align 8
  %174 = call i32 @kfree(%struct.role_trans* %173)
  %175 = load %struct.policydb*, %struct.policydb** %2, align 8
  %176 = getelementptr inbounds %struct.policydb, %struct.policydb* %175, i32 0, i32 7
  %177 = load %struct.role_trans*, %struct.role_trans** %176, align 8
  %178 = bitcast %struct.role_trans* %177 to %struct.role_allow*
  store %struct.role_allow* %178, %struct.role_allow** %8, align 8
  br label %179

179:                                              ; preds = %188, %172
  %180 = load %struct.role_allow*, %struct.role_allow** %8, align 8
  %181 = icmp ne %struct.role_allow* %180, null
  br i1 %181, label %182, label %192

182:                                              ; preds = %179
  %183 = call i32 (...) @cond_resched()
  %184 = load %struct.role_allow*, %struct.role_allow** %9, align 8
  %185 = bitcast %struct.role_allow* %184 to %struct.role_trans*
  %186 = call i32 @kfree(%struct.role_trans* %185)
  %187 = load %struct.role_allow*, %struct.role_allow** %8, align 8
  store %struct.role_allow* %187, %struct.role_allow** %9, align 8
  br label %188

188:                                              ; preds = %182
  %189 = load %struct.role_allow*, %struct.role_allow** %8, align 8
  %190 = getelementptr inbounds %struct.role_allow, %struct.role_allow* %189, i32 0, i32 0
  %191 = load %struct.role_allow*, %struct.role_allow** %190, align 8
  store %struct.role_allow* %191, %struct.role_allow** %8, align 8
  br label %179

192:                                              ; preds = %179
  %193 = load %struct.role_allow*, %struct.role_allow** %9, align 8
  %194 = bitcast %struct.role_allow* %193 to %struct.role_trans*
  %195 = call i32 @kfree(%struct.role_trans* %194)
  %196 = load %struct.policydb*, %struct.policydb** %2, align 8
  %197 = getelementptr inbounds %struct.policydb, %struct.policydb* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @filenametr_destroy, align 4
  %200 = call i32 @hashtab_map(i32 %198, i32 %199, i32* null)
  %201 = load %struct.policydb*, %struct.policydb** %2, align 8
  %202 = getelementptr inbounds %struct.policydb, %struct.policydb* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @hashtab_destroy(i32 %203)
  %205 = load %struct.policydb*, %struct.policydb** %2, align 8
  %206 = getelementptr inbounds %struct.policydb, %struct.policydb* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @range_tr_destroy, align 4
  %209 = call i32 @hashtab_map(i32 %207, i32 %208, i32* null)
  %210 = load %struct.policydb*, %struct.policydb** %2, align 8
  %211 = getelementptr inbounds %struct.policydb, %struct.policydb* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @hashtab_destroy(i32 %212)
  %214 = load %struct.policydb*, %struct.policydb** %2, align 8
  %215 = getelementptr inbounds %struct.policydb, %struct.policydb* %214, i32 0, i32 3
  %216 = load i32*, i32** %215, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %242

218:                                              ; preds = %192
  store i32 0, i32* %7, align 4
  br label %219

219:                                              ; preds = %234, %218
  %220 = load i32, i32* %7, align 4
  %221 = load %struct.policydb*, %struct.policydb** %2, align 8
  %222 = getelementptr inbounds %struct.policydb, %struct.policydb* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %220, %224
  br i1 %225, label %226, label %237

226:                                              ; preds = %219
  %227 = load %struct.policydb*, %struct.policydb** %2, align 8
  %228 = getelementptr inbounds %struct.policydb, %struct.policydb* %227, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = call i32 @ebitmap_destroy(i32* %232)
  br label %234

234:                                              ; preds = %226
  %235 = load i32, i32* %7, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %7, align 4
  br label %219

237:                                              ; preds = %219
  %238 = load %struct.policydb*, %struct.policydb** %2, align 8
  %239 = getelementptr inbounds %struct.policydb, %struct.policydb* %238, i32 0, i32 3
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @kvfree(i32* %240)
  br label %242

242:                                              ; preds = %237, %192
  %243 = load %struct.policydb*, %struct.policydb** %2, align 8
  %244 = getelementptr inbounds %struct.policydb, %struct.policydb* %243, i32 0, i32 2
  %245 = call i32 @ebitmap_destroy(i32* %244)
  %246 = load %struct.policydb*, %struct.policydb** %2, align 8
  %247 = getelementptr inbounds %struct.policydb, %struct.policydb* %246, i32 0, i32 1
  %248 = call i32 @ebitmap_destroy(i32* %247)
  %249 = load %struct.policydb*, %struct.policydb** %2, align 8
  %250 = getelementptr inbounds %struct.policydb, %struct.policydb* %249, i32 0, i32 0
  %251 = call i32 @ebitmap_destroy(i32* %250)
  ret void
}

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @hashtab_map(i32, i32, i32*) #1

declare dso_local i32 @hashtab_destroy(i32) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @kfree(%struct.role_trans*) #1

declare dso_local i32 @avtab_destroy(i32*) #1

declare dso_local i32 @ocontext_destroy(%struct.ocontext*, i32) #1

declare dso_local i32 @cond_policydb_destroy(%struct.policydb*) #1

declare dso_local i32 @ebitmap_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
