; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_set_tolerance.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_set_tolerance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.sk_buff_head = type { i32 }

@STATE_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_set_tolerance(%struct.tipc_link* %0, i8* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.tipc_link*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %9 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %8, i32 0, i32 1
  store i8* %7, i8** %9, align 8
  %10 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %11 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %17 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i8* %15, i8** %19, align 8
  br label %20

20:                                               ; preds = %14, %3
  %21 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %22 = call i64 @link_is_up(%struct.tipc_link* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %26 = load i32, i32* @STATE_MSG, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %29 = call i32 @tipc_link_build_proto_msg(%struct.tipc_link* %25, i32 %26, i32 0, i32 0, i32 0, i8* %27, i32 0, %struct.sk_buff_head* %28)
  br label %30

30:                                               ; preds = %24, %20
  ret void
}

declare dso_local i64 @link_is_up(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_build_proto_msg(%struct.tipc_link*, i32, i32, i32, i32, i8*, i32, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
