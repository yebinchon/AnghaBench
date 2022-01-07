; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_change_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_change_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.dccp_feat_entry = type { i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64* }

@DCCPO_CHANGE_R = common dso_local global i64 0, align 8
@FEAT_UNKNOWN = common dso_local global i64 0, align 8
@FEAT_NN = common dso_local global i64 0, align 8
@DCCP_RESET_CODE_TOO_BUSY = common dso_local global i64 0, align 8
@DCCPF_CCID = common dso_local global i64 0, align 8
@FEAT_UNSTABLE = common dso_local global i64 0, align 8
@DCCP_RESET_CODE_MANDATORY_ERROR = common dso_local global i64 0, align 8
@FEAT_INITIALISING = common dso_local global i64 0, align 8
@DCCP_RESET_CODE_OPTION_ERROR = common dso_local global i64 0, align 8
@FEAT_STABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.list_head*, i64, i64, i64, i64*, i64, i32)* @dccp_feat_change_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dccp_feat_change_recv(%struct.list_head* %0, i64 %1, i64 %2, i64 %3, i64* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.dccp_feat_entry*, align 8
  %20 = alloca %struct.TYPE_6__, align 8
  store %struct.list_head* %0, %struct.list_head** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load i64, i64* %12, align 8
  %22 = call i64 @dccp_feat_type(i64 %21)
  store i64 %22, i64* %17, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @DCCPO_CHANGE_R, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %18, align 4
  %27 = load i64, i64* %14, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %7
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* @FEAT_UNKNOWN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %7
  br label %194

34:                                               ; preds = %29
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64*, i64** %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @dccp_feat_print_opt(i64 %35, i64 %36, i64* %37, i64 %38, i64 %39)
  %41 = load i64, i64* %17, align 8
  %42 = load i64, i64* @FEAT_NN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %34
  %45 = load i32, i32* %18, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %14, align 8
  %49 = icmp ugt i64 %48, 4
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44
  br label %194

51:                                               ; preds = %47
  %52 = load i64*, i64** %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @dccp_decode_value_var(i64* %52, i64 %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dccp_feat_is_valid_nn_val(i64 %56, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %194

62:                                               ; preds = %51
  %63 = load %struct.list_head*, %struct.list_head** %9, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i32, i32* %18, align 4
  %66 = call i64 @dccp_feat_push_confirm(%struct.list_head* %63, i64 %64, i32 %65, %struct.TYPE_6__* %20)
  store i64 %66, i64* %8, align 8
  br label %212

67:                                               ; preds = %34
  %68 = load %struct.list_head*, %struct.list_head** %9, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i32, i32* %18, align 4
  %71 = call %struct.dccp_feat_entry* @dccp_feat_list_lookup(%struct.list_head* %68, i64 %69, i32 %70)
  store %struct.dccp_feat_entry* %71, %struct.dccp_feat_entry** %19, align 8
  %72 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %19, align 8
  %73 = icmp eq %struct.dccp_feat_entry* %72, null
  br i1 %73, label %74, label %135

74:                                               ; preds = %67
  %75 = load i64*, i64** %13, align 8
  %76 = call i64 @dccp_feat_clone_sp_val(%struct.TYPE_6__* %20, i64* %75, i32 1)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64, i64* @DCCP_RESET_CODE_TOO_BUSY, align 8
  store i64 %79, i64* %8, align 8
  br label %212

80:                                               ; preds = %74
  %81 = load i64, i64* %14, align 8
  %82 = icmp sgt i64 %81, 1
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  %87 = load i64, i64* %12, align 8
  %88 = call i64 @dccp_feat_default_value(i64 %87)
  store i64 %88, i64* %16, align 8
  %89 = load i64*, i64** %13, align 8
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @dccp_feat_preflist_match(i64* %16, i32 1, i64* %89, i64 %90)
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i64, i64* %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  store i64 %94, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %86
  br label %115

100:                                              ; preds = %83, %80
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @dccp_feat_is_valid_sp_val(i64 %101, i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = call i32 @kfree(i64* %112)
  br label %194

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114, %99
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* @DCCPF_CCID, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = call i32 @ccid_support_check(i64* %122, i32 1)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = call i32 @kfree(i64* %128)
  br label %203

130:                                              ; preds = %119, %115
  %131 = load %struct.list_head*, %struct.list_head** %9, align 8
  %132 = load i64, i64* %12, align 8
  %133 = load i32, i32* %18, align 4
  %134 = call i64 @dccp_feat_push_confirm(%struct.list_head* %131, i64 %132, i32 %133, %struct.TYPE_6__* %20)
  store i64 %134, i64* %8, align 8
  br label %212

135:                                              ; preds = %67
  %136 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %19, align 8
  %137 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @FEAT_UNSTABLE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i64 0, i64* %8, align 8
  br label %212

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %19, align 8
  %145 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %144, i32 0, i32 4
  %146 = load i64*, i64** %13, align 8
  %147 = load i64, i64* %14, align 8
  %148 = trunc i64 %147 to i32
  %149 = load i32, i32* %15, align 4
  %150 = call i64 @dccp_feat_reconcile(i32* %145, i64* %146, i32 %148, i32 %149, i32 1)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %19, align 8
  %154 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %153, i32 0, i32 1
  store i32 0, i32* %154, align 8
  br label %186

155:                                              ; preds = %143
  %156 = load i64, i64* %10, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i64, i64* @DCCP_RESET_CODE_MANDATORY_ERROR, align 8
  store i64 %159, i64* %8, align 8
  br label %212

160:                                              ; preds = %155
  %161 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %19, align 8
  %162 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @FEAT_INITIALISING, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %160
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i32 @WARN_ON(i32 %170)
  %172 = load i64, i64* %12, align 8
  %173 = call i64 @dccp_feat_default_value(i64 %172)
  store i64 %173, i64* %16, align 8
  %174 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %19, align 8
  %175 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %174, i32 0, i32 4
  %176 = load i32, i32* %15, align 4
  %177 = call i64 @dccp_feat_reconcile(i32* %175, i64* %16, i32 1, i32 %176, i32 1)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %166
  %180 = load i64, i64* @DCCP_RESET_CODE_OPTION_ERROR, align 8
  store i64 %180, i64* %8, align 8
  br label %212

181:                                              ; preds = %166
  %182 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %19, align 8
  %183 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %182, i32 0, i32 1
  store i32 1, i32* %183, align 8
  br label %184

184:                                              ; preds = %181, %160
  br label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185, %152
  %187 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %19, align 8
  %188 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %187, i32 0, i32 2
  store i32 1, i32* %188, align 4
  %189 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %19, align 8
  %190 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %189, i32 0, i32 3
  store i32 0, i32* %190, align 8
  %191 = load i64, i64* @FEAT_STABLE, align 8
  %192 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %19, align 8
  %193 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  store i64 0, i64* %8, align 8
  br label %212

194:                                              ; preds = %109, %61, %50, %33
  %195 = load i64, i64* %10, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %194
  %198 = load %struct.list_head*, %struct.list_head** %9, align 8
  %199 = load i64, i64* %12, align 8
  %200 = load i32, i32* %18, align 4
  %201 = call i64 @dccp_push_empty_confirm(%struct.list_head* %198, i64 %199, i32 %200)
  store i64 %201, i64* %8, align 8
  br label %212

202:                                              ; preds = %194
  br label %203

203:                                              ; preds = %202, %125
  %204 = load i64, i64* %10, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = load i64, i64* @DCCP_RESET_CODE_MANDATORY_ERROR, align 8
  br label %210

208:                                              ; preds = %203
  %209 = load i64, i64* @DCCP_RESET_CODE_OPTION_ERROR, align 8
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi i64 [ %207, %206 ], [ %209, %208 ]
  store i64 %211, i64* %8, align 8
  br label %212

212:                                              ; preds = %210, %197, %186, %179, %158, %141, %130, %78, %62
  %213 = load i64, i64* %8, align 8
  ret i64 %213
}

declare dso_local i64 @dccp_feat_type(i64) #1

declare dso_local i32 @dccp_feat_print_opt(i64, i64, i64*, i64, i64) #1

declare dso_local i32 @dccp_decode_value_var(i64*, i64) #1

declare dso_local i32 @dccp_feat_is_valid_nn_val(i64, i32) #1

declare dso_local i64 @dccp_feat_push_confirm(%struct.list_head*, i64, i32, %struct.TYPE_6__*) #1

declare dso_local %struct.dccp_feat_entry* @dccp_feat_list_lookup(%struct.list_head*, i64, i32) #1

declare dso_local i64 @dccp_feat_clone_sp_val(%struct.TYPE_6__*, i64*, i32) #1

declare dso_local i64 @dccp_feat_default_value(i64) #1

declare dso_local i32 @dccp_feat_preflist_match(i64*, i32, i64*, i64) #1

declare dso_local i32 @dccp_feat_is_valid_sp_val(i64, i64) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @ccid_support_check(i64*, i32) #1

declare dso_local i64 @dccp_feat_reconcile(i32*, i64*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @dccp_push_empty_confirm(%struct.list_head*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
