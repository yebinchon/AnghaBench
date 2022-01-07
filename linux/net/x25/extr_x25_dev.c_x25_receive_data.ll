; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_dev.c_x25_receive_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_dev.c_x25_receive_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i16* }
%struct.x25_neigh = type { i32 }
%struct.sock = type { i32 }

@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@X25_CALL_REQUEST = common dso_local global i16 0, align 2
@X25_CLEAR_CONFIRMATION = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [44 x i8] c"x25_receive_data(): unknown frame type %2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.x25_neigh*)* @x25_receive_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_receive_data(%struct.sk_buff* %0, %struct.x25_neigh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.x25_neigh*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.x25_neigh* %1, %struct.x25_neigh** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %12 = call i32 @pskb_may_pull(%struct.sk_buff* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %118

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i16*, i16** %17, align 8
  %19 = getelementptr inbounds i16, i16* %18, i64 2
  %20 = load i16, i16* %19, align 2
  store i16 %20, i16* %7, align 2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i16*, i16** %22, align 8
  %24 = getelementptr inbounds i16, i16* %23, i64 0
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = shl i32 %26, 8
  %28 = and i32 %27, 3840
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i16*, i16** %30, align 8
  %32 = getelementptr inbounds i16, i16* %31, i64 1
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = shl i32 %34, 0
  %36 = and i32 %35, 255
  %37 = add nsw i32 %28, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %15
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.x25_neigh*, %struct.x25_neigh** %5, align 8
  %43 = load i16, i16* %7, align 2
  %44 = call i32 @x25_link_control(%struct.sk_buff* %41, %struct.x25_neigh* %42, i16 zeroext %43)
  store i32 0, i32* %3, align 4
  br label %118

45:                                               ; preds = %15
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.x25_neigh*, %struct.x25_neigh** %5, align 8
  %48 = call %struct.sock* @x25_find_socket(i32 %46, %struct.x25_neigh* %47)
  store %struct.sock* %48, %struct.sock** %6, align 8
  %49 = icmp ne %struct.sock* %48, null
  br i1 %49, label %50, label %79

50:                                               ; preds = %45
  store i32 1, i32* %9, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @skb_reset_transport_header(%struct.sk_buff* %51)
  %53 = load %struct.sock*, %struct.sock** %6, align 8
  %54 = call i32 @bh_lock_sock(%struct.sock* %53)
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = call i32 @sock_owned_by_user(%struct.sock* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = load %struct.sock*, %struct.sock** %6, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @x25_process_rx_frame(%struct.sock* %59, %struct.sk_buff* %60)
  store i32 %61, i32* %9, align 4
  br label %73

62:                                               ; preds = %50
  %63 = load %struct.sock*, %struct.sock** %6, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = load %struct.sock*, %struct.sock** %6, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @READ_ONCE(i32 %67)
  %69 = call i32 @sk_add_backlog(%struct.sock* %63, %struct.sk_buff* %64, i32 %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %62, %58
  %74 = load %struct.sock*, %struct.sock** %6, align 8
  %75 = call i32 @bh_unlock_sock(%struct.sock* %74)
  %76 = load %struct.sock*, %struct.sock** %6, align 8
  %77 = call i32 @sock_put(%struct.sock* %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %118

79:                                               ; preds = %45
  %80 = load i16, i16* %7, align 2
  %81 = zext i16 %80 to i32
  %82 = load i16, i16* @X25_CALL_REQUEST, align 2
  %83 = zext i16 %82 to i32
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load %struct.x25_neigh*, %struct.x25_neigh** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @x25_rx_call_request(%struct.sk_buff* %86, %struct.x25_neigh* %87, i32 %88)
  store i32 %89, i32* %3, align 4
  br label %118

90:                                               ; preds = %79
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.x25_neigh*, %struct.x25_neigh** %5, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = call i64 @x25_forward_data(i32 %91, %struct.x25_neigh* %92, %struct.sk_buff* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load i16, i16* %7, align 2
  %98 = zext i16 %97 to i32
  %99 = load i16, i16* @X25_CLEAR_CONFIRMATION, align 2
  %100 = zext i16 %99 to i32
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @x25_clear_forward_by_lci(i32 %103)
  br label %105

105:                                              ; preds = %102, %96
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call i32 @kfree_skb(%struct.sk_buff* %106)
  store i32 1, i32* %3, align 4
  br label %118

108:                                              ; preds = %90
  %109 = load i16, i16* %7, align 2
  %110 = zext i16 %109 to i32
  %111 = load i16, i16* @X25_CLEAR_CONFIRMATION, align 2
  %112 = zext i16 %111 to i32
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i16, i16* %7, align 2
  %116 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i16 zeroext %115)
  br label %117

117:                                              ; preds = %114, %108
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %105, %85, %73, %40, %14
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @x25_link_control(%struct.sk_buff*, %struct.x25_neigh*, i16 zeroext) #1

declare dso_local %struct.sock* @x25_find_socket(i32, %struct.x25_neigh*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @x25_process_rx_frame(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_add_backlog(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @x25_rx_call_request(%struct.sk_buff*, %struct.x25_neigh*, i32) #1

declare dso_local i64 @x25_forward_data(i32, %struct.x25_neigh*, %struct.sk_buff*) #1

declare dso_local i32 @x25_clear_forward_by_lci(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
