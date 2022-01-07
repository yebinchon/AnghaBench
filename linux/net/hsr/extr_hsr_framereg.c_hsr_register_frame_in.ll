; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_framereg.c_hsr_register_frame_in.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_framereg.c_hsr_register_frame_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_node = type { i32*, i32*, i32* }
%struct.hsr_port = type { i64 }

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hsr_register_frame_in(%struct.hsr_node* %0, %struct.hsr_port* %1, i32 %2) #0 {
  %4 = alloca %struct.hsr_node*, align 8
  %5 = alloca %struct.hsr_port*, align 8
  %6 = alloca i32, align 4
  store %struct.hsr_node* %0, %struct.hsr_node** %4, align 8
  store %struct.hsr_port* %1, %struct.hsr_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.hsr_node*, %struct.hsr_node** %4, align 8
  %9 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.hsr_port*, %struct.hsr_port** %5, align 8
  %12 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @seq_nr_before(i32 %7, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %35

19:                                               ; preds = %3
  %20 = load i32, i32* @jiffies, align 4
  %21 = load %struct.hsr_node*, %struct.hsr_node** %4, align 8
  %22 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.hsr_port*, %struct.hsr_port** %5, align 8
  %25 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 %20, i32* %27, align 4
  %28 = load %struct.hsr_node*, %struct.hsr_node** %4, align 8
  %29 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.hsr_port*, %struct.hsr_port** %5, align 8
  %32 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %19, %18
  ret void
}

declare dso_local i64 @seq_nr_before(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
