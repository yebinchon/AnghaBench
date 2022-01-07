; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-cmd.c_ncsi_xmit_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-cmd.c_ncsi_xmit_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_cmd_handler = type { i8, i32 (i32, %struct.ncsi_cmd_arg.0*)*, i64 }
%struct.ncsi_cmd_arg.0 = type opaque
%struct.ncsi_cmd_arg = type { i64, i8, i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ncsi_request = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ethhdr = type { i32, i32, i32 }

@NCSI_REQ_FLAG_NETLINK_DRIVEN = common dso_local global i64 0, align 8
@NCSI_PKT_CMD_OEM = common dso_local global i8 0, align 1
@ncsi_cmd_handlers = common dso_local global %struct.ncsi_cmd_handler* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Cannot send packet with type 0x%02x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_NCSI = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncsi_xmit_cmd(%struct.ncsi_cmd_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_cmd_arg*, align 8
  %4 = alloca %struct.ncsi_cmd_handler*, align 8
  %5 = alloca %struct.ncsi_request*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ncsi_cmd_arg* %0, %struct.ncsi_cmd_arg** %3, align 8
  store %struct.ncsi_cmd_handler* null, %struct.ncsi_cmd_handler** %4, align 8
  %10 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %11 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NCSI_REQ_FLAG_NETLINK_DRIVEN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i8, i8* @NCSI_PKT_CMD_OEM, align 1
  store i8 %16, i8* %6, align 1
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %19 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %18, i32 0, i32 1
  %20 = load i8, i8* %19, align 8
  store i8 %20, i8* %6, align 1
  br label %21

21:                                               ; preds = %17, %15
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ncsi_cmd_handler*, %struct.ncsi_cmd_handler** @ncsi_cmd_handlers, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.ncsi_cmd_handler* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = load %struct.ncsi_cmd_handler*, %struct.ncsi_cmd_handler** @ncsi_cmd_handlers, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ncsi_cmd_handler, %struct.ncsi_cmd_handler* %28, i64 %30
  %32 = getelementptr inbounds %struct.ncsi_cmd_handler, %struct.ncsi_cmd_handler* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %27
  %39 = load %struct.ncsi_cmd_handler*, %struct.ncsi_cmd_handler** @ncsi_cmd_handlers, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ncsi_cmd_handler, %struct.ncsi_cmd_handler* %39, i64 %41
  %43 = getelementptr inbounds %struct.ncsi_cmd_handler, %struct.ncsi_cmd_handler* %42, i32 0, i32 1
  %44 = load i32 (i32, %struct.ncsi_cmd_arg.0*)*, i32 (i32, %struct.ncsi_cmd_arg.0*)** %43, align 8
  %45 = icmp ne i32 (i32, %struct.ncsi_cmd_arg.0*)* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.ncsi_cmd_handler*, %struct.ncsi_cmd_handler** @ncsi_cmd_handlers, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ncsi_cmd_handler, %struct.ncsi_cmd_handler* %47, i64 %49
  store %struct.ncsi_cmd_handler* %50, %struct.ncsi_cmd_handler** %4, align 8
  br label %52

51:                                               ; preds = %38
  store %struct.ncsi_cmd_handler* null, %struct.ncsi_cmd_handler** %4, align 8
  br label %52

52:                                               ; preds = %51, %46
  br label %57

53:                                               ; preds = %27
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %22

57:                                               ; preds = %52, %22
  %58 = load %struct.ncsi_cmd_handler*, %struct.ncsi_cmd_handler** %4, align 8
  %59 = icmp ne %struct.ncsi_cmd_handler* %58, null
  br i1 %59, label %73, label %60

60:                                               ; preds = %57
  %61 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %62 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %61, i32 0, i32 5
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %68 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %67, i32 0, i32 1
  %69 = load i8, i8* %68, align 8
  %70 = call i32 @netdev_err(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8 zeroext %69)
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %184

73:                                               ; preds = %57
  %74 = load %struct.ncsi_cmd_handler*, %struct.ncsi_cmd_handler** %4, align 8
  %75 = getelementptr inbounds %struct.ncsi_cmd_handler, %struct.ncsi_cmd_handler* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.ncsi_cmd_handler*, %struct.ncsi_cmd_handler** %4, align 8
  %80 = getelementptr inbounds %struct.ncsi_cmd_handler, %struct.ncsi_cmd_handler* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %83 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %78, %73
  %85 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %86 = call %struct.ncsi_request* @ncsi_alloc_command(%struct.ncsi_cmd_arg* %85)
  store %struct.ncsi_request* %86, %struct.ncsi_request** %5, align 8
  %87 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %88 = icmp ne %struct.ncsi_request* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %184

92:                                               ; preds = %84
  %93 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %94 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NCSI_REQ_FLAG_NETLINK_DRIVEN, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %92
  %99 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %100 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %99, i32 0, i32 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %105 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  %106 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %107 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %106, i32 0, i32 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %112 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  %113 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %114 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %113, i32 0, i32 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %120 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %98, %92
  %122 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %123 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %126 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  %127 = load %struct.ncsi_cmd_handler*, %struct.ncsi_cmd_handler** %4, align 8
  %128 = getelementptr inbounds %struct.ncsi_cmd_handler, %struct.ncsi_cmd_handler* %127, i32 0, i32 1
  %129 = load i32 (i32, %struct.ncsi_cmd_arg.0*)*, i32 (i32, %struct.ncsi_cmd_arg.0*)** %128, align 8
  %130 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %131 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %134 = bitcast %struct.ncsi_cmd_arg* %133 to %struct.ncsi_cmd_arg.0*
  %135 = call i32 %129(i32 %132, %struct.ncsi_cmd_arg.0* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %121
  %139 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %140 = call i32 @ncsi_free_request(%struct.ncsi_request* %139)
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %2, align 4
  br label %184

142:                                              ; preds = %121
  %143 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %144 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call %struct.ethhdr* @skb_push(i32 %145, i32 12)
  store %struct.ethhdr* %146, %struct.ethhdr** %7, align 8
  %147 = load i32, i32* @ETH_P_NCSI, align 4
  %148 = call i32 @htons(i32 %147)
  %149 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %150 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %152 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @eth_broadcast_addr(i32 %153)
  %155 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %156 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @eth_broadcast_addr(i32 %157)
  %159 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %160 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %159, i32 0, i32 0
  store i32 1, i32* %160, align 4
  %161 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %162 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %161, i32 0, i32 2
  %163 = load i64, i64* @jiffies, align 8
  %164 = load i32, i32* @HZ, align 4
  %165 = mul nsw i32 1, %164
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %163, %166
  %168 = call i32 @mod_timer(i32* %162, i64 %167)
  %169 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %170 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @skb_get(i32 %171)
  %173 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %174 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @dev_queue_xmit(i32 %175)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %142
  %180 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %181 = call i32 @ncsi_free_request(%struct.ncsi_request* %180)
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %2, align 4
  br label %184

183:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %183, %179, %138, %89, %60
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @ARRAY_SIZE(%struct.ncsi_cmd_handler*) #1

declare dso_local i32 @netdev_err(i32, i8*, i8 zeroext) #1

declare dso_local %struct.ncsi_request* @ncsi_alloc_command(%struct.ncsi_cmd_arg*) #1

declare dso_local i32 @ncsi_free_request(%struct.ncsi_request*) #1

declare dso_local %struct.ethhdr* @skb_push(i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @skb_get(i32) #1

declare dso_local i32 @dev_queue_xmit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
