; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_subr.c_ax25_send_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_subr.c_ax25_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@AX25_MODULUS = common dso_local global i64 0, align 8
@AX25_PF = common dso_local global i8 0, align 1
@AX25_U = common dso_local global i32 0, align 4
@AX25_S = common dso_local global i32 0, align 4
@AX25_EPF = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_send_control(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 2
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @alloc_skb(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %9, align 8
  %21 = icmp eq %struct.sk_buff* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %134

23:                                               ; preds = %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @skb_reserve(%struct.sk_buff* %24, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = call i32 @skb_reset_network_header(%struct.sk_buff* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AX25_MODULUS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %23
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = call i8* @skb_put(%struct.sk_buff* %41, i32 1)
  store i8* %42, i8** %10, align 8
  %43 = load i32, i32* %6, align 4
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %10, align 8
  store i8 %44, i8* %45, align 1
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i8, i8* @AX25_PF, align 1
  %50 = zext i8 %49 to i32
  br label %52

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  %54 = load i8*, i8** %10, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %56, %53
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @AX25_U, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @AX25_S, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %52
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 %67, 5
  %69 = load i8*, i8** %10, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %71, %68
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %69, align 1
  br label %74

74:                                               ; preds = %64, %52
  br label %129

75:                                               ; preds = %23
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @AX25_U, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @AX25_U, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %83 = call i8* @skb_put(%struct.sk_buff* %82, i32 1)
  store i8* %83, i8** %10, align 8
  %84 = load i32, i32* %6, align 4
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %10, align 8
  store i8 %85, i8* %86, align 1
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i8, i8* @AX25_PF, align 1
  %91 = zext i8 %90 to i32
  br label %93

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %89
  %94 = phi i32 [ %91, %89 ], [ 0, %92 ]
  %95 = load i8*, i8** %10, align 8
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %97, %94
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %95, align 1
  br label %128

100:                                              ; preds = %75
  %101 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %102 = call i8* @skb_put(%struct.sk_buff* %101, i32 2)
  store i8* %102, i8** %10, align 8
  %103 = load i32, i32* %6, align 4
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  store i8 %104, i8* %106, align 1
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 %109, 1
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  store i8 %111, i8* %113, align 1
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %100
  %117 = load i8, i8* @AX25_EPF, align 1
  %118 = zext i8 %117 to i32
  br label %120

119:                                              ; preds = %100
  br label %120

120:                                              ; preds = %119, %116
  %121 = phi i32 [ %118, %116 ], [ 0, %119 ]
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = or i32 %125, %121
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %123, align 1
  br label %128

128:                                              ; preds = %120, %93
  br label %129

129:                                              ; preds = %128, %74
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @ax25_transmit_buffer(%struct.TYPE_8__* %130, %struct.sk_buff* %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %22
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ax25_transmit_buffer(%struct.TYPE_8__*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
