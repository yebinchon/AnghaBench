; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, %struct.tipc_mon_state, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.tipc_mon_state = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff_head = type { i32 }

@TIPC_DUMP_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@TIPC_DUMP_ALL = common dso_local global i32 0, align 4
@STATE_MSG = common dso_local global i32 0, align 4
@LINK_FAILURE_EVT = common dso_local global i32 0, align 4
@RESET_MSG = common dso_local global i32 0, align 4
@ACTIVATE_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_timeout(%struct.tipc_link* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_link*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.tipc_mon_state*, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %15 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %14, i32 0, i32 12
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  store i64 %19, i64* %11, align 8
  %20 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %21 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %20, i32 0, i32 7
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %26 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %25, i32 0, i32 11
  store %struct.tipc_mon_state* %26, %struct.tipc_mon_state** %13, align 8
  %27 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %28 = load i32, i32* @TIPC_DUMP_NONE, align 4
  %29 = call i32 @trace_tipc_link_timeout(%struct.tipc_link* %27, i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %31 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %32 = call i32 @trace_tipc_link_too_silent(%struct.tipc_link* %30, i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %34 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %141 [
    i32 134, label %36
    i32 128, label %36
    i32 130, label %121
    i32 133, label %138
    i32 131, label %140
    i32 129, label %140
    i32 132, label %140
  ]

36:                                               ; preds = %2, %2
  %37 = load i32, i32* @STATE_MSG, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %39 = call i32 @link_profile_stats(%struct.tipc_link* %38)
  %40 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %41 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %44 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %13, align 8
  %47 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %48 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @tipc_mon_get_state(i32 %42, i32 %45, %struct.tipc_mon_state* %46, i32 %49)
  %51 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %13, align 8
  %52 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %36
  %56 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %57 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %60 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %55, %36
  %64 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %65 = load i32, i32* @LINK_FAILURE_EVT, align 4
  %66 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %64, i32 %65)
  store i32 %66, i32* %3, align 4
  br label %159

67:                                               ; preds = %55
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %68, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %8, align 4
  %72 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %73 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %72, i32 0, i32 7
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %80 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %85 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %84, i32 0, i32 6
  %86 = call i32 @skb_queue_empty(i32* %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %93 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %92, i32 0, i32 5
  %94 = call i32 @skb_queue_empty(i32* %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %13, align 8
  %101 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %9, align 4
  %103 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %104 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %67
  %111 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %13, align 8
  %112 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110, %67
  %116 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %117 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %115, %110
  br label %142

121:                                              ; preds = %2
  %122 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %123 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = icmp sle i32 %124, 4
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %10, align 4
  %128 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %129 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = srem i32 %130, 16
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* @RESET_MSG, align 4
  store i32 %137, i32* %6, align 4
  br label %142

138:                                              ; preds = %2
  store i32 1, i32* %10, align 4
  %139 = load i32, i32* @ACTIVATE_MSG, align 4
  store i32 %139, i32* %6, align 4
  br label %142

140:                                              ; preds = %2, %2, %2
  br label %142

141:                                              ; preds = %2
  br label %142

142:                                              ; preds = %141, %140, %138, %121, %120
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %148, %145, %142
  %152 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %156 = call i32 @tipc_link_build_proto_msg(%struct.tipc_link* %152, i32 %153, i32 %154, i32 0, i32 0, i32 0, i32 0, %struct.sk_buff_head* %155)
  br label %157

157:                                              ; preds = %151, %148
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %157, %63
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @trace_tipc_link_timeout(%struct.tipc_link*, i32, i8*) #1

declare dso_local i32 @trace_tipc_link_too_silent(%struct.tipc_link*, i32, i8*) #1

declare dso_local i32 @link_profile_stats(%struct.tipc_link*) #1

declare dso_local i32 @tipc_mon_get_state(i32, i32, %struct.tipc_mon_state*, i32) #1

declare dso_local i32 @tipc_link_fsm_evt(%struct.tipc_link*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @tipc_link_build_proto_msg(%struct.tipc_link*, i32, i32, i32, i32, i32, i32, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
