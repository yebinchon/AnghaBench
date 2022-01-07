; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_endpoint_post.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_endpoint_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qrtr_endpoint = type { %struct.qrtr_node* }
%struct.qrtr_node = type { i32, i32 }
%struct.qrtr_hdr_v1 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.qrtr_hdr_v2 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.qrtr_cb = type { i64, i64, i32, i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QRTR_FLAGS_CONFIRM_RX = common dso_local global i32 0, align 4
@QRTR_PORT_CTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"qrtr: Invalid version %d\0A\00", align 1
@QRTR_TYPE_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qrtr_endpoint_post(%struct.qrtr_endpoint* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qrtr_endpoint*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qrtr_node*, align 8
  %9 = alloca %struct.qrtr_hdr_v1*, align 8
  %10 = alloca %struct.qrtr_hdr_v2*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.qrtr_cb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.qrtr_endpoint* %0, %struct.qrtr_endpoint** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.qrtr_endpoint*, %struct.qrtr_endpoint** %5, align 8
  %17 = getelementptr inbounds %struct.qrtr_endpoint, %struct.qrtr_endpoint* %16, i32 0, i32 0
  %18 = load %struct.qrtr_node*, %struct.qrtr_node** %17, align 8
  store %struct.qrtr_node* %18, %struct.qrtr_node** %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = and i64 %19, 3
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %210

25:                                               ; preds = %3
  %26 = load i64, i64* %7, align 8
  %27 = call %struct.sk_buff* @netdev_alloc_skb(i32* null, i64 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %11, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %210

33:                                               ; preds = %25
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.qrtr_cb*
  store %struct.qrtr_cb* %37, %struct.qrtr_cb** %12, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  switch i32 %41, label %167 [
    i32 129, label %42
    i32 128, label %92
  ]

42:                                               ; preds = %33
  %43 = load i8*, i8** %6, align 8
  %44 = bitcast i8* %43 to %struct.qrtr_hdr_v1*
  store %struct.qrtr_hdr_v1* %44, %struct.qrtr_hdr_v1** %9, align 8
  store i64 28, i64* %15, align 8
  %45 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %9, align 8
  %46 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le32_to_cpu(i32 %47)
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %51 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %9, align 8
  %53 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @le32_to_cpu(i32 %54)
  %56 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %57 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %9, align 8
  %59 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @le32_to_cpu(i32 %60)
  %62 = ptrtoint i8* %61 to i64
  %63 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %64 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %9, align 8
  %66 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %73 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %9, align 8
  %75 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @le32_to_cpu(i32 %76)
  %78 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %79 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %9, align 8
  %81 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le32_to_cpu(i32 %82)
  %84 = ptrtoint i8* %83 to i64
  %85 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %86 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %9, align 8
  %88 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @le32_to_cpu(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  store i32 %91, i32* %13, align 4
  br label %170

92:                                               ; preds = %33
  %93 = load i8*, i8** %6, align 8
  %94 = bitcast i8* %93 to %struct.qrtr_hdr_v2*
  store %struct.qrtr_hdr_v2* %94, %struct.qrtr_hdr_v2** %10, align 8
  %95 = load %struct.qrtr_hdr_v2*, %struct.qrtr_hdr_v2** %10, align 8
  %96 = getelementptr inbounds %struct.qrtr_hdr_v2, %struct.qrtr_hdr_v2* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = add i64 40, %98
  store i64 %99, i64* %15, align 8
  %100 = load %struct.qrtr_hdr_v2*, %struct.qrtr_hdr_v2** %10, align 8
  %101 = getelementptr inbounds %struct.qrtr_hdr_v2, %struct.qrtr_hdr_v2* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %104 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.qrtr_hdr_v2*, %struct.qrtr_hdr_v2** %10, align 8
  %106 = getelementptr inbounds %struct.qrtr_hdr_v2, %struct.qrtr_hdr_v2* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @QRTR_FLAGS_CONFIRM_RX, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %115 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.qrtr_hdr_v2*, %struct.qrtr_hdr_v2** %10, align 8
  %117 = getelementptr inbounds %struct.qrtr_hdr_v2, %struct.qrtr_hdr_v2* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @le16_to_cpu(i32 %118)
  %120 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %121 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  %122 = load %struct.qrtr_hdr_v2*, %struct.qrtr_hdr_v2** %10, align 8
  %123 = getelementptr inbounds %struct.qrtr_hdr_v2, %struct.qrtr_hdr_v2* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @le16_to_cpu(i32 %124)
  %126 = ptrtoint i8* %125 to i64
  %127 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %128 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.qrtr_hdr_v2*, %struct.qrtr_hdr_v2** %10, align 8
  %130 = getelementptr inbounds %struct.qrtr_hdr_v2, %struct.qrtr_hdr_v2* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @le16_to_cpu(i32 %131)
  %133 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %134 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  %135 = load %struct.qrtr_hdr_v2*, %struct.qrtr_hdr_v2** %10, align 8
  %136 = getelementptr inbounds %struct.qrtr_hdr_v2, %struct.qrtr_hdr_v2* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i8* @le16_to_cpu(i32 %137)
  %139 = ptrtoint i8* %138 to i64
  %140 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %141 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %140, i32 0, i32 3
  store i64 %139, i64* %141, align 8
  %142 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %143 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @QRTR_PORT_CTRL, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %92
  %148 = load i64, i64* @QRTR_PORT_CTRL, align 8
  %149 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %150 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %147, %92
  %152 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %153 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @QRTR_PORT_CTRL, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load i64, i64* @QRTR_PORT_CTRL, align 8
  %159 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %160 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %159, i32 0, i32 3
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %157, %151
  %162 = load %struct.qrtr_hdr_v2*, %struct.qrtr_hdr_v2** %10, align 8
  %163 = getelementptr inbounds %struct.qrtr_hdr_v2, %struct.qrtr_hdr_v2* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @le32_to_cpu(i32 %164)
  %166 = ptrtoint i8* %165 to i32
  store i32 %166, i32* %13, align 4
  br label %170

167:                                              ; preds = %33
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %168)
  br label %205

170:                                              ; preds = %161, %42
  %171 = load i64, i64* %7, align 8
  %172 = load i32, i32* %13, align 4
  %173 = call i64 @ALIGN(i32 %172, i32 4)
  %174 = load i64, i64* %15, align 8
  %175 = add i64 %173, %174
  %176 = icmp ne i64 %171, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  br label %205

178:                                              ; preds = %170
  %179 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %180 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @QRTR_PORT_CTRL, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %178
  %185 = load %struct.qrtr_cb*, %struct.qrtr_cb** %12, align 8
  %186 = getelementptr inbounds %struct.qrtr_cb, %struct.qrtr_cb* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @QRTR_TYPE_DATA, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %205

191:                                              ; preds = %184, %178
  %192 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = load i64, i64* %15, align 8
  %195 = getelementptr i8, i8* %193, i64 %194
  %196 = load i32, i32* %13, align 4
  %197 = call i32 @skb_put_data(%struct.sk_buff* %192, i8* %195, i32 %196)
  %198 = load %struct.qrtr_node*, %struct.qrtr_node** %8, align 8
  %199 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %198, i32 0, i32 1
  %200 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %201 = call i32 @skb_queue_tail(i32* %199, %struct.sk_buff* %200)
  %202 = load %struct.qrtr_node*, %struct.qrtr_node** %8, align 8
  %203 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %202, i32 0, i32 0
  %204 = call i32 @schedule_work(i32* %203)
  store i32 0, i32* %4, align 4
  br label %210

205:                                              ; preds = %190, %177, %167
  %206 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %207 = call i32 @kfree_skb(%struct.sk_buff* %206)
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %205, %191, %30, %22
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32*, i64) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
