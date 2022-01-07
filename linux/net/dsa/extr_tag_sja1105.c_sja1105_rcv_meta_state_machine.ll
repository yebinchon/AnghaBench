; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_sja1105.c_sja1105_rcv_meta_state_machine.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_sja1105.c_sja1105_rcv_meta_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.sja1105_meta = type { i32 }
%struct.sja1105_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.sk_buff*, i32 }
%struct.dsa_port = type { %struct.TYPE_3__*, %struct.sja1105_port* }
%struct.TYPE_3__ = type { i32 }

@SJA1105_HWTS_RX_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Expected meta frame, is %12llx in the DSA master multicast filter?\0A\00", align 1
@SJA1105_META_DMAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unexpected meta frame\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Meta frame on wrong port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.sja1105_meta*, i32, i32)* @sja1105_rcv_meta_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @sja1105_rcv_meta_state_machine(%struct.sk_buff* %0, %struct.sja1105_meta* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sja1105_meta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sja1105_port*, align 8
  %11 = alloca %struct.dsa_port*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.sja1105_meta* %1, %struct.sja1105_meta** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.dsa_port* @dsa_slave_to_port(i64 %15)
  store %struct.dsa_port* %16, %struct.dsa_port** %11, align 8
  %17 = load %struct.dsa_port*, %struct.dsa_port** %11, align 8
  %18 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %17, i32 0, i32 1
  %19 = load %struct.sja1105_port*, %struct.sja1105_port** %18, align 8
  store %struct.sja1105_port* %19, %struct.sja1105_port** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %4
  %23 = load i32, i32* @SJA1105_HWTS_RX_EN, align 4
  %24 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %25 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = call i32 @test_bit(i32 %23, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %5, align 8
  br label %146

32:                                               ; preds = %22
  %33 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %34 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %39 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %32
  %45 = load %struct.dsa_port*, %struct.dsa_port** %11, align 8
  %46 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SJA1105_META_DMAC, align 4
  %51 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %49, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %53 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.sk_buff*, %struct.sk_buff** %55, align 8
  %57 = call i32 @kfree_skb(%struct.sk_buff* %56)
  br label %58

58:                                               ; preds = %44, %32
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call %struct.sk_buff* @skb_get(%struct.sk_buff* %59)
  %61 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %62 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store %struct.sk_buff* %60, %struct.sk_buff** %64, align 8
  %65 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %66 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %146

70:                                               ; preds = %4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %143

73:                                               ; preds = %70
  %74 = load i32, i32* @SJA1105_HWTS_RX_EN, align 4
  %75 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %76 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = call i32 @test_bit(i32 %74, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %146

82:                                               ; preds = %73
  %83 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %84 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = call i32 @spin_lock(i32* %86)
  %88 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %89 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load %struct.sk_buff*, %struct.sk_buff** %91, align 8
  store %struct.sk_buff* %92, %struct.sk_buff** %12, align 8
  %93 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %94 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %96, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %98 = icmp ne %struct.sk_buff* %97, null
  br i1 %98, label %111, label %99

99:                                               ; preds = %82
  %100 = load %struct.dsa_port*, %struct.dsa_port** %11, align 8
  %101 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %106 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %107 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock(i32* %109)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %146

111:                                              ; preds = %82
  %112 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %111
  %120 = load %struct.dsa_port*, %struct.dsa_port** %11, align 8
  %121 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %126 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %127 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = call i32 @spin_unlock(i32* %129)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %146

131:                                              ; preds = %111
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = call i32 @kfree_skb(%struct.sk_buff* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %134, %struct.sk_buff** %6, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = load %struct.sja1105_meta*, %struct.sja1105_meta** %7, align 8
  %137 = call i32 @sja1105_transfer_meta(%struct.sk_buff* %135, %struct.sja1105_meta* %136)
  %138 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %139 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock(i32* %141)
  br label %143

143:                                              ; preds = %131, %70
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %145, %struct.sk_buff** %5, align 8
  br label %146

146:                                              ; preds = %144, %119, %99, %81, %58, %30
  %147 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %147
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sja1105_transfer_meta(%struct.sk_buff*, %struct.sja1105_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
