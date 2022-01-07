; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_framereg.c_hsr_register_frame_out.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_framereg.c_hsr_register_frame_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_port = type { i64 }
%struct.hsr_node = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hsr_register_frame_out(%struct.hsr_port* %0, %struct.hsr_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hsr_port*, align 8
  %6 = alloca %struct.hsr_node*, align 8
  %7 = alloca i32, align 4
  store %struct.hsr_port* %0, %struct.hsr_port** %5, align 8
  store %struct.hsr_node* %1, %struct.hsr_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.hsr_node*, %struct.hsr_node** %6, align 8
  %10 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.hsr_port*, %struct.hsr_port** %5, align 8
  %13 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @seq_nr_before_or_eq(i32 %8, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.hsr_node*, %struct.hsr_node** %6, align 8
  %23 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.hsr_port*, %struct.hsr_port** %5, align 8
  %26 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %21, i32* %28, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %20, %19
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @seq_nr_before_or_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
