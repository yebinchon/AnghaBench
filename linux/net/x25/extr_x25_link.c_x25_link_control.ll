; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_link.c_x25_link_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_link.c_x25_link_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.x25_neigh = type { i64, i32 }

@X25_LINK_STATE_3 = common dso_local global i64 0, align 8
@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"diagnostic #%d - %02X %02X %02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"received unknown %02X with LCI 000\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x25_link_control(%struct.sk_buff* %0, %struct.x25_neigh* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.x25_neigh*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.x25_neigh* %1, %struct.x25_neigh** %5, align 8
  store i16 %2, i16* %6, align 2
  %9 = load i16, i16* %6, align 2
  %10 = zext i16 %9 to i32
  switch i32 %10, label %64 [
    i32 128, label %11
    i32 129, label %28
    i32 130, label %34
  ]

11:                                               ; preds = %3
  %12 = load %struct.x25_neigh*, %struct.x25_neigh** %5, align 8
  %13 = call i32 @x25_t20timer_pending(%struct.x25_neigh* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load %struct.x25_neigh*, %struct.x25_neigh** %5, align 8
  %18 = call i32 @x25_stop_t20timer(%struct.x25_neigh* %17)
  %19 = load i64, i64* @X25_LINK_STATE_3, align 8
  %20 = load %struct.x25_neigh*, %struct.x25_neigh** %5, align 8
  %21 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load %struct.x25_neigh*, %struct.x25_neigh** %5, align 8
  %26 = call i32 @x25_transmit_restart_confirmation(%struct.x25_neigh* %25)
  br label %27

27:                                               ; preds = %24, %11
  br label %67

28:                                               ; preds = %3
  %29 = load %struct.x25_neigh*, %struct.x25_neigh** %5, align 8
  %30 = call i32 @x25_stop_t20timer(%struct.x25_neigh* %29)
  %31 = load i64, i64* @X25_LINK_STATE_3, align 8
  %32 = load %struct.x25_neigh*, %struct.x25_neigh** %5, align 8
  %33 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %67

34:                                               ; preds = %3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %37 = add nsw i32 %36, 4
  %38 = call i32 @pskb_may_pull(%struct.sk_buff* %35, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %67

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = trunc i32 %46 to i16
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i16, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i16 zeroext %47, i32 %52, i32 %57, i32 %62)
  br label %67

64:                                               ; preds = %3
  %65 = load i16, i16* %6, align 2
  %66 = call i32 (i8*, i16, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %65)
  br label %67

67:                                               ; preds = %64, %41, %40, %28, %27
  %68 = load %struct.x25_neigh*, %struct.x25_neigh** %5, align 8
  %69 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @X25_LINK_STATE_3, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %79, %73
  %75 = load %struct.x25_neigh*, %struct.x25_neigh** %5, align 8
  %76 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %75, i32 0, i32 1
  %77 = call %struct.sk_buff* @skb_dequeue(i32* %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %7, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = load %struct.x25_neigh*, %struct.x25_neigh** %5, align 8
  %82 = call i32 @x25_send_frame(%struct.sk_buff* %80, %struct.x25_neigh* %81)
  br label %74

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %67
  ret void
}

declare dso_local i32 @x25_t20timer_pending(%struct.x25_neigh*) #1

declare dso_local i32 @x25_stop_t20timer(%struct.x25_neigh*) #1

declare dso_local i32 @x25_transmit_restart_confirmation(%struct.x25_neigh*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @pr_warn(i8*, i16 zeroext, ...) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @x25_send_frame(%struct.sk_buff*, %struct.x25_neigh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
