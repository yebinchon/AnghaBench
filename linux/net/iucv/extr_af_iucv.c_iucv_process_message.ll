; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_process_message.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_process_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.iucv_path*, %struct.iucv_message*, i32, i8*, i32, i32*)* }
%struct.iucv_path = type { i32 }
%struct.iucv_message = type { i32, i32, i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i8*, i32, i64 }
%struct.iucv_array = type { i8*, i8* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }

@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@iprm_shutdown = common dso_local global i32 0, align 4
@pr_iucv = common dso_local global %struct.TYPE_6__* null, align 8
@IUCV_IPBUFLST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, %struct.iucv_path*, %struct.iucv_message*)* @iucv_process_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_process_message(%struct.sock* %0, %struct.sk_buff* %1, %struct.iucv_path* %2, %struct.iucv_message* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.iucv_path*, align 8
  %8 = alloca %struct.iucv_message*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iucv_array*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.iucv_path* %2, %struct.iucv_path** %7, align 8
  store %struct.iucv_message* %3, %struct.iucv_message** %8, align 8
  %14 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %15 = call i32 @iucv_msg_length(%struct.iucv_message* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %17 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call %struct.TYPE_8__* @IUCV_SKB_CB(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  %22 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %23 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IUCV_IPRMDATA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ugt i32 %29, 7
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %33 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @iprm_shutdown, align 4
  %36 = call i64 @memcmp(i32 %34, i32 %35, i32 8)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  store i8* null, i8** %40, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %31
  br label %144

44:                                               ; preds = %28, %4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i64 @skb_is_nonlinear(%struct.sk_buff* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %114

48:                                               ; preds = %44
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.iucv_array*
  store %struct.iucv_array* %52, %struct.iucv_array** %11, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.iucv_array*, %struct.iucv_array** %11, align 8
  %59 = getelementptr inbounds %struct.iucv_array, %struct.iucv_array* %58, i64 0
  %60 = getelementptr inbounds %struct.iucv_array, %struct.iucv_array* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call i64 @skb_headlen(%struct.sk_buff* %61)
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.iucv_array*, %struct.iucv_array** %11, align 8
  %65 = getelementptr inbounds %struct.iucv_array, %struct.iucv_array* %64, i64 0
  %66 = getelementptr inbounds %struct.iucv_array, %struct.iucv_array* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %100, %48
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %67
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %75)
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %13, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = call i64 @skb_frag_address(i32* %82)
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.iucv_array*, %struct.iucv_array** %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.iucv_array, %struct.iucv_array* %85, i64 %88
  %90 = getelementptr inbounds %struct.iucv_array, %struct.iucv_array* %89, i32 0, i32 1
  store i8* %84, i8** %90, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = call i64 @skb_frag_size(i32* %91)
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.iucv_array*, %struct.iucv_array** %11, align 8
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.iucv_array, %struct.iucv_array* %94, i64 %97
  %99 = getelementptr inbounds %struct.iucv_array, %struct.iucv_array* %98, i32 0, i32 0
  store i8* %93, i8** %99, align 8
  br label %100

100:                                              ; preds = %74
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %67

103:                                              ; preds = %67
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pr_iucv, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32 (%struct.iucv_path*, %struct.iucv_message*, i32, i8*, i32, i32*)*, i32 (%struct.iucv_path*, %struct.iucv_message*, i32, i8*, i32, i32*)** %105, align 8
  %107 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %108 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %109 = load i32, i32* @IUCV_IPBUFLST, align 4
  %110 = load %struct.iucv_array*, %struct.iucv_array** %11, align 8
  %111 = bitcast %struct.iucv_array* %110 to i8*
  %112 = load i32, i32* %10, align 4
  %113 = call i32 %106(%struct.iucv_path* %107, %struct.iucv_message* %108, i32 %109, i8* %111, i32 %112, i32* null)
  store i32 %113, i32* %9, align 4
  br label %130

114:                                              ; preds = %44
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pr_iucv, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32 (%struct.iucv_path*, %struct.iucv_message*, i32, i8*, i32, i32*)*, i32 (%struct.iucv_path*, %struct.iucv_message*, i32, i8*, i32, i32*)** %116, align 8
  %118 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %119 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %120 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %121 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IUCV_IPRMDATA, align 4
  %124 = and i32 %122, %123
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i32 %117(%struct.iucv_path* %118, %struct.iucv_message* %119, i32 %124, i8* %127, i32 %128, i32* null)
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %114, %103
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = call i32 @kfree_skb(%struct.sk_buff* %134)
  br label %169

136:                                              ; preds = %130
  %137 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @WARN_ON_ONCE(i32 %142)
  br label %144

144:                                              ; preds = %136, %43
  %145 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %146 = call %struct.TYPE_8__* @IUCV_SKB_CB(%struct.sk_buff* %145)
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  store i64 0, i64* %147, align 8
  %148 = load %struct.sock*, %struct.sock** %5, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = call i64 @sk_filter(%struct.sock* %148, %struct.sk_buff* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load %struct.sock*, %struct.sock** %5, align 8
  %154 = getelementptr inbounds %struct.sock, %struct.sock* %153, i32 0, i32 0
  %155 = call i32 @atomic_inc(i32* %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %157 = call i32 @kfree_skb(%struct.sk_buff* %156)
  br label %169

158:                                              ; preds = %144
  %159 = load %struct.sock*, %struct.sock** %5, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %161 = call i64 @__sock_queue_rcv_skb(%struct.sock* %159, %struct.sk_buff* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.sock*, %struct.sock** %5, align 8
  %165 = call %struct.TYPE_7__* @iucv_sk(%struct.sock* %164)
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %168 = call i32 @skb_queue_tail(i32* %166, %struct.sk_buff* %167)
  br label %169

169:                                              ; preds = %133, %152, %163, %158
  ret void
}

declare dso_local i32 @iucv_msg_length(%struct.iucv_message*) #1

declare dso_local %struct.TYPE_8__* @IUCV_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_frag_address(i32*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @sk_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @__sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @iucv_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
