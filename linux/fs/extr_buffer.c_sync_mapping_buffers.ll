; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_sync_mapping_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_sync_mapping_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, i32, %struct.address_space* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sync_mapping_buffers(%struct.address_space* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.address_space*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  %5 = load %struct.address_space*, %struct.address_space** %3, align 8
  %6 = getelementptr inbounds %struct.address_space, %struct.address_space* %5, i32 0, i32 2
  %7 = load %struct.address_space*, %struct.address_space** %6, align 8
  store %struct.address_space* %7, %struct.address_space** %4, align 8
  %8 = load %struct.address_space*, %struct.address_space** %4, align 8
  %9 = icmp eq %struct.address_space* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.address_space*, %struct.address_space** %3, align 8
  %12 = getelementptr inbounds %struct.address_space, %struct.address_space* %11, i32 0, i32 0
  %13 = call i64 @list_empty(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %22

16:                                               ; preds = %10
  %17 = load %struct.address_space*, %struct.address_space** %4, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 1
  %19 = load %struct.address_space*, %struct.address_space** %3, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = call i32 @fsync_buffers_list(i32* %18, i32* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %16, %15
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @fsync_buffers_list(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
