; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_hashlimit_mt_common.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_hashlimit_mt_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32, i32 }
%struct.xt_hashlimit_htable = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hashlimit_cfg3 = type { i32 }
%struct.dsthash_ent = type { i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }
%struct.dsthash_dst = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@XT_HASHLIMIT_RATE_MATCH = common dso_local global i32 0, align 4
@XT_HASHLIMIT_BYTES = common dso_local global i32 0, align 4
@XT_HASHLIMIT_INVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*, %struct.xt_hashlimit_htable*, %struct.hashlimit_cfg3*, i32)* @hashlimit_mt_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashlimit_mt_common(%struct.sk_buff* %0, %struct.xt_action_param* %1, %struct.xt_hashlimit_htable* %2, %struct.hashlimit_cfg3* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.xt_action_param*, align 8
  %9 = alloca %struct.xt_hashlimit_htable*, align 8
  %10 = alloca %struct.hashlimit_cfg3*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.dsthash_ent*, align 8
  %14 = alloca %struct.dsthash_dst, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %8, align 8
  store %struct.xt_hashlimit_htable* %2, %struct.xt_hashlimit_htable** %9, align 8
  store %struct.hashlimit_cfg3* %3, %struct.hashlimit_cfg3** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i64, i64* @jiffies, align 8
  store i64 %17, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = load %struct.xt_action_param*, %struct.xt_action_param** %8, align 8
  %21 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @hashlimit_init_dst(%struct.xt_hashlimit_htable* %18, %struct.dsthash_dst* %14, %struct.sk_buff* %19, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %206

26:                                               ; preds = %5
  %27 = call i32 (...) @local_bh_disable()
  %28 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %9, align 8
  %29 = call %struct.dsthash_ent* @dsthash_find(%struct.xt_hashlimit_htable* %28, %struct.dsthash_dst* %14)
  store %struct.dsthash_ent* %29, %struct.dsthash_ent** %13, align 8
  %30 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %31 = icmp eq %struct.dsthash_ent* %30, null
  br i1 %31, label %32, label %76

32:                                               ; preds = %26
  %33 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %9, align 8
  %34 = call %struct.dsthash_ent* @dsthash_alloc_init(%struct.xt_hashlimit_htable* %33, %struct.dsthash_dst* %14, i32* %15)
  store %struct.dsthash_ent* %34, %struct.dsthash_ent** %13, align 8
  %35 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %36 = icmp eq %struct.dsthash_ent* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (...) @local_bh_enable()
  br label %206

39:                                               ; preds = %32
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load i64, i64* %12, align 8
  %44 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %9, align 8
  %45 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @msecs_to_jiffies(i32 %47)
  %49 = getelementptr i8, i8* %48, i64 %43
  %50 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %51 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %9, align 8
  %55 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @rateinfo_recalc(%struct.dsthash_ent* %52, i64 %53, i32 %57, i32 %58)
  br label %74

60:                                               ; preds = %39
  %61 = load i64, i64* @jiffies, align 8
  %62 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %9, align 8
  %63 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @msecs_to_jiffies(i32 %65)
  %67 = getelementptr i8, i8* %66, i64 %61
  %68 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %69 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %71 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %9, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @rateinfo_init(%struct.dsthash_ent* %70, %struct.xt_hashlimit_htable* %71, i32 %72)
  br label %74

74:                                               ; preds = %60, %42
  br label %75

75:                                               ; preds = %74
  br label %94

76:                                               ; preds = %26
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %9, align 8
  %79 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @msecs_to_jiffies(i32 %81)
  %83 = getelementptr i8, i8* %82, i64 %77
  %84 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %85 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %9, align 8
  %89 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @rateinfo_recalc(%struct.dsthash_ent* %86, i64 %87, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %76, %75
  %95 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %10, align 8
  %96 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @XT_HASHLIMIT_RATE_MATCH, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %151

101:                                              ; preds = %94
  %102 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %10, align 8
  %103 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @XT_HASHLIMIT_BYTES, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  br label %113

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %108
  %114 = phi i32 [ %111, %108 ], [ 1, %112 ]
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %118 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %116
  store i64 %121, i64* %119, align 8
  %122 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %123 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %150, label %127

127:                                              ; preds = %113
  %128 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %129 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %133 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp sle i64 %131, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %127
  %138 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %139 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %138, i32 0, i32 0
  %140 = call i32 @spin_unlock(i32* %139)
  %141 = call i32 (...) @local_bh_enable()
  %142 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %10, align 8
  %143 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @XT_HASHLIMIT_INVERT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %6, align 4
  br label %209

150:                                              ; preds = %127, %113
  br label %196

151:                                              ; preds = %94
  %152 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %10, align 8
  %153 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @XT_HASHLIMIT_BYTES, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %151
  %159 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %163 = call i32 @hashlimit_byte_cost(i32 %161, %struct.dsthash_ent* %162)
  store i32 %163, i32* %16, align 4
  br label %169

164:                                              ; preds = %151
  %165 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %166 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %16, align 4
  br label %169

169:                                              ; preds = %164, %158
  %170 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %171 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %16, align 4
  %175 = icmp sge i32 %173, %174
  br i1 %175, label %176, label %195

176:                                              ; preds = %169
  %177 = load i32, i32* %16, align 4
  %178 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %179 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %181, %177
  store i32 %182, i32* %180, align 4
  %183 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %184 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %183, i32 0, i32 0
  %185 = call i32 @spin_unlock(i32* %184)
  %186 = call i32 (...) @local_bh_enable()
  %187 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %10, align 8
  %188 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @XT_HASHLIMIT_INVERT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  store i32 %194, i32* %6, align 4
  br label %209

195:                                              ; preds = %169
  br label %196

196:                                              ; preds = %195, %150
  %197 = load %struct.dsthash_ent*, %struct.dsthash_ent** %13, align 8
  %198 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %197, i32 0, i32 0
  %199 = call i32 @spin_unlock(i32* %198)
  %200 = call i32 (...) @local_bh_enable()
  %201 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %10, align 8
  %202 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @XT_HASHLIMIT_INVERT, align 4
  %205 = and i32 %203, %204
  store i32 %205, i32* %6, align 4
  br label %209

206:                                              ; preds = %37, %25
  %207 = load %struct.xt_action_param*, %struct.xt_action_param** %8, align 8
  %208 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %207, i32 0, i32 0
  store i32 1, i32* %208, align 4
  store i32 0, i32* %6, align 4
  br label %209

209:                                              ; preds = %206, %196, %176, %137
  %210 = load i32, i32* %6, align 4
  ret i32 %210
}

declare dso_local i64 @hashlimit_init_dst(%struct.xt_hashlimit_htable*, %struct.dsthash_dst*, %struct.sk_buff*, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local %struct.dsthash_ent* @dsthash_find(%struct.xt_hashlimit_htable*, %struct.dsthash_dst*) #1

declare dso_local %struct.dsthash_ent* @dsthash_alloc_init(%struct.xt_hashlimit_htable*, %struct.dsthash_dst*, i32*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i8* @msecs_to_jiffies(i32) #1

declare dso_local i32 @rateinfo_recalc(%struct.dsthash_ent*, i64, i32, i32) #1

declare dso_local i32 @rateinfo_init(%struct.dsthash_ent*, %struct.xt_hashlimit_htable*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hashlimit_byte_cost(i32, %struct.dsthash_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
