; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_determine_ccmps.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_determine_ccmps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccp_sock = type { %struct.ccid* }
%struct.ccid = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dccp_sock*)* @dccp_determine_ccmps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_determine_ccmps(%struct.dccp_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dccp_sock*, align 8
  %4 = alloca %struct.ccid*, align 8
  store %struct.dccp_sock* %0, %struct.dccp_sock** %3, align 8
  %5 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %6 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %5, i32 0, i32 0
  %7 = load %struct.ccid*, %struct.ccid** %6, align 8
  store %struct.ccid* %7, %struct.ccid** %4, align 8
  %8 = load %struct.ccid*, %struct.ccid** %4, align 8
  %9 = icmp eq %struct.ccid* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.ccid*, %struct.ccid** %4, align 8
  %12 = getelementptr inbounds %struct.ccid, %struct.ccid* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp eq %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %22

16:                                               ; preds = %10
  %17 = load %struct.ccid*, %struct.ccid** %4, align 8
  %18 = getelementptr inbounds %struct.ccid, %struct.ccid* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %16, %15
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
