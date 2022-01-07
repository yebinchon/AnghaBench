; ModuleID = '/home/carl/AnghaBench/linux/net/psample/extr_psample.c_psample_sample_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/psample/extr_psample.c_psample_sample_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psample_group = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32, i32 }

@PSAMPLE_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@NLA_HDRLEN = common dso_local global i32 0, align 4
@NLA_ALIGNTO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@psample_nl_family = common dso_local global i32 0, align 4
@PSAMPLE_CMD_SAMPLE = common dso_local global i32 0, align 4
@PSAMPLE_ATTR_IIFINDEX = common dso_local global i32 0, align 4
@PSAMPLE_ATTR_OIFINDEX = common dso_local global i32 0, align 4
@PSAMPLE_ATTR_SAMPLE_RATE = common dso_local global i32 0, align 4
@PSAMPLE_ATTR_ORIGSIZE = common dso_local global i32 0, align 4
@PSAMPLE_ATTR_SAMPLE_GROUP = common dso_local global i32 0, align 4
@PSAMPLE_ATTR_GROUP_SEQ = common dso_local global i32 0, align 4
@PSAMPLE_ATTR_DATA = common dso_local global i32 0, align 4
@PSAMPLE_NL_MCGRP_SAMPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could not create psample log message\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psample_sample_packet(%struct.psample_group* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.psample_group*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nlattr*, align 8
  store %struct.psample_group* %0, %struct.psample_group** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = call i32 @nla_total_size(i32 4)
  br label %25

24:                                               ; preds = %6
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @nla_total_size(i32 4)
  br label %32

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = add nsw i32 %26, %33
  %35 = call i32 @nla_total_size(i32 4)
  %36 = add nsw i32 %34, %35
  %37 = call i32 @nla_total_size(i32 4)
  %38 = add nsw i32 %36, %37
  %39 = call i32 @nla_total_size(i32 4)
  %40 = add nsw i32 %38, %39
  %41 = call i32 @nla_total_size(i32 4)
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %15, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @min(i32 %45, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @nla_total_size(i32 %49)
  %51 = add nsw i32 %48, %50
  %52 = load i32, i32* @PSAMPLE_MAX_PACKET_SIZE, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %32
  %55 = load i32, i32* @PSAMPLE_MAX_PACKET_SIZE, align 4
  %56 = load i32, i32* %15, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load i32, i32* @NLA_HDRLEN, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i32, i32* @NLA_ALIGNTO, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %54, %32
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @GFP_ATOMIC, align 4
  %67 = call %struct.sk_buff* @genlmsg_new(i32 %65, i32 %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %13, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %206

75:                                               ; preds = %62
  %76 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %77 = load i32, i32* @PSAMPLE_CMD_SAMPLE, align 4
  %78 = call i8* @genlmsg_put(%struct.sk_buff* %76, i32 0, i32 0, i32* @psample_nl_family, i32 0, i32 %77)
  store i8* %78, i8** %16, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = icmp ne i8* %79, null
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %202

86:                                               ; preds = %75
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %91 = load i32, i32* @PSAMPLE_ATTR_IIFINDEX, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @nla_put_u16(%struct.sk_buff* %90, i32 %91, i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp slt i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %202

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %86
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %106 = load i32, i32* @PSAMPLE_ATTR_OIFINDEX, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @nla_put_u16(%struct.sk_buff* %105, i32 %106, i32 %107)
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp slt i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %202

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115, %101
  %117 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %118 = load i32, i32* @PSAMPLE_ATTR_SAMPLE_RATE, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @nla_put_u32(%struct.sk_buff* %117, i32 %118, i32 %119)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp slt i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %202

127:                                              ; preds = %116
  %128 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %129 = load i32, i32* @PSAMPLE_ATTR_ORIGSIZE, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @nla_put_u32(%struct.sk_buff* %128, i32 %129, i32 %132)
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp slt i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %127
  br label %202

140:                                              ; preds = %127
  %141 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %142 = load i32, i32* @PSAMPLE_ATTR_SAMPLE_GROUP, align 4
  %143 = load %struct.psample_group*, %struct.psample_group** %7, align 8
  %144 = getelementptr inbounds %struct.psample_group, %struct.psample_group* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @nla_put_u32(%struct.sk_buff* %141, i32 %142, i32 %145)
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp slt i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  br label %202

153:                                              ; preds = %140
  %154 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %155 = load i32, i32* @PSAMPLE_ATTR_GROUP_SEQ, align 4
  %156 = load %struct.psample_group*, %struct.psample_group** %7, align 8
  %157 = getelementptr inbounds %struct.psample_group, %struct.psample_group* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = call i32 @nla_put_u32(%struct.sk_buff* %154, i32 %155, i32 %158)
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* %17, align 4
  %162 = icmp slt i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i64 @unlikely(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %153
  br label %202

167:                                              ; preds = %153
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %191

170:                                              ; preds = %167
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @nla_total_size(i32 %171)
  store i32 %172, i32* %18, align 4
  %173 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %174 = load i32, i32* %18, align 4
  %175 = call %struct.nlattr* @skb_put(%struct.sk_buff* %173, i32 %174)
  store %struct.nlattr* %175, %struct.nlattr** %19, align 8
  %176 = load i32, i32* @PSAMPLE_ATTR_DATA, align 4
  %177 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %178 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @nla_attr_size(i32 %179)
  %181 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %182 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  %183 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %184 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %185 = call i32 @nla_data(%struct.nlattr* %184)
  %186 = load i32, i32* %14, align 4
  %187 = call i64 @skb_copy_bits(%struct.sk_buff* %183, i32 0, i32 %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %170
  br label %202

190:                                              ; preds = %170
  br label %191

191:                                              ; preds = %190, %167
  %192 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %193 = load i8*, i8** %16, align 8
  %194 = call i32 @genlmsg_end(%struct.sk_buff* %192, i8* %193)
  %195 = load %struct.psample_group*, %struct.psample_group** %7, align 8
  %196 = getelementptr inbounds %struct.psample_group, %struct.psample_group* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %199 = load i32, i32* @PSAMPLE_NL_MCGRP_SAMPLE, align 4
  %200 = load i32, i32* @GFP_ATOMIC, align 4
  %201 = call i32 @genlmsg_multicast_netns(i32* @psample_nl_family, i32 %197, %struct.sk_buff* %198, i32 0, i32 %199, i32 %200)
  br label %206

202:                                              ; preds = %189, %166, %152, %139, %126, %114, %99, %85
  %203 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %204 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %205 = call i32 @nlmsg_free(%struct.sk_buff* %204)
  br label %206

206:                                              ; preds = %202, %191, %74
  ret void
}

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_attr_size(i32) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @pr_err_ratelimited(i8*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
