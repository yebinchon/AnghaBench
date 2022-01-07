; ModuleID = '/home/carl/AnghaBench/linux/net/ife/extr_ife.c_ife_encode.c'
source_filename = "/home/carl/AnghaBench/linux/net/ife/extr_ife.c_ife_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ifeheadr = type { i8*, i32 }
%struct.ethhdr = type { i32 }

@IFE_METAHDRLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ife_encode(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifeheadr*, align 8
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IFE_METAHDRLEN, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %15, %20
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @skb_cow_head(%struct.sk_buff* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %73

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.ethhdr*
  store %struct.ethhdr* %33, %struct.ethhdr** %9, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @__skb_push(%struct.sk_buff* %34, i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(i64 %39, %struct.ethhdr* %40, i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @skb_reset_mac_header(%struct.sk_buff* %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = inttoptr i64 %61 to %struct.ifeheadr*
  store %struct.ifeheadr* %62, %struct.ifeheadr** %8, align 8
  %63 = load i32, i32* @IFE_METAHDRLEN, align 4
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @htons(i32 %66)
  %68 = load %struct.ifeheadr*, %struct.ifeheadr** %8, align 8
  %69 = getelementptr inbounds %struct.ifeheadr, %struct.ifeheadr* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ifeheadr*, %struct.ifeheadr** %8, align 8
  %71 = getelementptr inbounds %struct.ifeheadr, %struct.ifeheadr* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %3, align 8
  br label %73

73:                                               ; preds = %29, %28
  %74 = load i8*, i8** %3, align 8
  ret i8* %74
}

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i64, %struct.ethhdr*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
