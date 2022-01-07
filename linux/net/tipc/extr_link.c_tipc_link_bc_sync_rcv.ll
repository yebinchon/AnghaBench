; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_bc_sync_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_bc_sync_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i64, i64, i32, i64, i64, %struct.TYPE_2__, %struct.tipc_link* }
%struct.TYPE_2__ = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff_head = type { i32 }

@TIPC_LINK_SND_STATE = common dso_local global i32 0, align 4
@TIPC_BCAST_STATE_NACK = common dso_local global i32 0, align 4
@BC_NACK_SND_CONDITIONAL = common dso_local global i64 0, align 8
@BC_NACK_SND_SUPPRESS = common dso_local global i64 0, align 8
@BC_NACK_SND_UNCONDITIONAL = common dso_local global i8* null, align 8
@TIPC_MIN_LINK_WIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_bc_sync_rcv(%struct.tipc_link* %0, %struct.tipc_msg* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_link*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.tipc_link*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.tipc_link* %0, %struct.tipc_link** %5, align 8
  store %struct.tipc_msg* %1, %struct.tipc_msg** %6, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %7, align 8
  %13 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %14 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %13, i32 0, i32 7
  %15 = load %struct.tipc_link*, %struct.tipc_link** %14, align 8
  store %struct.tipc_link* %15, %struct.tipc_link** %8, align 8
  %16 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %17 = call i64 @msg_bc_snd_nxt(%struct.tipc_msg* %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %19 = call i64 @msg_bcast_ack(%struct.tipc_msg* %18)
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %23 = call i64 @msg_bc_gap(%struct.tipc_msg* %22)
  %24 = add nsw i64 %21, %23
  %25 = sub nsw i64 %24, 1
  store i64 %25, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %26 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %27 = call i32 @link_is_up(%struct.tipc_link* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %4, align 4
  br label %145

31:                                               ; preds = %3
  %32 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %33 = call i32 @msg_peer_node_is_up(%struct.tipc_msg* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %145

37:                                               ; preds = %31
  %38 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %39 = call i64 @msg_ack(%struct.tipc_msg* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %43 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %46 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %4, align 4
  br label %145

51:                                               ; preds = %44
  %52 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %53 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %59 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %62 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = call i64 @more(i64 %57, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %51
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %4, align 4
  br label %145

69:                                               ; preds = %51
  %70 = load %struct.tipc_link*, %struct.tipc_link** %8, align 8
  %71 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %75 = call i32 @tipc_link_bc_retrans(%struct.tipc_link* %70, %struct.tipc_link* %71, i64 %72, i64 %73, %struct.sk_buff_head* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %78 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %77, i32 0, i32 5
  store i64 %76, i64* %78, align 8
  %79 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %80 = call i64 @link_bc_rcv_gap(%struct.tipc_link* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load i32, i32* @TIPC_LINK_SND_STATE, align 4
  %84 = load i32, i32* %12, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %82, %69
  %87 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %88 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @TIPC_BCAST_STATE_NACK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %4, align 4
  br label %145

95:                                               ; preds = %86
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %98 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @more(i64 %96, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %95
  %103 = load i64, i64* @BC_NACK_SND_CONDITIONAL, align 8
  %104 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %105 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %104, i32 0, i32 4
  store i64 %103, i64* %105, align 8
  store i32 0, i32* %4, align 4
  br label %145

106:                                              ; preds = %95
  %107 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %108 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @BC_NACK_SND_SUPPRESS, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load i8*, i8** @BC_NACK_SND_UNCONDITIONAL, align 8
  %114 = ptrtoint i8* %113 to i64
  %115 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %116 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %115, i32 0, i32 4
  store i64 %114, i64* %116, align 8
  store i32 0, i32* %4, align 4
  br label %145

117:                                              ; preds = %106
  %118 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %119 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @BC_NACK_SND_CONDITIONAL, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load i8*, i8** @BC_NACK_SND_UNCONDITIONAL, align 8
  %125 = ptrtoint i8* %124 to i64
  %126 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %127 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %126, i32 0, i32 4
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %130 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %128, %131
  %133 = load i64, i64* @TIPC_MIN_LINK_WIN, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %145

136:                                              ; preds = %123
  br label %137

137:                                              ; preds = %136, %117
  %138 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %139 = load i64, i64* %9, align 8
  %140 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %141 = call i32 @tipc_link_build_bc_proto_msg(%struct.tipc_link* %138, i32 1, i64 %139, %struct.sk_buff_head* %140)
  %142 = load i64, i64* @BC_NACK_SND_SUPPRESS, align 8
  %143 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %144 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %143, i32 0, i32 4
  store i64 %142, i64* %144, align 8
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %137, %135, %112, %102, %93, %67, %49, %35, %29
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i64 @msg_bc_snd_nxt(%struct.tipc_msg*) #1

declare dso_local i64 @msg_bcast_ack(%struct.tipc_msg*) #1

declare dso_local i64 @msg_bc_gap(%struct.tipc_msg*) #1

declare dso_local i32 @link_is_up(%struct.tipc_link*) #1

declare dso_local i32 @msg_peer_node_is_up(%struct.tipc_msg*) #1

declare dso_local i64 @msg_ack(%struct.tipc_msg*) #1

declare dso_local i64 @more(i64, i64) #1

declare dso_local i32 @tipc_link_bc_retrans(%struct.tipc_link*, %struct.tipc_link*, i64, i64, %struct.sk_buff_head*) #1

declare dso_local i64 @link_bc_rcv_gap(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_build_bc_proto_msg(%struct.tipc_link*, i32, i64, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
