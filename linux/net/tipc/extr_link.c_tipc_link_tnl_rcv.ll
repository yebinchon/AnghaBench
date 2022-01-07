; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_tnl_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_tnl_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, %struct.sk_buff_head, %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@SYNCH_MSG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Unable to extract msg, defq: %d\0A\00", align 1
@FIRST_FRAGMENT = common dso_local global i32 0, align 4
@FRAGMENT = common dso_local global i32 0, align 4
@LAST_FRAGMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to reassemble tunnel msg\0A\00", align 1
@LINK_FAILURE_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_link*, %struct.sk_buff*, %struct.sk_buff_head*)* @tipc_link_tnl_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_link_tnl_rcv(%struct.tipc_link* %0, %struct.sk_buff* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_link*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.sk_buff**, align 8
  %9 = alloca %struct.sk_buff**, align 8
  %10 = alloca %struct.sk_buff_head*, align 8
  %11 = alloca %struct.tipc_msg*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tipc_link* %0, %struct.tipc_link** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %7, align 8
  %16 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %17 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %16, i32 0, i32 3
  store %struct.sk_buff** %17, %struct.sk_buff*** %8, align 8
  %18 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %19 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %18, i32 0, i32 2
  store %struct.sk_buff** %19, %struct.sk_buff*** %9, align 8
  %20 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %21 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %20, i32 0, i32 1
  store %struct.sk_buff_head* %21, %struct.sk_buff_head** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %22)
  store %struct.tipc_msg* %23, %struct.tipc_msg** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %25 = call i64 @msg_type(%struct.tipc_msg* %24)
  %26 = load i64, i64* @SYNCH_MSG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @kfree_skb(%struct.sk_buff* %29)
  store i32 0, i32* %4, align 4
  br label %158

31:                                               ; preds = %3
  %32 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %33 = call i32 @msg_nof_fragms(%struct.tipc_msg* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i32 @tipc_msg_extract(%struct.sk_buff* %40, %struct.sk_buff** %12, i32* %13)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %49 = call i32 @skb_queue_len(%struct.sk_buff_head* %48)
  %50 = call i32 (i8*, ...) @pr_warn_ratelimited(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 0, i32* %4, align 4
  br label %158

51:                                               ; preds = %39
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = call i32 @kfree_skb(%struct.sk_buff* %52)
  br label %97

54:                                               ; preds = %31
  %55 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %56 = call i32 @msg_fragm_no(%struct.tipc_msg* %55)
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %60 = load i32, i32* @FIRST_FRAGMENT, align 4
  %61 = call i32 @msg_set_type(%struct.tipc_msg* %59, i32 %60)
  br label %77

62:                                               ; preds = %54
  %63 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %64 = call i32 @msg_fragm_no(%struct.tipc_msg* %63)
  %65 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %66 = call i32 @msg_nof_fragms(%struct.tipc_msg* %65)
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %70 = load i32, i32* @FRAGMENT, align 4
  %71 = call i32 @msg_set_type(%struct.tipc_msg* %69, i32 %70)
  br label %76

72:                                               ; preds = %62
  %73 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %74 = load i32, i32* @LAST_FRAGMENT, align 4
  %75 = call i32 @msg_set_type(%struct.tipc_msg* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %58
  %78 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %79 = call i32 @tipc_buf_append(%struct.sk_buff** %78, %struct.sk_buff** %6)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %77
  %82 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %82, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %87 = call i64 @link_is_bc_rcvlink(%struct.tipc_link* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %81
  store i32 0, i32* %4, align 4
  br label %158

90:                                               ; preds = %85
  %91 = call i32 (i8*, ...) @pr_warn_ratelimited(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %93 = load i32, i32* @LINK_FAILURE_EVT, align 4
  %94 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %92, i32 %93)
  store i32 %94, i32* %4, align 4
  br label %158

95:                                               ; preds = %77
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %96, %struct.sk_buff** %12, align 8
  br label %97

97:                                               ; preds = %95, %51
  br label %98

98:                                               ; preds = %149, %97
  %99 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %100 = call i32 @buf_seqno(%struct.sk_buff* %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %103 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @less(i32 %101, i32 %104)
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %110 = call i32 @kfree_skb(%struct.sk_buff* %109)
  br label %149

111:                                              ; preds = %98
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %114 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %112, %115
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %111
  %121 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %124 = call i32 @__tipc_skb_queue_sorted(%struct.sk_buff_head* %121, i32 %122, %struct.sk_buff* %123)
  br label %149

125:                                              ; preds = %111
  %126 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %127 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %132 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %133 = call i32 @tipc_data_input(%struct.tipc_link* %130, %struct.sk_buff* %131, %struct.sk_buff_head* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %125
  %136 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %138 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %139 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %140 = call i32 @tipc_link_input(%struct.tipc_link* %136, %struct.sk_buff* %137, %struct.sk_buff_head* %138, %struct.sk_buff** %139)
  %141 = load i32, i32* %14, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %135, %125
  %144 = load i32, i32* %14, align 4
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %156

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %148, %120, %108
  %150 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %151 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %152 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call %struct.sk_buff* @__tipc_skb_dequeue(%struct.sk_buff_head* %150, i32 %153)
  store %struct.sk_buff* %154, %struct.sk_buff** %12, align 8
  %155 = icmp ne %struct.sk_buff* %154, null
  br i1 %155, label %98, label %156

156:                                              ; preds = %149, %147
  %157 = load i32, i32* %14, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %156, %90, %89, %47, %28
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @msg_nof_fragms(%struct.tipc_msg*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tipc_msg_extract(%struct.sk_buff*, %struct.sk_buff**, i32*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, ...) #1

declare dso_local i32 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local i32 @msg_fragm_no(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i32 @tipc_buf_append(%struct.sk_buff**, %struct.sk_buff**) #1

declare dso_local i64 @link_is_bc_rcvlink(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_fsm_evt(%struct.tipc_link*, i32) #1

declare dso_local i32 @buf_seqno(%struct.sk_buff*) #1

declare dso_local i32 @less(i32, i32) #1

declare dso_local i32 @__tipc_skb_queue_sorted(%struct.sk_buff_head*, i32, %struct.sk_buff*) #1

declare dso_local i32 @tipc_data_input(%struct.tipc_link*, %struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_link_input(%struct.tipc_link*, %struct.sk_buff*, %struct.sk_buff_head*, %struct.sk_buff**) #1

declare dso_local %struct.sk_buff* @__tipc_skb_dequeue(%struct.sk_buff_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
