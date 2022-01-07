; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_build.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_msg = type { i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_MSG_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FB_MTU = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@MSG_FRAGMENTER = common dso_local global i32 0, align 4
@FIRST_FRAGMENT = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i32 0, align 4
@FRAGMENT = common dso_local global i32 0, align 4
@LAST_FRAGMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_msg_build(%struct.tipc_msg* %0, %struct.msghdr* %1, i32 %2, i32 %3, i32 %4, %struct.sk_buff_head* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.tipc_msg, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.tipc_msg* %0, %struct.tipc_msg** %8, align 8
  store %struct.msghdr* %1, %struct.msghdr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.sk_buff_head* %5, %struct.sk_buff_head** %13, align 8
  %24 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %25 = call i32 @msg_hdr_sz(%struct.tipc_msg* %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %31 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @msg_set_size(%struct.tipc_msg* %31, i32 %32)
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp sle i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %106

40:                                               ; preds = %6
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.sk_buff* @tipc_buf_acquire(i32 %41, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %18, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %40
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @MAX_MSG_SIZE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %243

57:                                               ; preds = %50
  %58 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %59 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @FB_MTU, align 4
  %63 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %64 = call i32 @tipc_msg_build(%struct.tipc_msg* %58, %struct.msghdr* %59, i32 %60, i32 %61, i32 %62, %struct.sk_buff_head* %63)
  store i32 %64, i32* %23, align 4
  %65 = load i32, i32* %23, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i32, i32* %23, align 4
  store i32 %69, i32* %7, align 4
  br label %243

70:                                               ; preds = %57
  %71 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %72 = call i64 @tipc_msg_assemble(%struct.sk_buff_head* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %7, align 4
  br label %243

76:                                               ; preds = %70
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %243

79:                                               ; preds = %40
  %80 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %81 = call i32 @skb_orphan(%struct.sk_buff* %80)
  %82 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %84 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %82, %struct.sk_buff* %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %86 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %85, %struct.tipc_msg* %86, i32 %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8* %94, i8** %21, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %98 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %97, i32 0, i32 0
  %99 = call i64 @copy_from_iter_full(i8* %95, i32 %96, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %79
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %7, align 4
  br label %243

103:                                              ; preds = %79
  %104 = load i32, i32* @EFAULT, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %23, align 4
  br label %237

106:                                              ; preds = %6
  %107 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %108 = call i32 @msg_prevnode(%struct.tipc_msg* %107)
  %109 = load i32, i32* @MSG_FRAGMENTER, align 4
  %110 = load i32, i32* @FIRST_FRAGMENT, align 4
  %111 = load i32, i32* @INT_H_SIZE, align 4
  %112 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %113 = call i32 @msg_destnode(%struct.tipc_msg* %112)
  %114 = call i32 @tipc_msg_init(i32 %108, %struct.tipc_msg* %15, i32 %109, i32 %110, i32 %111, i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @msg_set_size(%struct.tipc_msg* %15, i32 %115)
  %117 = load i32, i32* %20, align 4
  %118 = call i32 @msg_set_fragm_no(%struct.tipc_msg* %15, i32 %117)
  %119 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %120 = call i32 @msg_importance(%struct.tipc_msg* %119)
  %121 = call i32 @msg_set_importance(%struct.tipc_msg* %15, i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call %struct.sk_buff* @tipc_buf_acquire(i32 %122, i32 %123)
  store %struct.sk_buff* %124, %struct.sk_buff** %18, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %126 = icmp ne %struct.sk_buff* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %106
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %7, align 4
  br label %243

130:                                              ; preds = %106
  %131 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %132 = call i32 @skb_orphan(%struct.sk_buff* %131)
  %133 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %135 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %133, %struct.sk_buff* %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %21, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %140 = load i32, i32* @INT_H_SIZE, align 4
  %141 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %139, %struct.tipc_msg* %15, i32 %140)
  %142 = load i32, i32* @INT_H_SIZE, align 4
  %143 = load i8*, i8** %21, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8* %145, i8** %21, align 8
  %146 = load i32, i32* @INT_H_SIZE, align 4
  %147 = load i32, i32* %17, align 4
  %148 = sub nsw i32 %147, %146
  store i32 %148, i32* %17, align 4
  %149 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %150 = load i32, i32* @INT_H_SIZE, align 4
  %151 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %149, i32 %150, %struct.tipc_msg* %151, i32 %152)
  %154 = load i32, i32* %14, align 4
  %155 = load i8*, i8** %21, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8* %157, i8** %21, align 8
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %17, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %17, align 4
  br label %161

161:                                              ; preds = %230, %130
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i32, i32* %19, align 4
  store i32 %166, i32* %17, align 4
  br label %167

167:                                              ; preds = %165, %161
  %168 = load i8*, i8** %21, align 8
  %169 = load i32, i32* %17, align 4
  %170 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %171 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %170, i32 0, i32 0
  %172 = call i64 @copy_from_iter_full(i8* %168, i32 %169, i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* @EFAULT, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %23, align 4
  br label %237

177:                                              ; preds = %167
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %19, align 4
  %180 = sub nsw i32 %179, %178
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* %19, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %177
  br label %231

184:                                              ; preds = %177
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* @INT_H_SIZE, align 4
  %188 = sub nsw i32 %186, %187
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load i32, i32* %19, align 4
  %192 = load i32, i32* @INT_H_SIZE, align 4
  %193 = add nsw i32 %191, %192
  store i32 %193, i32* %22, align 4
  br label %196

194:                                              ; preds = %184
  %195 = load i32, i32* %12, align 4
  store i32 %195, i32* %22, align 4
  br label %196

196:                                              ; preds = %194, %190
  %197 = load i32, i32* %22, align 4
  %198 = load i32, i32* @GFP_KERNEL, align 4
  %199 = call %struct.sk_buff* @tipc_buf_acquire(i32 %197, i32 %198)
  store %struct.sk_buff* %199, %struct.sk_buff** %18, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %201 = icmp ne %struct.sk_buff* %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %196
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %23, align 4
  br label %237

205:                                              ; preds = %196
  %206 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %207 = call i32 @skb_orphan(%struct.sk_buff* %206)
  %208 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %210 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %208, %struct.sk_buff* %209)
  %211 = load i32, i32* @FRAGMENT, align 4
  %212 = call i32 @msg_set_type(%struct.tipc_msg* %15, i32 %211)
  %213 = load i32, i32* %22, align 4
  %214 = call i32 @msg_set_size(%struct.tipc_msg* %15, i32 %213)
  %215 = load i32, i32* %20, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %20, align 4
  %217 = call i32 @msg_set_fragm_no(%struct.tipc_msg* %15, i32 %216)
  %218 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %219 = load i32, i32* @INT_H_SIZE, align 4
  %220 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %218, %struct.tipc_msg* %15, i32 %219)
  %221 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %222 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = load i32, i32* @INT_H_SIZE, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  store i8* %226, i8** %21, align 8
  %227 = load i32, i32* %22, align 4
  %228 = load i32, i32* @INT_H_SIZE, align 4
  %229 = sub nsw i32 %227, %228
  store i32 %229, i32* %17, align 4
  br label %230

230:                                              ; preds = %205
  br i1 true, label %161, label %231

231:                                              ; preds = %230, %183
  %232 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %233 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %232)
  %234 = load i32, i32* @LAST_FRAGMENT, align 4
  %235 = call i32 @msg_set_type(%struct.tipc_msg* %233, i32 %234)
  %236 = load i32, i32* %11, align 4
  store i32 %236, i32* %7, align 4
  br label %243

237:                                              ; preds = %202, %174, %103
  %238 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %239 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %238)
  %240 = load %struct.sk_buff_head*, %struct.sk_buff_head** %13, align 8
  %241 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %240)
  %242 = load i32, i32* %23, align 4
  store i32 %242, i32* %7, align 4
  br label %243

243:                                              ; preds = %237, %231, %127, %101, %76, %74, %68, %54
  %244 = load i32, i32* %7, align 4
  ret i32 %244
}

declare dso_local i32 @msg_hdr_sz(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.sk_buff* @tipc_buf_acquire(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @tipc_msg_assemble(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.tipc_msg*, i32) #1

declare dso_local i64 @copy_from_iter_full(i8*, i32, i32*) #1

declare dso_local i32 @tipc_msg_init(i32, %struct.tipc_msg*, i32, i32, i32, i32) #1

declare dso_local i32 @msg_prevnode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_destnode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_fragm_no(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_importance(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_importance(%struct.tipc_msg*) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, %struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
