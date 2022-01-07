; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_lan9303.c_lan9303_xmit_use_arl.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_lan9303.c_lan9303_xmit_use_arl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.lan9303* }
%struct.lan9303 = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_port*, i32*)* @lan9303_xmit_use_arl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_xmit_use_arl(%struct.dsa_port* %0, i32* %1) #0 {
  %3 = alloca %struct.dsa_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lan9303*, align 8
  store %struct.dsa_port* %0, %struct.dsa_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %7 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.lan9303*, %struct.lan9303** %9, align 8
  store %struct.lan9303* %10, %struct.lan9303** %5, align 8
  %11 = load %struct.lan9303*, %struct.lan9303** %5, align 8
  %12 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @is_multicast_ether_addr(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i1 [ false, %2 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i32 @is_multicast_ether_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
