; ModuleID = '/home/carl/AnghaBench/linux/net/lapb/extr_lapb_subr.c_lapb_transmit_frmr.c'
source_filename = "/home/carl/AnghaBench/linux/net/lapb/extr_lapb_subr.c_lapb_transmit_frmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }
%struct.sk_buff = type { i32* }

@LAPB_HEADER_LEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@LAPB_EXTENDED = common dso_local global i32 0, align 4
@LAPB_FRMR = common dso_local global i8* null, align 8
@LAPB_RESPONSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"(%p) S%d TX FRMR %5ph\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"(%p) S%d TX FRMR %3ph\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapb_transmit_frmr(%struct.lapb_cb* %0) #0 {
  %2 = alloca %struct.lapb_cb*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  store %struct.lapb_cb* %0, %struct.lapb_cb** %2, align 8
  %5 = load i64, i64* @LAPB_HEADER_LEN, align 8
  %6 = add nsw i64 %5, 7
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.sk_buff* @alloc_skb(i64 %6, i32 %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %3, align 8
  %9 = icmp eq %struct.sk_buff* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %164

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = load i64, i64* @LAPB_HEADER_LEN, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @skb_reserve(%struct.sk_buff* %12, i64 %14)
  %16 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %17 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @LAPB_EXTENDED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %94

22:                                               ; preds = %11
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call i8* @skb_put(%struct.sk_buff* %23, i32 6)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** @LAPB_FRMR, align 8
  %26 = ptrtoint i8* %25 to i8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  store i8 %26, i8* %27, align 1
  %29 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %30 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  store i8 %35, i8* %36, align 1
  %38 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %39 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  store i8 %44, i8* %45, align 1
  %47 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %48 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 1
  %51 = and i32 %50, 254
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  store i8 %52, i8* %53, align 1
  %55 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %56 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 %57, 1
  %59 = and i32 %58, 254
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %4, align 8
  store i8 %60, i8* %61, align 1
  %62 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %63 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LAPB_RESPONSE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %22
  %69 = load i8*, i8** %4, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %71, 1
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %69, align 1
  br label %74

74:                                               ; preds = %68, %22
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %4, align 8
  %77 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %78 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %4, align 8
  store i8 %80, i8* %81, align 1
  %83 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %84 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %87 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = call i32 @lapb_dbg(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %88, i32* %92)
  br label %159

94:                                               ; preds = %11
  %95 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %96 = call i8* @skb_put(%struct.sk_buff* %95, i32 4)
  store i8* %96, i8** %4, align 8
  %97 = load i8*, i8** @LAPB_FRMR, align 8
  %98 = ptrtoint i8* %97 to i8
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %4, align 8
  store i8 %98, i8* %99, align 1
  %101 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %102 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %4, align 8
  store i8 %107, i8* %108, align 1
  %110 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %111 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 1
  %114 = and i32 %113, 14
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %4, align 8
  store i8 %115, i8* %116, align 1
  %117 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %118 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = shl i32 %119, 5
  %121 = and i32 %120, 224
  %122 = load i8*, i8** %4, align 8
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %124, %121
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %122, align 1
  %127 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %128 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @LAPB_RESPONSE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %94
  %134 = load i8*, i8** %4, align 8
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = or i32 %136, 16
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %134, align 1
  br label %139

139:                                              ; preds = %133, %94
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %4, align 8
  %142 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %143 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %4, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %4, align 8
  store i8 %145, i8* %146, align 1
  %148 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %149 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %152 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = call i32 @lapb_dbg(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %153, i32* %157)
  br label %159

159:                                              ; preds = %139, %74
  %160 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %162 = load i64, i64* @LAPB_RESPONSE, align 8
  %163 = call i32 @lapb_transmit_buffer(%struct.lapb_cb* %160, %struct.sk_buff* %161, i64 %162)
  br label %164

164:                                              ; preds = %159, %10
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @lapb_dbg(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @lapb_transmit_buffer(%struct.lapb_cb*, %struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
