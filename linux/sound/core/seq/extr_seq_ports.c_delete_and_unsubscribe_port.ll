; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_ports.c_delete_and_unsubscribe_port.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_ports.c_delete_and_unsubscribe_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i32 }
%struct.snd_seq_client_port = type { %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info }
%struct.snd_seq_port_subs_info = type { i32, i32, i64 }
%struct.snd_seq_subscribers = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_seq_client*, %struct.snd_seq_client_port*, %struct.snd_seq_subscribers*, i32, i32)* @delete_and_unsubscribe_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_and_unsubscribe_port(%struct.snd_seq_client* %0, %struct.snd_seq_client_port* %1, %struct.snd_seq_subscribers* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_seq_client*, align 8
  %7 = alloca %struct.snd_seq_client_port*, align 8
  %8 = alloca %struct.snd_seq_subscribers*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_seq_port_subs_info*, align 8
  %12 = alloca %struct.list_head*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_seq_client* %0, %struct.snd_seq_client** %6, align 8
  store %struct.snd_seq_client_port* %1, %struct.snd_seq_client_port** %7, align 8
  store %struct.snd_seq_subscribers* %2, %struct.snd_seq_subscribers** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %7, align 8
  %18 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %17, i32 0, i32 1
  br label %22

19:                                               ; preds = %5
  %20 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %7, align 8
  %21 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %20, i32 0, i32 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi %struct.snd_seq_port_subs_info* [ %18, %16 ], [ %21, %19 ]
  store %struct.snd_seq_port_subs_info* %23, %struct.snd_seq_port_subs_info** %11, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.snd_seq_subscribers*, %struct.snd_seq_subscribers** %8, align 8
  %28 = getelementptr inbounds %struct.snd_seq_subscribers, %struct.snd_seq_subscribers* %27, i32 0, i32 2
  br label %32

29:                                               ; preds = %22
  %30 = load %struct.snd_seq_subscribers*, %struct.snd_seq_subscribers** %8, align 8
  %31 = getelementptr inbounds %struct.snd_seq_subscribers, %struct.snd_seq_subscribers* %30, i32 0, i32 1
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi %struct.list_head* [ %28, %26 ], [ %31, %29 ]
  store %struct.list_head* %33, %struct.list_head** %12, align 8
  %34 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %11, align 8
  %35 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %34, i32 0, i32 0
  %36 = call i32 @down_write(i32* %35)
  %37 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %11, align 8
  %38 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %37, i32 0, i32 1
  %39 = call i32 @write_lock_irq(i32* %38)
  %40 = load %struct.list_head*, %struct.list_head** %12, align 8
  %41 = call i32 @list_empty(%struct.list_head* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load %struct.list_head*, %struct.list_head** %12, align 8
  %46 = call i32 @list_del_init(%struct.list_head* %45)
  br label %47

47:                                               ; preds = %44, %32
  %48 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %11, align 8
  %49 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %11, align 8
  %51 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %50, i32 0, i32 1
  %52 = call i32 @write_unlock_irq(i32* %51)
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load %struct.snd_seq_client*, %struct.snd_seq_client** %6, align 8
  %57 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %7, align 8
  %58 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %11, align 8
  %59 = load %struct.snd_seq_subscribers*, %struct.snd_seq_subscribers** %8, align 8
  %60 = getelementptr inbounds %struct.snd_seq_subscribers, %struct.snd_seq_subscribers* %59, i32 0, i32 0
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @unsubscribe_port(%struct.snd_seq_client* %56, %struct.snd_seq_client_port* %57, %struct.snd_seq_port_subs_info* %58, i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %47
  %64 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %11, align 8
  %65 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %64, i32 0, i32 0
  %66 = call i32 @up_write(i32* %65)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @list_del_init(%struct.list_head*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @unsubscribe_port(%struct.snd_seq_client*, %struct.snd_seq_client_port*, %struct.snd_seq_port_subs_info*, i32*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
