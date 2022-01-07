; ModuleID = '/home/carl/AnghaBench/linux/tools/firewire/extr_nosy-dump.c_handle_packet.c'
source_filename = "/home/carl/AnghaBench/linux/tools/firewire/extr_nosy-dump.c_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.link_packet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"bus reset\0D\0A\00", align 1
@packet_info = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @handle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_packet(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.link_packet*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 (...) @clear_pending_transaction_list()
  br label %37

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp ugt i64 %13, 4
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = bitcast i32* %16 to %struct.link_packet*
  store %struct.link_packet* %17, %struct.link_packet** %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @packet_info, align 8
  %19 = load %struct.link_packet*, %struct.link_packet** %6, align 8
  %20 = getelementptr inbounds %struct.link_packet, %struct.link_packet* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %35 [
    i32 130, label %26
    i32 128, label %30
    i32 131, label %34
    i32 129, label %34
  ]

26:                                               ; preds = %15
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @handle_request_packet(i32* %27, i64 %28)
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %15
  %31 = load i32*, i32** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @handle_response_packet(i32* %31, i64 %32)
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %15, %15
  store i32 0, i32* %3, align 4
  br label %38

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35, %12
  br label %37

37:                                               ; preds = %36, %9
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %34, %30, %26
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @clear_pending_transaction_list(...) #1

declare dso_local i32 @handle_request_packet(i32*, i64) #1

declare dso_local i32 @handle_response_packet(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
