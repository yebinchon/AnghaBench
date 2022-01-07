; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_get_raw_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_get_raw_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_2__*, %struct.hidp_session* }
%struct.TYPE_2__ = type { i32 }
%struct.hidp_session = type { i8, i8, i32, i32, %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i64, i32 }

@EIO = common dso_local global i32 0, align 4
@HIDP_TRANS_GET_REPORT = common dso_local global i8 0, align 1
@HIDP_DATA_RTYPE_FEATURE = common dso_local global i8 0, align 1
@HIDP_DATA_RTYPE_INPUT = common dso_local global i8 0, align 1
@HIDP_DATA_RTYPE_OUPUT = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@HIDP_DATA_RTYPE_MASK = common dso_local global i8 0, align 1
@HIDP_WAITING_FOR_RETURN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i8, i8*, i64, i8)* @hidp_get_raw_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_get_raw_report(%struct.hid_device* %0, i8 zeroext %1, i8* %2, i64 %3, i8 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.hidp_session*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8 %4, i8* %11, align 1
  %18 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %19 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %18, i32 0, i32 1
  %20 = load %struct.hidp_session*, %struct.hidp_session** %19, align 8
  store %struct.hidp_session* %20, %struct.hidp_session** %12, align 8
  %21 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %22 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i8, i8* %11, align 1
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %30 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %29, i32 0, i32 5
  %31 = call i64 @atomic_read(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %205

36:                                               ; preds = %5
  %37 = load i8, i8* %11, align 1
  %38 = zext i8 %37 to i32
  switch i32 %38, label %60 [
    i32 130, label %39
    i32 129, label %46
    i32 128, label %53
  ]

39:                                               ; preds = %36
  %40 = load i8, i8* @HIDP_TRANS_GET_REPORT, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @HIDP_DATA_RTYPE_FEATURE, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %41, %43
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %11, align 1
  br label %63

46:                                               ; preds = %36
  %47 = load i8, i8* @HIDP_TRANS_GET_REPORT, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @HIDP_DATA_RTYPE_INPUT, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %48, %50
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %11, align 1
  br label %63

53:                                               ; preds = %36
  %54 = load i8, i8* @HIDP_TRANS_GET_REPORT, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @HIDP_DATA_RTYPE_OUPUT, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %55, %57
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %11, align 1
  br label %63

60:                                               ; preds = %36
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %205

63:                                               ; preds = %53, %46, %39
  %64 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %65 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %64, i32 0, i32 2
  %66 = call i64 @mutex_lock_interruptible(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @ERESTARTSYS, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %205

71:                                               ; preds = %63
  %72 = load i8, i8* %11, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* @HIDP_DATA_RTYPE_MASK, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %73, %75
  %77 = trunc i32 %76 to i8
  %78 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %79 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %78, i32 0, i32 0
  store i8 %77, i8* %79, align 8
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load i8, i8* %8, align 1
  %84 = zext i8 %83 to i32
  br label %86

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i32 [ %84, %82 ], [ -1, %85 ]
  %88 = trunc i32 %87 to i8
  %89 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %90 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %89, i32 0, i32 1
  store i8 %88, i8* %90, align 1
  %91 = load i32, i32* @HIDP_WAITING_FOR_RETURN, align 4
  %92 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %93 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %92, i32 0, i32 3
  %94 = call i32 @set_bit(i32 %91, i32* %93)
  %95 = load i8, i8* %8, align 1
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  store i8 %95, i8* %97, align 1
  %98 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %99 = load i8, i8* %11, align 1
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @hidp_send_ctrl_message(%struct.hidp_session* %98, i8 zeroext %99, i8* %100, i32 1)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %86
  br label %196

105:                                              ; preds = %86
  br label %106

106:                                              ; preds = %151, %105
  %107 = load i32, i32* @HIDP_WAITING_FOR_RETURN, align 4
  %108 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %109 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %108, i32 0, i32 3
  %110 = call i64 @test_bit(i32 %107, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %114 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %113, i32 0, i32 5
  %115 = call i64 @atomic_read(i32* %114)
  %116 = icmp ne i64 %115, 0
  %117 = xor i1 %116, true
  br label %118

118:                                              ; preds = %112, %106
  %119 = phi i1 [ false, %106 ], [ %117, %112 ]
  br i1 %119, label %120, label %152

120:                                              ; preds = %118
  %121 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %122 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @HIDP_WAITING_FOR_RETURN, align 4
  %125 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %126 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %125, i32 0, i32 3
  %127 = call i64 @test_bit(i32 %124, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %131 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %130, i32 0, i32 5
  %132 = call i64 @atomic_read(i32* %131)
  %133 = icmp ne i64 %132, 0
  br label %134

134:                                              ; preds = %129, %120
  %135 = phi i1 [ true, %120 ], [ %133, %129 ]
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* @HZ, align 4
  %138 = mul nsw i32 5, %137
  %139 = call i32 @wait_event_interruptible_timeout(i32 %123, i32 %136, i32 %138)
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %17, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load i32, i32* @EIO, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %16, align 4
  br label %196

145:                                              ; preds = %134
  %146 = load i32, i32* %17, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* @ERESTARTSYS, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %16, align 4
  br label %196

151:                                              ; preds = %145
  br label %106

152:                                              ; preds = %118
  %153 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %154 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %153, i32 0, i32 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %154, align 8
  store %struct.sk_buff* %155, %struct.sk_buff** %13, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %157 = icmp ne %struct.sk_buff* %156, null
  br i1 %157, label %158, label %182

158:                                              ; preds = %152
  %159 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %10, align 8
  %163 = icmp ult i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  br label %170

168:                                              ; preds = %158
  %169 = load i64, i64* %10, align 8
  br label %170

170:                                              ; preds = %168, %164
  %171 = phi i64 [ %167, %164 ], [ %169, %168 ]
  store i64 %171, i64* %14, align 8
  %172 = load i8*, i8** %9, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i64, i64* %14, align 8
  %177 = call i32 @memcpy(i8* %172, i32 %175, i64 %176)
  %178 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %179 = call i32 @kfree_skb(%struct.sk_buff* %178)
  %180 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %181 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %180, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %181, align 8
  br label %186

182:                                              ; preds = %152
  %183 = load i32, i32* @EIO, align 4
  %184 = sub nsw i32 0, %183
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %14, align 8
  br label %186

186:                                              ; preds = %182, %170
  %187 = load i32, i32* @HIDP_WAITING_FOR_RETURN, align 4
  %188 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %189 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %188, i32 0, i32 3
  %190 = call i32 @clear_bit(i32 %187, i32* %189)
  %191 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %192 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %191, i32 0, i32 2
  %193 = call i32 @mutex_unlock(i32* %192)
  %194 = load i64, i64* %14, align 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %6, align 4
  br label %205

196:                                              ; preds = %148, %142, %104
  %197 = load i32, i32* @HIDP_WAITING_FOR_RETURN, align 4
  %198 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %199 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %198, i32 0, i32 3
  %200 = call i32 @clear_bit(i32 %197, i32* %199)
  %201 = load %struct.hidp_session*, %struct.hidp_session** %12, align 8
  %202 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %201, i32 0, i32 2
  %203 = call i32 @mutex_unlock(i32* %202)
  %204 = load i32, i32* %16, align 4
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %196, %186, %68, %60, %33
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hidp_send_ctrl_message(%struct.hidp_session*, i8 zeroext, i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
