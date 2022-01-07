; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_p8022.c_p8022_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_p8022.c_p8022_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink_proto = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.datalink_proto*, %struct.sk_buff*, i8*)* @p8022_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p8022_request(%struct.datalink_proto* %0, %struct.sk_buff* %1, i8* %2) #0 {
  %4 = alloca %struct.datalink_proto*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  store %struct.datalink_proto* %0, %struct.datalink_proto** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.datalink_proto*, %struct.datalink_proto** %4, align 8
  %8 = getelementptr inbounds %struct.datalink_proto, %struct.datalink_proto* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.datalink_proto*, %struct.datalink_proto** %4, align 8
  %13 = getelementptr inbounds %struct.datalink_proto, %struct.datalink_proto* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @llc_build_and_send_ui_pkt(%struct.TYPE_4__* %9, %struct.sk_buff* %10, i8* %11, i32 %17)
  ret i32 0
}

declare dso_local i32 @llc_build_and_send_ui_pkt(%struct.TYPE_4__*, %struct.sk_buff*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
