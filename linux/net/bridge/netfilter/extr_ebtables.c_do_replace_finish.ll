; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_do_replace_finish.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_do_replace_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ebt_replace = type { i32, i32, i32, i32, i32 }
%struct.ebt_table_info = type { i32, i32, %struct.ebt_table_info*, i32, i32* }
%struct.ebt_counter = type { i32, i32, %struct.ebt_counter*, i32, i32* }
%struct.ebt_table = type { i32 (%struct.ebt_table_info*, i32)*, i32, %struct.ebt_table_info*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ebt_mutex = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"ebtables: counters copy to user failed while replacing table\0A\00", align 1
@ebt_cleanup_entry = common dso_local global i32 0, align 4
@AF_BRIDGE = common dso_local global i32 0, align 4
@AUDIT_NETFILTER_CFG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@audit_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ebt_replace*, %struct.ebt_table_info*)* @do_replace_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_replace_finish(%struct.net* %0, %struct.ebt_replace* %1, %struct.ebt_table_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ebt_replace*, align 8
  %7 = alloca %struct.ebt_table_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ebt_counter*, align 8
  %10 = alloca %struct.ebt_table_info*, align 8
  %11 = alloca %struct.ebt_table*, align 8
  %12 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.ebt_replace* %1, %struct.ebt_replace** %6, align 8
  store %struct.ebt_table_info* %2, %struct.ebt_table_info** %7, align 8
  store %struct.ebt_counter* null, %struct.ebt_counter** %9, align 8
  %13 = load %struct.ebt_replace*, %struct.ebt_replace** %6, align 8
  %14 = getelementptr inbounds %struct.ebt_replace, %struct.ebt_replace* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.ebt_replace*, %struct.ebt_replace** %6, align 8
  %19 = getelementptr inbounds %struct.ebt_replace, %struct.ebt_replace* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 32
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call %struct.ebt_table_info* @vmalloc(i64 %23)
  %25 = bitcast %struct.ebt_table_info* %24 to %struct.ebt_counter*
  store %struct.ebt_counter* %25, %struct.ebt_counter** %9, align 8
  %26 = load %struct.ebt_counter*, %struct.ebt_counter** %9, align 8
  %27 = icmp ne %struct.ebt_counter* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %225

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.ebt_table_info*, %struct.ebt_table_info** %7, align 8
  %34 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %33, i32 0, i32 4
  store i32* null, i32** %34, align 8
  %35 = load %struct.ebt_replace*, %struct.ebt_replace** %6, align 8
  %36 = load %struct.ebt_table_info*, %struct.ebt_table_info** %7, align 8
  %37 = call i32 @ebt_verify_pointers(%struct.ebt_replace* %35, %struct.ebt_table_info* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %218

41:                                               ; preds = %32
  %42 = load %struct.net*, %struct.net** %5, align 8
  %43 = load %struct.ebt_replace*, %struct.ebt_replace** %6, align 8
  %44 = getelementptr inbounds %struct.ebt_replace, %struct.ebt_replace* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ebt_table_info*, %struct.ebt_table_info** %7, align 8
  %47 = call i32 @translate_table(%struct.net* %42, i32 %45, %struct.ebt_table_info* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %218

51:                                               ; preds = %41
  %52 = load %struct.net*, %struct.net** %5, align 8
  %53 = load %struct.ebt_replace*, %struct.ebt_replace** %6, align 8
  %54 = getelementptr inbounds %struct.ebt_replace, %struct.ebt_replace* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.ebt_table* @find_table_lock(%struct.net* %52, i32 %55, i32* %8, i32* @ebt_mutex)
  store %struct.ebt_table* %56, %struct.ebt_table** %11, align 8
  %57 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %58 = icmp ne %struct.ebt_table* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %208

62:                                               ; preds = %51
  %63 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %64 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %63, i32 0, i32 0
  %65 = load i32 (%struct.ebt_table_info*, i32)*, i32 (%struct.ebt_table_info*, i32)** %64, align 8
  %66 = icmp ne i32 (%struct.ebt_table_info*, i32)* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %69 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %68, i32 0, i32 0
  %70 = load i32 (%struct.ebt_table_info*, i32)*, i32 (%struct.ebt_table_info*, i32)** %69, align 8
  %71 = load %struct.ebt_table_info*, %struct.ebt_table_info** %7, align 8
  %72 = load %struct.ebt_replace*, %struct.ebt_replace** %6, align 8
  %73 = getelementptr inbounds %struct.ebt_replace, %struct.ebt_replace* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 %70(%struct.ebt_table_info* %71, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %206

78:                                               ; preds = %67, %62
  %79 = load %struct.ebt_replace*, %struct.ebt_replace** %6, align 8
  %80 = getelementptr inbounds %struct.ebt_replace, %struct.ebt_replace* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = load %struct.ebt_replace*, %struct.ebt_replace** %6, align 8
  %85 = getelementptr inbounds %struct.ebt_replace, %struct.ebt_replace* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %88 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %87, i32 0, i32 2
  %89 = load %struct.ebt_table_info*, %struct.ebt_table_info** %88, align 8
  %90 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %86, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %206

96:                                               ; preds = %83, %78
  %97 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %98 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %97, i32 0, i32 2
  %99 = load %struct.ebt_table_info*, %struct.ebt_table_info** %98, align 8
  store %struct.ebt_table_info* %99, %struct.ebt_table_info** %10, align 8
  %100 = load %struct.ebt_table_info*, %struct.ebt_table_info** %10, align 8
  %101 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %96
  %105 = load %struct.ebt_table_info*, %struct.ebt_table_info** %7, align 8
  %106 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %111 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @try_module_get(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* @ENOENT, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %206

118:                                              ; preds = %109, %104, %96
  %119 = load %struct.ebt_table_info*, %struct.ebt_table_info** %10, align 8
  %120 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load %struct.ebt_table_info*, %struct.ebt_table_info** %7, align 8
  %125 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %130 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @module_put(i32 %131)
  br label %133

133:                                              ; preds = %128, %123, %118
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %136 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %135, i32 0, i32 1
  %137 = call i32 @write_lock_bh(i32* %136)
  %138 = load %struct.ebt_replace*, %struct.ebt_replace** %6, align 8
  %139 = getelementptr inbounds %struct.ebt_replace, %struct.ebt_replace* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %134
  %143 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %144 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %143, i32 0, i32 2
  %145 = load %struct.ebt_table_info*, %struct.ebt_table_info** %144, align 8
  %146 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.ebt_counter*, %struct.ebt_counter** %9, align 8
  %149 = bitcast %struct.ebt_counter* %148 to %struct.ebt_table_info*
  %150 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %151 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %150, i32 0, i32 2
  %152 = load %struct.ebt_table_info*, %struct.ebt_table_info** %151, align 8
  %153 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @get_counters(i32 %147, %struct.ebt_table_info* %149, i32 %154)
  br label %156

156:                                              ; preds = %142, %134
  %157 = load %struct.ebt_table_info*, %struct.ebt_table_info** %7, align 8
  %158 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %159 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %158, i32 0, i32 2
  store %struct.ebt_table_info* %157, %struct.ebt_table_info** %159, align 8
  %160 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %161 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %160, i32 0, i32 1
  %162 = call i32 @write_unlock_bh(i32* %161)
  %163 = call i32 @mutex_unlock(i32* @ebt_mutex)
  %164 = load %struct.ebt_replace*, %struct.ebt_replace** %6, align 8
  %165 = getelementptr inbounds %struct.ebt_replace, %struct.ebt_replace* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %156
  %169 = load %struct.ebt_replace*, %struct.ebt_replace** %6, align 8
  %170 = getelementptr inbounds %struct.ebt_replace, %struct.ebt_replace* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ebt_counter*, %struct.ebt_counter** %9, align 8
  %173 = bitcast %struct.ebt_counter* %172 to %struct.ebt_table_info*
  %174 = load %struct.ebt_replace*, %struct.ebt_replace** %6, align 8
  %175 = getelementptr inbounds %struct.ebt_replace, %struct.ebt_replace* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = mul i64 %177, 32
  %179 = trunc i64 %178 to i32
  %180 = call i64 @copy_to_user(i32 %171, %struct.ebt_table_info* %173, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %168
  %183 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %168, %156
  %185 = load %struct.ebt_table_info*, %struct.ebt_table_info** %10, align 8
  %186 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %185, i32 0, i32 2
  %187 = load %struct.ebt_table_info*, %struct.ebt_table_info** %186, align 8
  %188 = load %struct.ebt_table_info*, %struct.ebt_table_info** %10, align 8
  %189 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @ebt_cleanup_entry, align 4
  %192 = load %struct.net*, %struct.net** %5, align 8
  %193 = call i32 @EBT_ENTRY_ITERATE(%struct.ebt_table_info* %187, i32 %190, i32 %191, %struct.net* %192, i32* null)
  %194 = load %struct.ebt_table_info*, %struct.ebt_table_info** %10, align 8
  %195 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %194, i32 0, i32 2
  %196 = load %struct.ebt_table_info*, %struct.ebt_table_info** %195, align 8
  %197 = call i32 @vfree(%struct.ebt_table_info* %196)
  %198 = load %struct.ebt_table_info*, %struct.ebt_table_info** %10, align 8
  %199 = call i32 @ebt_free_table_info(%struct.ebt_table_info* %198)
  %200 = load %struct.ebt_table_info*, %struct.ebt_table_info** %10, align 8
  %201 = call i32 @vfree(%struct.ebt_table_info* %200)
  %202 = load %struct.ebt_counter*, %struct.ebt_counter** %9, align 8
  %203 = bitcast %struct.ebt_counter* %202 to %struct.ebt_table_info*
  %204 = call i32 @vfree(%struct.ebt_table_info* %203)
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %4, align 4
  br label %225

206:                                              ; preds = %115, %93, %77
  %207 = call i32 @mutex_unlock(i32* @ebt_mutex)
  br label %208

208:                                              ; preds = %206, %59
  %209 = load %struct.ebt_table_info*, %struct.ebt_table_info** %7, align 8
  %210 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %209, i32 0, i32 2
  %211 = load %struct.ebt_table_info*, %struct.ebt_table_info** %210, align 8
  %212 = load %struct.ebt_table_info*, %struct.ebt_table_info** %7, align 8
  %213 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @ebt_cleanup_entry, align 4
  %216 = load %struct.net*, %struct.net** %5, align 8
  %217 = call i32 @EBT_ENTRY_ITERATE(%struct.ebt_table_info* %211, i32 %214, i32 %215, %struct.net* %216, i32* null)
  br label %218

218:                                              ; preds = %208, %50, %40
  %219 = load %struct.ebt_counter*, %struct.ebt_counter** %9, align 8
  %220 = bitcast %struct.ebt_counter* %219 to %struct.ebt_table_info*
  %221 = call i32 @vfree(%struct.ebt_table_info* %220)
  %222 = load %struct.ebt_table_info*, %struct.ebt_table_info** %7, align 8
  %223 = call i32 @ebt_free_table_info(%struct.ebt_table_info* %222)
  %224 = load i32, i32* %8, align 4
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %218, %184, %28
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local %struct.ebt_table_info* @vmalloc(i64) #1

declare dso_local i32 @ebt_verify_pointers(%struct.ebt_replace*, %struct.ebt_table_info*) #1

declare dso_local i32 @translate_table(%struct.net*, i32, %struct.ebt_table_info*) #1

declare dso_local %struct.ebt_table* @find_table_lock(%struct.net*, i32, i32*, i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @get_counters(i32, %struct.ebt_table_info*, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @copy_to_user(i32, %struct.ebt_table_info*, i32) #1

declare dso_local i32 @net_warn_ratelimited(i8*) #1

declare dso_local i32 @EBT_ENTRY_ITERATE(%struct.ebt_table_info*, i32, i32, %struct.net*, i32*) #1

declare dso_local i32 @vfree(%struct.ebt_table_info*) #1

declare dso_local i32 @ebt_free_table_info(%struct.ebt_table_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
