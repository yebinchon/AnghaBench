; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_pedit.c_tcf_pedit_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_pedit.c_tcf_pedit_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32 }
%struct.tcf_pedit = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, %struct.tcf_pedit_key_ex*, %struct.tc_pedit_key*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tcf_pedit_key_ex = type { i32, i32 }
%struct.tc_pedit_key = type { i32, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCA_PEDIT_KEY_EX_HDR_TYPE_NETWORK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"tc action pedit bad header type specified (0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"tc action pedit 'at' offset %d out of bounds\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"tc action pedit offset must be on 32 bit boundaries\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"tc action pedit offset %d out of bounds\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"tc action pedit bad command (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"pedit BUG: index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_pedit_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_pedit_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.tcf_pedit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tc_pedit_key*, align 8
  %11 = alloca %struct.tcf_pedit_key_ex*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %22 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %23 = call %struct.tcf_pedit* @to_pedit(%struct.tc_action* %22)
  store %struct.tcf_pedit* %23, %struct.tcf_pedit** %8, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i64 @skb_unclone(%struct.sk_buff* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %30 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  br label %223

32:                                               ; preds = %3
  %33 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %34 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %33, i32 0, i32 2
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %37 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %36, i32 0, i32 8
  %38 = call i32 @tcf_lastuse_update(i32* %37)
  %39 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %40 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %200

43:                                               ; preds = %32
  %44 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %45 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %44, i32 0, i32 7
  %46 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %45, align 8
  store %struct.tc_pedit_key* %46, %struct.tc_pedit_key** %10, align 8
  %47 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %48 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %47, i32 0, i32 6
  %49 = load %struct.tcf_pedit_key_ex*, %struct.tcf_pedit_key_ex** %48, align 8
  store %struct.tcf_pedit_key_ex* %49, %struct.tcf_pedit_key_ex** %11, align 8
  %50 = load i32, i32* @TCA_PEDIT_KEY_EX_HDR_TYPE_NETWORK, align 4
  store i32 %50, i32* %12, align 4
  store i32 128, i32* %13, align 4
  %51 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %52 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %194, %43
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %199

57:                                               ; preds = %54
  %58 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %10, align 8
  %59 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %16, align 4
  %61 = load %struct.tcf_pedit_key_ex*, %struct.tcf_pedit_key_ex** %11, align 8
  %62 = icmp ne %struct.tcf_pedit_key_ex* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.tcf_pedit_key_ex*, %struct.tcf_pedit_key_ex** %11, align 8
  %65 = getelementptr inbounds %struct.tcf_pedit_key_ex, %struct.tcf_pedit_key_ex* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %12, align 4
  %67 = load %struct.tcf_pedit_key_ex*, %struct.tcf_pedit_key_ex** %11, align 8
  %68 = getelementptr inbounds %struct.tcf_pedit_key_ex, %struct.tcf_pedit_key_ex* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %13, align 4
  %70 = load %struct.tcf_pedit_key_ex*, %struct.tcf_pedit_key_ex** %11, align 8
  %71 = getelementptr inbounds %struct.tcf_pedit_key_ex, %struct.tcf_pedit_key_ex* %70, i32 1
  store %struct.tcf_pedit_key_ex* %71, %struct.tcf_pedit_key_ex** %11, align 8
  br label %72

72:                                               ; preds = %63, %57
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @pedit_skb_hdr_offset(%struct.sk_buff* %73, i32 %74, i32* %17)
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %19, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* %12, align 4
  %80 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %206

81:                                               ; preds = %72
  %82 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %10, align 8
  %83 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %126

86:                                               ; preds = %81
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load i32, i32* %17, align 4
  %89 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %10, align 8
  %90 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  %93 = call i32 @offset_valid(%struct.sk_buff* %87, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %17, align 4
  %97 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %10, align 8
  %98 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %96, %99
  %101 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %206

102:                                              ; preds = %86
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %10, align 8
  %106 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %104, %107
  %109 = call i32* @skb_header_pointer(%struct.sk_buff* %103, i32 %108, i32 4, i32* %21)
  store i32* %109, i32** %20, align 8
  %110 = load i32*, i32** %20, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %102
  br label %206

113:                                              ; preds = %102
  %114 = load i32*, i32** %20, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %10, align 8
  %117 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %115, %118
  %120 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %10, align 8
  %121 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %119, %122
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %113, %81
  %127 = load i32, i32* %16, align 4
  %128 = srem i32 %127, 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %206

132:                                              ; preds = %126
  %133 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %134, %135
  %137 = call i32 @offset_valid(%struct.sk_buff* %133, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %140, %141
  %143 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  br label %206

144:                                              ; preds = %132
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %146, %147
  %149 = call i32* @skb_header_pointer(%struct.sk_buff* %145, i32 %148, i32 4, i32* %15)
  store i32* %149, i32** %14, align 8
  %150 = load i32*, i32** %14, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %144
  br label %206

153:                                              ; preds = %144
  %154 = load i32, i32* %13, align 4
  switch i32 %154, label %171 [
    i32 128, label %155
    i32 129, label %159
  ]

155:                                              ; preds = %153
  %156 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %10, align 8
  %157 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %18, align 4
  br label %174

159:                                              ; preds = %153
  %160 = load i32*, i32** %14, align 8
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %10, align 8
  %163 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %161, %164
  %166 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %10, align 8
  %167 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = xor i32 %168, -1
  %170 = and i32 %165, %169
  store i32 %170, i32* %18, align 4
  br label %174

171:                                              ; preds = %153
  %172 = load i32, i32* %13, align 4
  %173 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  br label %206

174:                                              ; preds = %159, %155
  %175 = load i32*, i32** %14, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %10, align 8
  %178 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %176, %179
  %181 = load i32, i32* %18, align 4
  %182 = xor i32 %180, %181
  %183 = load i32*, i32** %14, align 8
  store i32 %182, i32* %183, align 4
  %184 = load i32*, i32** %14, align 8
  %185 = icmp eq i32* %184, %15
  br i1 %185, label %186, label %193

186:                                              ; preds = %174
  %187 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32*, i32** %14, align 8
  %192 = call i32 @skb_store_bits(%struct.sk_buff* %187, i32 %190, i32* %191, i32 4)
  br label %193

193:                                              ; preds = %186, %174
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %9, align 4
  %197 = load %struct.tc_pedit_key*, %struct.tc_pedit_key** %10, align 8
  %198 = getelementptr inbounds %struct.tc_pedit_key, %struct.tc_pedit_key* %197, i32 1
  store %struct.tc_pedit_key* %198, %struct.tc_pedit_key** %10, align 8
  br label %54

199:                                              ; preds = %54
  br label %212

200:                                              ; preds = %32
  %201 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %202 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %200
  br label %206

206:                                              ; preds = %205, %171, %152, %139, %130, %112, %95, %78
  %207 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %208 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %206, %199
  %213 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %214 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %213, i32 0, i32 3
  %215 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %216 = call i32 @bstats_update(i32* %214, %struct.sk_buff* %215)
  %217 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %218 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %217, i32 0, i32 2
  %219 = call i32 @spin_unlock(i32* %218)
  %220 = load %struct.tcf_pedit*, %struct.tcf_pedit** %8, align 8
  %221 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %4, align 4
  br label %223

223:                                              ; preds = %212, %28
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local %struct.tcf_pedit* @to_pedit(%struct.tc_action*) #1

declare dso_local i64 @skb_unclone(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tcf_lastuse_update(i32*) #1

declare dso_local i32 @pedit_skb_hdr_offset(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @offset_valid(%struct.sk_buff*, i32) #1

declare dso_local i32* @skb_header_pointer(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @skb_store_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @bstats_update(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
