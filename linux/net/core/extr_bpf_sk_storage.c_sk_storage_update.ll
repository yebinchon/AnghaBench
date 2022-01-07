; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_sk_storage_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_sk_storage_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sk_storage_data = type { i32 }
%struct.sock = type { i32, i32 }
%struct.bpf_map = type { i32 }
%struct.bpf_sk_storage_elem = type { i32 }
%struct.bpf_sk_storage = type { i32, i32 }
%struct.bpf_sk_storage_map = type { i32 }

@BPF_F_LOCK = common dso_local global i32 0, align 4
@BPF_EXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BPF_NOEXIST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_sk_storage_data* (%struct.sock*, %struct.bpf_map*, i8*, i32)* @sk_storage_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_sk_storage_data* @sk_storage_update(%struct.sock* %0, %struct.bpf_map* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.bpf_sk_storage_data*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.bpf_map*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_sk_storage_data*, align 8
  %11 = alloca %struct.bpf_sk_storage_elem*, align 8
  %12 = alloca %struct.bpf_sk_storage*, align 8
  %13 = alloca %struct.bpf_sk_storage_map*, align 8
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.bpf_map* %1, %struct.bpf_map** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.bpf_sk_storage_data* null, %struct.bpf_sk_storage_data** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @BPF_F_LOCK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load i32, i32* @BPF_EXIST, align 4
  %20 = icmp sgt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @BPF_F_LOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %31 = call i32 @map_value_has_spin_lock(%struct.bpf_map* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ false, %24 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34, %4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.bpf_sk_storage_data* @ERR_PTR(i32 %41)
  store %struct.bpf_sk_storage_data* %42, %struct.bpf_sk_storage_data** %5, align 8
  br label %219

43:                                               ; preds = %34
  %44 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %45 = bitcast %struct.bpf_map* %44 to %struct.bpf_sk_storage_map*
  store %struct.bpf_sk_storage_map* %45, %struct.bpf_sk_storage_map** %13, align 8
  %46 = load %struct.sock*, %struct.sock** %6, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.bpf_sk_storage* @rcu_dereference(i32 %48)
  store %struct.bpf_sk_storage* %49, %struct.bpf_sk_storage** %12, align 8
  %50 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %12, align 8
  %51 = icmp ne %struct.bpf_sk_storage* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %12, align 8
  %54 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %53, i32 0, i32 1
  %55 = call i32 @hlist_empty(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %97

57:                                               ; preds = %52, %43
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @check_flags(%struct.bpf_sk_storage_data* null, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %14, align 4
  %64 = call %struct.bpf_sk_storage_data* @ERR_PTR(i32 %63)
  store %struct.bpf_sk_storage_data* %64, %struct.bpf_sk_storage_data** %5, align 8
  br label %219

65:                                               ; preds = %57
  %66 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %13, align 8
  %67 = load %struct.sock*, %struct.sock** %6, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call %struct.bpf_sk_storage_elem* @selem_alloc(%struct.bpf_sk_storage_map* %66, %struct.sock* %67, i8* %68, i32 1)
  store %struct.bpf_sk_storage_elem* %69, %struct.bpf_sk_storage_elem** %11, align 8
  %70 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %11, align 8
  %71 = icmp ne %struct.bpf_sk_storage_elem* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.bpf_sk_storage_data* @ERR_PTR(i32 %74)
  store %struct.bpf_sk_storage_data* %75, %struct.bpf_sk_storage_data** %5, align 8
  br label %219

76:                                               ; preds = %65
  %77 = load %struct.sock*, %struct.sock** %6, align 8
  %78 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %13, align 8
  %79 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %11, align 8
  %80 = call i32 @sk_storage_alloc(%struct.sock* %77, %struct.bpf_sk_storage_map* %78, %struct.bpf_sk_storage_elem* %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %11, align 8
  %85 = call i32 @kfree(%struct.bpf_sk_storage_elem* %84)
  %86 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %13, align 8
  %87 = getelementptr inbounds %struct.bpf_sk_storage_map, %struct.bpf_sk_storage_map* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sock*, %struct.sock** %6, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 0
  %91 = call i32 @atomic_sub(i32 %88, i32* %90)
  %92 = load i32, i32* %14, align 4
  %93 = call %struct.bpf_sk_storage_data* @ERR_PTR(i32 %92)
  store %struct.bpf_sk_storage_data* %93, %struct.bpf_sk_storage_data** %5, align 8
  br label %219

94:                                               ; preds = %76
  %95 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %11, align 8
  %96 = call %struct.bpf_sk_storage_data* @SDATA(%struct.bpf_sk_storage_elem* %95)
  store %struct.bpf_sk_storage_data* %96, %struct.bpf_sk_storage_data** %5, align 8
  br label %219

97:                                               ; preds = %52
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @BPF_F_LOCK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %136

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @BPF_NOEXIST, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %136, label %107

107:                                              ; preds = %102
  %108 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %12, align 8
  %109 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %13, align 8
  %110 = call %struct.bpf_sk_storage_data* @__sk_storage_lookup(%struct.bpf_sk_storage* %108, %struct.bpf_sk_storage_map* %109, i32 0)
  store %struct.bpf_sk_storage_data* %110, %struct.bpf_sk_storage_data** %10, align 8
  %111 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %10, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @check_flags(%struct.bpf_sk_storage_data* %111, i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* %14, align 4
  %118 = call %struct.bpf_sk_storage_data* @ERR_PTR(i32 %117)
  store %struct.bpf_sk_storage_data* %118, %struct.bpf_sk_storage_data** %5, align 8
  br label %219

119:                                              ; preds = %107
  %120 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %10, align 8
  %121 = icmp ne %struct.bpf_sk_storage_data* %120, null
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  %123 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %10, align 8
  %124 = call %struct.bpf_sk_storage_elem* @SELEM(%struct.bpf_sk_storage_data* %123)
  %125 = call i64 @selem_linked_to_sk(%struct.bpf_sk_storage_elem* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %129 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %10, align 8
  %130 = getelementptr inbounds %struct.bpf_sk_storage_data, %struct.bpf_sk_storage_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @copy_map_value_locked(%struct.bpf_map* %128, i32 %131, i8* %132, i32 0)
  %134 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %10, align 8
  store %struct.bpf_sk_storage_data* %134, %struct.bpf_sk_storage_data** %5, align 8
  br label %219

135:                                              ; preds = %122, %119
  br label %136

136:                                              ; preds = %135, %102, %97
  %137 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %12, align 8
  %138 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %137, i32 0, i32 0
  %139 = call i32 @raw_spin_lock_bh(i32* %138)
  %140 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %12, align 8
  %141 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %140, i32 0, i32 1
  %142 = call i32 @hlist_empty(i32* %141)
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %136
  %146 = load i32, i32* @EAGAIN, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %14, align 4
  br label %213

148:                                              ; preds = %136
  %149 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %12, align 8
  %150 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %13, align 8
  %151 = call %struct.bpf_sk_storage_data* @__sk_storage_lookup(%struct.bpf_sk_storage* %149, %struct.bpf_sk_storage_map* %150, i32 0)
  store %struct.bpf_sk_storage_data* %151, %struct.bpf_sk_storage_data** %10, align 8
  %152 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %10, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @check_flags(%struct.bpf_sk_storage_data* %152, i32 %153)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  br label %213

158:                                              ; preds = %148
  %159 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %10, align 8
  %160 = icmp ne %struct.bpf_sk_storage_data* %159, null
  br i1 %160, label %161, label %175

161:                                              ; preds = %158
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @BPF_F_LOCK, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %161
  %167 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %168 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %10, align 8
  %169 = getelementptr inbounds %struct.bpf_sk_storage_data, %struct.bpf_sk_storage_data* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %8, align 8
  %172 = call i32 @copy_map_value_locked(%struct.bpf_map* %167, i32 %170, i8* %171, i32 0)
  %173 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %10, align 8
  %174 = call %struct.bpf_sk_storage_elem* @SELEM(%struct.bpf_sk_storage_data* %173)
  store %struct.bpf_sk_storage_elem* %174, %struct.bpf_sk_storage_elem** %11, align 8
  br label %207

175:                                              ; preds = %161, %158
  %176 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %13, align 8
  %177 = load %struct.sock*, %struct.sock** %6, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %10, align 8
  %180 = icmp ne %struct.bpf_sk_storage_data* %179, null
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = call %struct.bpf_sk_storage_elem* @selem_alloc(%struct.bpf_sk_storage_map* %176, %struct.sock* %177, i8* %178, i32 %182)
  store %struct.bpf_sk_storage_elem* %183, %struct.bpf_sk_storage_elem** %11, align 8
  %184 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %11, align 8
  %185 = icmp ne %struct.bpf_sk_storage_elem* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %175
  %187 = load i32, i32* @ENOMEM, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %14, align 4
  br label %213

189:                                              ; preds = %175
  %190 = load %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_map** %13, align 8
  %191 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %11, align 8
  %192 = call i32 @selem_link_map(%struct.bpf_sk_storage_map* %190, %struct.bpf_sk_storage_elem* %191)
  %193 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %12, align 8
  %194 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %11, align 8
  %195 = call i32 @__selem_link_sk(%struct.bpf_sk_storage* %193, %struct.bpf_sk_storage_elem* %194)
  %196 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %10, align 8
  %197 = icmp ne %struct.bpf_sk_storage_data* %196, null
  br i1 %197, label %198, label %206

198:                                              ; preds = %189
  %199 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %10, align 8
  %200 = call %struct.bpf_sk_storage_elem* @SELEM(%struct.bpf_sk_storage_data* %199)
  %201 = call i32 @selem_unlink_map(%struct.bpf_sk_storage_elem* %200)
  %202 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %12, align 8
  %203 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %10, align 8
  %204 = call %struct.bpf_sk_storage_elem* @SELEM(%struct.bpf_sk_storage_data* %203)
  %205 = call i32 @__selem_unlink_sk(%struct.bpf_sk_storage* %202, %struct.bpf_sk_storage_elem* %204, i32 0)
  br label %206

206:                                              ; preds = %198, %189
  br label %207

207:                                              ; preds = %206, %166
  %208 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %12, align 8
  %209 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %208, i32 0, i32 0
  %210 = call i32 @raw_spin_unlock_bh(i32* %209)
  %211 = load %struct.bpf_sk_storage_elem*, %struct.bpf_sk_storage_elem** %11, align 8
  %212 = call %struct.bpf_sk_storage_data* @SDATA(%struct.bpf_sk_storage_elem* %211)
  store %struct.bpf_sk_storage_data* %212, %struct.bpf_sk_storage_data** %5, align 8
  br label %219

213:                                              ; preds = %186, %157, %145
  %214 = load %struct.bpf_sk_storage*, %struct.bpf_sk_storage** %12, align 8
  %215 = getelementptr inbounds %struct.bpf_sk_storage, %struct.bpf_sk_storage* %214, i32 0, i32 0
  %216 = call i32 @raw_spin_unlock_bh(i32* %215)
  %217 = load i32, i32* %14, align 4
  %218 = call %struct.bpf_sk_storage_data* @ERR_PTR(i32 %217)
  store %struct.bpf_sk_storage_data* %218, %struct.bpf_sk_storage_data** %5, align 8
  br label %219

219:                                              ; preds = %213, %207, %127, %116, %94, %83, %72, %62, %39
  %220 = load %struct.bpf_sk_storage_data*, %struct.bpf_sk_storage_data** %5, align 8
  ret %struct.bpf_sk_storage_data* %220
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @map_value_has_spin_lock(%struct.bpf_map*) #1

declare dso_local %struct.bpf_sk_storage_data* @ERR_PTR(i32) #1

declare dso_local %struct.bpf_sk_storage* @rcu_dereference(i32) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @check_flags(%struct.bpf_sk_storage_data*, i32) #1

declare dso_local %struct.bpf_sk_storage_elem* @selem_alloc(%struct.bpf_sk_storage_map*, %struct.sock*, i8*, i32) #1

declare dso_local i32 @sk_storage_alloc(%struct.sock*, %struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_elem*) #1

declare dso_local i32 @kfree(%struct.bpf_sk_storage_elem*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local %struct.bpf_sk_storage_data* @SDATA(%struct.bpf_sk_storage_elem*) #1

declare dso_local %struct.bpf_sk_storage_data* @__sk_storage_lookup(%struct.bpf_sk_storage*, %struct.bpf_sk_storage_map*, i32) #1

declare dso_local i64 @selem_linked_to_sk(%struct.bpf_sk_storage_elem*) #1

declare dso_local %struct.bpf_sk_storage_elem* @SELEM(%struct.bpf_sk_storage_data*) #1

declare dso_local i32 @copy_map_value_locked(%struct.bpf_map*, i32, i8*, i32) #1

declare dso_local i32 @raw_spin_lock_bh(i32*) #1

declare dso_local i32 @selem_link_map(%struct.bpf_sk_storage_map*, %struct.bpf_sk_storage_elem*) #1

declare dso_local i32 @__selem_link_sk(%struct.bpf_sk_storage*, %struct.bpf_sk_storage_elem*) #1

declare dso_local i32 @selem_unlink_map(%struct.bpf_sk_storage_elem*) #1

declare dso_local i32 @__selem_unlink_sk(%struct.bpf_sk_storage*, %struct.bpf_sk_storage_elem*, i32) #1

declare dso_local i32 @raw_spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
