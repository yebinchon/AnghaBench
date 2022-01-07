; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_hsr_fill_frame_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_hsr_fill_frame_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_frame_info = type { i32, %struct.hsr_port*, i32, %struct.sk_buff*, %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.hsr_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ethhdr = type { i64 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"HSR: VLAN not yet supported\00", align 1
@ETH_P_PRP = common dso_local global i32 0, align 4
@ETH_P_HSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsr_frame_info*, %struct.sk_buff*, %struct.hsr_port*)* @hsr_fill_frame_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsr_fill_frame_info(%struct.hsr_frame_info* %0, %struct.sk_buff* %1, %struct.hsr_port* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hsr_frame_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.hsr_port*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca i64, align 8
  store %struct.hsr_frame_info* %0, %struct.hsr_frame_info** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.hsr_port* %2, %struct.hsr_port** %7, align 8
  %10 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %11 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i32 @is_supervision_frame(%struct.TYPE_3__* %12, %struct.sk_buff* %13)
  %15 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %16 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %20 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hsr_get_node(%struct.hsr_port* %17, %struct.sk_buff* %18, i32 %21)
  %23 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %24 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %26 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %111

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i64 @skb_mac_header(%struct.sk_buff* %31)
  %33 = inttoptr i64 %32 to %struct.ethhdr*
  store %struct.ethhdr* %33, %struct.ethhdr** %8, align 8
  %34 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %35 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %37 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @ETH_P_8021Q, align 4
  %40 = call i64 @htons(i32 %39)
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %44 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %30
  %47 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %48 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @ETH_P_PRP, align 4
  %51 = call i64 @htons(i32 %50)
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %55 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @ETH_P_HSR, align 4
  %58 = call i64 @htons(i32 %57)
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %53, %46
  %61 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %62 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %61, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %62, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %65 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %64, i32 0, i32 3
  store %struct.sk_buff* %63, %struct.sk_buff** %65, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = call i32 @hsr_get_skb_sequence_nr(%struct.sk_buff* %66)
  %68 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %69 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  br label %101

70:                                               ; preds = %53
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %73 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %72, i32 0, i32 4
  store %struct.sk_buff* %71, %struct.sk_buff** %73, align 8
  %74 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %75 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %74, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %75, align 8
  %76 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %77 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %83 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %88 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %90 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %96 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  br label %101

101:                                              ; preds = %70, %60
  %102 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %103 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %104 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %103, i32 0, i32 1
  store %struct.hsr_port* %102, %struct.hsr_port** %104, align 8
  %105 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %106 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %5, align 8
  %110 = call i32 @check_local_dest(%struct.TYPE_3__* %107, %struct.sk_buff* %108, %struct.hsr_frame_info* %109)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %101, %29
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @is_supervision_frame(%struct.TYPE_3__*, %struct.sk_buff*) #1

declare dso_local i32 @hsr_get_node(%struct.hsr_port*, %struct.sk_buff*, i32) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @hsr_get_skb_sequence_nr(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @check_local_dest(%struct.TYPE_3__*, %struct.sk_buff*, %struct.hsr_frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
