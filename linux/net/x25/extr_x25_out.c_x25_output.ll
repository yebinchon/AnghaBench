; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_out.c_x25_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_out.c_x25_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i32* }
%struct.x25_sock = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@X25_EXT_MIN_LEN = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"x25_output: fragment alloc failed, err=%d, %d bytes sent\0A\00", align 1
@X25_EXT_M_BIT = common dso_local global i32 0, align 4
@X25_STD_M_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x25_output(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.x25_sock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @X25_EXT_MIN_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.TYPE_6__* @X25_SKB_CB(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MSG_DONTWAIT, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %13, align 4
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = call %struct.x25_sock* @x25_sk(%struct.sock* %28)
  store %struct.x25_sock* %29, %struct.x25_sock** %14, align 8
  %30 = load %struct.x25_sock*, %struct.x25_sock** %14, align 8
  %31 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @X25_EXT_MIN_LEN, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @X25_STD_MIN_LEN, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %15, align 4
  %42 = load %struct.x25_sock*, %struct.x25_sock** %14, align 8
  %43 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @x25_pacsize_to_bytes(i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32, i32* %16, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %170

54:                                               ; preds = %40
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %55, i8* %21, i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @skb_pull(%struct.sk_buff* %58, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i32 @skb_headroom(%struct.sk_buff* %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %159, %54
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %167

68:                                               ; preds = %63
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = call i32 @release_sock(%struct.sock* %69)
  %71 = load %struct.sock*, %struct.sock** %4, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %13, align 4
  %76 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %71, i32 %74, i32 %75, i32* %9)
  store %struct.sk_buff* %76, %struct.sk_buff** %6, align 8
  %77 = load %struct.sock*, %struct.sock** %4, align 8
  %78 = call i32 @lock_sock(%struct.sock* %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %99, label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @EWOULDBLOCK, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i32 @kfree_skb(%struct.sk_buff* %90)
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %182

93:                                               ; preds = %86, %81
  %94 = load %struct.sock*, %struct.sock** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @SOCK_DEBUG(%struct.sock* %94, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %182

99:                                               ; preds = %68
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @skb_reserve(%struct.sk_buff* %100, i32 %101)
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %103, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  br label %114

112:                                              ; preds = %99
  %113 = load i32, i32* %16, align 4
  br label %114

114:                                              ; preds = %112, %108
  %115 = phi i32 [ %111, %108 ], [ %113, %112 ]
  store i32 %115, i32* %11, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i8* @skb_put(%struct.sk_buff* %117, i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %116, i8* %119, i32 %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @skb_pull(%struct.sk_buff* %122, i32 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @skb_push(%struct.sk_buff* %125, i32 %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %128, i8* %21, i32 %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %159

135:                                              ; preds = %114
  %136 = load %struct.x25_sock*, %struct.x25_sock** %14, align 8
  %137 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %135
  %143 = load i32, i32* @X25_EXT_M_BIT, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 3
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %143
  store i32 %149, i32* %147, align 4
  br label %158

150:                                              ; preds = %135
  %151 = load i32, i32* @X25_STD_M_BIT, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %151
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %150, %142
  br label %159

159:                                              ; preds = %158, %114
  %160 = load %struct.sock*, %struct.sock** %4, align 8
  %161 = getelementptr inbounds %struct.sock, %struct.sock* %160, i32 0, i32 0
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = call i32 @skb_queue_tail(i32* %161, %struct.sk_buff* %162)
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %12, align 4
  br label %63

167:                                              ; preds = %63
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %169 = call i32 @kfree_skb(%struct.sk_buff* %168)
  br label %180

170:                                              ; preds = %40
  %171 = load %struct.sock*, %struct.sock** %4, align 8
  %172 = getelementptr inbounds %struct.sock, %struct.sock* %171, i32 0, i32 0
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = call i32 @skb_queue_tail(i32* %172, %struct.sk_buff* %173)
  %175 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sub nsw i32 %177, %178
  store i32 %179, i32* %12, align 4
  br label %180

180:                                              ; preds = %170, %167
  %181 = load i32, i32* %12, align 4
  store i32 %181, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %182

182:                                              ; preds = %180, %93, %89
  %183 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_6__* @X25_SKB_CB(%struct.sk_buff*) #2

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #2

declare dso_local i32 @x25_pacsize_to_bytes(i32) #2

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #2

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #2

declare dso_local i32 @release_sock(%struct.sock*) #2

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #2

declare dso_local i32 @lock_sock(%struct.sock*) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*, i32, i32) #2

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #2

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #2

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
