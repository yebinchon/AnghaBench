; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_core.c_cmtp_process_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_core.c_cmtp_process_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_session = type { i32, i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.cmtp_scb = type { i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"session %p\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't allocate memory for new frame\00", align 1
@uint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmtp_session*)* @cmtp_process_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmtp_process_transmit(%struct.cmtp_session* %0) #0 {
  %2 = alloca %struct.cmtp_session*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmtp_scb*, align 8
  store %struct.cmtp_session* %0, %struct.cmtp_session** %2, align 8
  %9 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.cmtp_session* %9)
  %11 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %12 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @alloc_skb(i32 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = call i32 @BT_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %202

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %190, %20
  %22 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %23 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %22, i32 0, i32 1
  %24 = call %struct.sk_buff* @skb_dequeue(i32* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %3, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %191

26:                                               ; preds = %21
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.cmtp_scb*
  store %struct.cmtp_scb* %31, %struct.cmtp_scb** %8, align 8
  %32 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %33 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub i32 %34, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ult i32 %39, 5
  br i1 %40, label %41, label %55

41:                                               ; preds = %26
  %42 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @cmtp_send_frame(%struct.cmtp_session* %42, i32 %45, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @skb_trim(%struct.sk_buff* %50, i32 0)
  %52 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %53 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %41, %26
  %56 = load i32, i32* @uint, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ult i32 %57, 258
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = sub i32 %60, 2
  br label %65

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = sub i32 %63, 3
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i32 [ %61, %59 ], [ %64, %62 ]
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @min_t(i32 %56, i32 %66, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load %struct.cmtp_scb*, %struct.cmtp_scb** %8, align 8
  %72 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %65
  %76 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %77 = call i32 @cmtp_alloc_block_id(%struct.cmtp_session* %76)
  %78 = load %struct.cmtp_scb*, %struct.cmtp_scb** %8, align 8
  %79 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.cmtp_scb*, %struct.cmtp_scb** %8, align 8
  %81 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %86 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %85, i32 0, i32 1
  %87 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %88 = call i32 @skb_queue_head(i32* %86, %struct.sk_buff* %87)
  br label %191

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %65
  %91 = load i32, i32* %6, align 4
  %92 = icmp ult i32 %91, 256
  br i1 %92, label %93, label %117

93:                                               ; preds = %90
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = call i8* @skb_put(%struct.sk_buff* %94, i32 2)
  store i8* %95, i8** %5, align 8
  %96 = load %struct.cmtp_scb*, %struct.cmtp_scb** %8, align 8
  %97 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = shl i32 %98, 2
  %100 = and i32 %99, 60
  %101 = or i32 64, %100
  %102 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 0, i32 1
  %109 = or i32 %101, %108
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  store i8 %110, i8* %112, align 1
  %113 = load i32, i32* %6, align 4
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8 %114, i8* %116, align 1
  br label %147

117:                                              ; preds = %90
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = call i8* @skb_put(%struct.sk_buff* %118, i32 3)
  store i8* %119, i8** %5, align 8
  %120 = load %struct.cmtp_scb*, %struct.cmtp_scb** %8, align 8
  %121 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %122, 2
  %124 = and i32 %123, 60
  %125 = or i32 128, %124
  %126 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 0, i32 1
  %133 = or i32 %125, %132
  %134 = trunc i32 %133 to i8
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  store i8 %134, i8* %136, align 1
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, 255
  %139 = trunc i32 %138 to i8
  %140 = load i8*, i8** %5, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  store i8 %139, i8* %141, align 1
  %142 = load i32, i32* %6, align 4
  %143 = lshr i32 %142, 8
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  store i8 %144, i8* %146, align 1
  br label %147

147:                                              ; preds = %117, %93
  %148 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i8* @skb_put(%struct.sk_buff* %149, i32 %150)
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %148, i8* %151, i32 %152)
  %154 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @skb_pull(%struct.sk_buff* %154, i32 %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ugt i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %147
  %162 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %163 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %162, i32 0, i32 1
  %164 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %165 = call i32 @skb_queue_head(i32* %163, %struct.sk_buff* %164)
  br label %190

166:                                              ; preds = %147
  %167 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %168 = load %struct.cmtp_scb*, %struct.cmtp_scb** %8, align 8
  %169 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @cmtp_free_block_id(%struct.cmtp_session* %167, i32 %170)
  %172 = load %struct.cmtp_scb*, %struct.cmtp_scb** %8, align 8
  %173 = getelementptr inbounds %struct.cmtp_scb, %struct.cmtp_scb* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %166
  %177 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @cmtp_send_frame(%struct.cmtp_session* %177, i32 %180, i32 %183)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %186 = call i32 @skb_trim(%struct.sk_buff* %185, i32 0)
  br label %187

187:                                              ; preds = %176, %166
  %188 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %189 = call i32 @kfree_skb(%struct.sk_buff* %188)
  br label %190

190:                                              ; preds = %187, %161
  br label %21

191:                                              ; preds = %84, %21
  %192 = load %struct.cmtp_session*, %struct.cmtp_session** %2, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @cmtp_send_frame(%struct.cmtp_session* %192, i32 %195, i32 %198)
  %200 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %201 = call i32 @kfree_skb(%struct.sk_buff* %200)
  br label %202

202:                                              ; preds = %191, %18
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.cmtp_session*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @cmtp_send_frame(%struct.cmtp_session*, i32, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @cmtp_alloc_block_id(%struct.cmtp_session*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @cmtp_free_block_id(%struct.cmtp_session*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
